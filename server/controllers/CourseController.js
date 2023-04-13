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
  const { title, description, price, level, received, thumbnail, create_date, start_date, end_date} = req.body;
  // const professor_id = await prisma.professors.findUnique({where: {professor_id: req.user.sub}})
  const professor_id = "ec645ea5-866d-44d2-abc1-0ddc9b7a92c4"
  // console.log(professor_id);
  try {
    const course = await prisma.course.create({
      data: {
        title: title,
        description: description,
        price: price,
        level: level,
        received: received,
        thumbnail: thumbnail,
        create_date: new Date(create_date),
        start_date: new Date(start_date),
        end_date: new Date(end_date),
        status: false,
        professor_id: professor_id,
      },
    });
    res.status(200).json(course);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};
