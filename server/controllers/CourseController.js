import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export const getCourse = async (req, res) => {
  try {
    let course = []
    if (req.params.type === "all") {
      course = await prisma.course.findMany({
        include: {
          professor: {
            include: {
              user: true
            }
          },
        }
      });
    } else {
      const randomf = (values) => {
        const index = Math.floor(Math.random() * values.length);
        return values[index];
      }
      const orderBy = randomf(['course_id', 'title', 'description', 'price', 'level', 'received', 'create_date', 'end_date', 'start_date', 'professor_id', 'thumbnail']);
      const orderDir = randomf(["asc", "desc"]);
      course = await prisma.course.findMany({
        take: parseInt(req.params.type),
        include: {
          professor: {
            include: {
              user: true
            }
          },
        },
        orderBy: { [orderBy]: orderDir },
      });
    }
    res.status(200).json(course);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

// get Course by id


export const createCourse = async (req, res) => {
  const { title, description, price, level, received, thumbnail, start_date, end_date } = req.body;
  const data = await prisma.users.findUnique({ where: { user_id: req.user.sub }, include: { professors: true } })
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
