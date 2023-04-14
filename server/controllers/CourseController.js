import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export const getCourse = async (req, res) => {
  try {
    const course = await prisma.course.findMany();

    res.status(200).json(course);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

// get Course by id

export const getCourseById = async (req, res) => {
  // const course_id = parseInt(req.query.id)

  // if (req.method === 'GET') {
  //   try {
  //     const user = await prisma.course.findUnique({
  //       where: { id: course_id }
  //     })
  //     res.status(200).json(user)
  //   } catch (error) {
  //     console.error(error)
  //     res.status(500).json({ error: 'Internal server error' })
  //   }
  // } else {
  //   res.status(405).json({ error: 'Method not allowed' })
  // }
}


export const createCourse = async (req, res) => {
  const { title, description, price, level, received, thumbnail, start_date, end_date } = req.body;
  const data = await prisma.users.findUnique({where: {user_id: req.user.sub}, include: { professors: true }})
  const professor_id = data.professors.professor_id
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
        professor_id: professor_id
      },
    });
    res.status(200).json(course);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};
