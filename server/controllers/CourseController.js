import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export const getCourse = async (req, res) => {
  try {
    const asdasdasd = await prisma.course.findMany();

    res.status(200).json(asdasdasd);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

export const createCourse = async (req, res) => {
  const { title, thumbnail, description, create_date, start_date, end_date, status } = req.body;
  try {
    const user = await prisma.users.create({
      data: {
        title: title,
        thumbnail: thumbnail,
        description: description,
        create_date: create_date,
        start_date: start_date,
        end_date: end_date,
        status: status,
        ProfessorCourse: {
          update: {
            where: {
              id: req.user.sub
            }
          },
        },
      },
      include: {
        ProfessorCourse: true,
      },
    });
    res.status(200).json(user);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};
