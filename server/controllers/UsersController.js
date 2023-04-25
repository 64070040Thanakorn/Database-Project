import { PrismaClient } from "@prisma/client";
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';
const prisma = new PrismaClient();
// Get all users

function generateToken(user) {
    const secret = 'fewZaandtheGang'
    const expiresIn = '7d'
    return jwt.sign({ sub: user.user_id, email: user.email }, secret, { expiresIn })
}

export const GetUsers = async (req, res) => {
    try {
        const response = await prisma.users.findMany()
        res.status(200).json(response)
    } catch (err) {
        res.status(500).json({ message: err.message })
    }
}

export const AuthMe = async (req, res) => {
    try {
        const { sub } = req.user;
        console.log(req.user)
        const user = await prisma.users.findUnique({
            where: {
                user_id: sub,
            },
            select: {
                user_id: true,
                email: true,
                first_name: true,
                last_name: true,
                username: true,
                role: true,
                image: true,
                password: true,
            },
        });
        res.json({ user });
    } catch (err) {
        res.status(500).json({ message: err.message })
    }
}

export const AuthLogin = async (req, res) => {
    try {
        const { email, password } = req.body
        const user = await prisma.users.findFirst({ where: { email } })
        if (!user) {
            throw new Error('Invalid login credentials')
        }
        const passwordMatch = await bcrypt.compare(password, user.password)
        if (!passwordMatch) {
            throw new Error('Invalid login credentials')
        }
        const token = generateToken(user)
        res.status(200).json({
            token,
            user,
        })
    } catch (err) {
        res.status(500).json({ message: err.message })
    }
}

export const GetUserById = async (req, res) => {
    try {
        const response = await prisma.users.findUnique({
            where: {
                user_id: req.params.id
            },
            include:{
              professors: true
            }
        })
        res.status(200).json(response)
    } catch (err) {
        res.status(404).json({ message: err.message })
    }
}

// create user
export const createUser = async (req, res) => {
  const { first_name, last_name, username, password, email, image, role } = req.body;
  const hash = await bcrypt.hash(password, 13);
  try {
    if (role === "Professor") {
      const user = await prisma.users.create({
        data: {
          first_name: first_name,
          last_name: last_name,
          username: username,
          password: hash,
          email: email,
          image: image,
          role: role,
          professors: {
            create: {
              info: null,
            },
          },
        },
        include: {
          professors: true,
        },
      });
      res.status(200).json(user);
    } else if (role === "Student") {
      const user = await prisma.users.create({
        data: {
          first_name: first_name,
          last_name: last_name,
          username: username,
          password: hash,
          email: email,
          image: image,
          role: role,
          students: {
            create: {
              job: null,
            },
          },
        },
        include: {
          students: true,
        },
      });
      res.status(200).json(user);
    }
    else {
        throw new Error("Invalid role")
    }
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};

// professor rating
export const professorRating = async (req, res) => {
    const { professor_rating, professor_id} = req.body
    const data = await prisma.users.findUnique({ where: { user_id: req.user.sub }, include: {students: true} })
    const student_id = data.students.student_id
    try {
      const rating = await prisma.professorRating.create({
        data: {
          student: { connect: { student_id: student_id } },
          professor: { connect: { professor_id: professor_id } },
          professor_rating: parseFloat(professor_rating),
        },
      });
      res.status(200).json(rating)
    } catch (error) {
      res.status(400).json({ message: error.message})
    }
  }

// update someone user
export const updateUser = async (req, res) => {
    try {
        const data = req.body
      
        const user = await prisma.users.update({
            where: {
                user_id: data.user_id
            },
            data:{
              first_name: data.first_name,
              last_name: data.last_name,
              username: data.username,
              email: data.email,
              role: data.role,
            },
        })
        
      const professor = await prisma.professors.update({
          where: {
              professor_id: data.professors.professor_id
          },
          data:{
            info: data.professors.info
          }
      })
        res.status(200).json({user: user, professor: professor})

    } catch (err) {
        res.status(400).json({ message: err.message })
    }

}

// delete user
export const deleteUser = async (req, res) => {
    try {
        const user = await prisma.users.delete({
            where: {
                id: req.params.id
            }
        })
        res.status(200).json(user)

    } catch (err) {
        res.status(400).json({ message: err.message })
    }

}
