import { PrismaClient } from "@prisma/client";
import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken'
const prisma = new PrismaClient();
// Get all users

function generateToken(user) {
    const secret = 'fewZaandtheGang'
    const expiresIn = '7d'
    return jwt.sign({ sub: user.id, email: user.email }, secret, { expiresIn })
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
                id: sub,
            },
            select: {
                id: true,
                email: true,
                first_name: true,
                last_name: true,
                username: true,
                role: true,
                image: true,
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
                id: req.params.id
            }
        })
        res.status(200).json(response)

    } catch (err) {
        res.status(404).json({ message: err.message })
    }

}



// create User 
// postman => {
//   firstName String
//   lastName String
//   userName String
// password String
//   email String
//   image String
// }

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

// update someone user
export const updateUser = async (req, res) => {
    try {
        const { first_name, last_name, username, password, email, image, role } = req.body;

        const hash = await bcrypt.hash(password, 13);
        const user = await prisma.users.update({
            where: {
                email: email
            },
            data: {
                first_name: first_name,
                last_name: last_name,
                username: username,
                password: hash,
                email: email,
                image: image,
                role: role
            }
        })
        res.status(200).json(user)

    } catch (err) {
        res.status(400).json({ message: err.message })
    }

}


    const hash = await bcrypt.hash(password, 13);
    const user = await prisma.users.update({
      where: {
        email: email,
      },
      data: {
        first_name: first_name,
        last_name: last_name,
        username: username,
        password: hash,
        email: email,
        image: image,
        role: role,
      },
    });
    res.status(200).json(user);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};

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
