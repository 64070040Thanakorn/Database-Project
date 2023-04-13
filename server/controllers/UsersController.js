import { PrismaClient } from "@prisma/client";
import bcrypt from "bcrypt";

const prisma = new PrismaClient();

// Get all users

export const GetUsers = async (req, res) => {
  try {
    const response = await prisma.users.findMany();
    res.status(200).json(response);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

// get someone user
export const GetUserById = async (req, res) => {
  try {
    const response = await prisma.users.findUnique({
      where: {
        id: req.params.id,
      },
    });
    res.status(200).json(response);
  } catch (err) {
    res.status(404).json({ message: err.message });
  }
};

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
        id: req.params.id,
      },
    });
    res.status(200).json(user);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};
