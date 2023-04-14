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
  const { title, description, price, level, received, thumbnail, start_date, end_date} = req.body;
  const professor_id = await prisma.professors.findUnique({where: {professor_id: req.user.sub}})
  console.log(professor_id);
  // const professor_id = "1986d5b6-3e25-4e93-bcaa-f739c4e246e1"
  try {
    const course = await prisma.course.create({
      data: {
        title: title,
        description: description,
        price: price,
        level: level,
        received: received,
        thumbnail: thumbnail,
        start_date: new Date(start_date),
        end_date: new Date(end_date),
        status: false,
        professor_id: req.user.sub,
      },
    });
    res.status(200).json(course);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};
