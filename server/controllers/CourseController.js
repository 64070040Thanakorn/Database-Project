import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

// get All Course
export const getCourse = async (req, res) => {
  try {
    const course = await prisma.course.findMany({
      include: {
        professor: {
          include: {
            user: true,
          },
        },
      },
    });
    res.status(200).json(course);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

// get Course by id

export const getCourseById = async (req, res) => {
  try {
    const course = await prisma.course.findMany({
      where: {
        course_id: req.params.course_id,
      },
      include: {
        professor: {
          include: {
            user: {
              select: {
                first_name: true,
                last_name: true,
                username: true,
                image: true,
              },
            },
          },
        },
      },
    });
    res.status(200).json(course);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

// get Random Course
export const randomizeCourse = async (req, res) => {
  try {
    let course = [];
    const randomf = (values) => {
      const index = Math.floor(Math.random() * values.length);
      return values[index];
    };
    const orderBy = randomf([
      "course_id",
      "title",
      "description",
      "price",
      "level",
      "received",
      "create_date",
      "end_date",
      "start_date",
      "professor_id",
      "thumbnail",
    ]);
    const orderDir = randomf(["asc", "desc"]);
    course = await prisma.course.findMany({
      take: parseInt(req.params.type),
      include: {
        professor: {
          include: {
            user: true,
          },
        },
      },
      orderBy: { [orderBy]: orderDir },
    });
    res.status(200).json(course);
  } catch (err) {
    res.status(500).json({ message: err.message });
  }
};

export const createCourse = async (req, res) => {
  const { title, description, price, level, received, thumbnail, start_date, end_date } = req.body;
  const data = await prisma.users.findUnique({ where: { user_id: req.user.sub }, include: { professors: true } });
  const professor_id = data.professors.professor_id;
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
        professor_id: professor_id,
      },
    });
    res.status(200).json(course);
  } catch (err) {
    res.status(400).json({ message: err.message });
  }
};

// courseEnroll

export const courseEnroll = async (req, res) => {
  const data = await prisma.users.findUnique({ where: { user_id: req.user.sub }, include: { students: true } });
  const student_id = data.students.student_id;
  try {
    const enroll = await prisma.studentsEnroll.create({
      data: {
        student_id: student_id,
        course_id: req.params.course_id,
        enroll_date: new Date(),
      },
    });
    res.status(200).json(enroll);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};

// get courseEnroll
export const getCourseEnroll = async (req, res) => {
  const data = await prisma.users.findUnique({ where: { user_id: req.user.sub }, include: { students: true } });
  const student_id = data.students.student_id;
  try {
    const getCourse = await prisma.studentsEnroll.findMany({
      where: {
        student_id: student_id
      },
      select: {
        enroll_date: true,
        course: {
          include: {
            professor: {
              select: {
                info: true,
                user: {
                  select: {
                    first_name: true,
                    last_name: true,
                    image: true,
                  }
                }
              },
            }
          }
        }
      }
    });
    res.status(200).json(getCourse);
  } catch (error) {
    res.status(400).json({message: error.message})
  }
};

// course rating
export const courseRating = async (req, res) => {
  const { course_rating } = req.body;
  const data = await prisma.users.findUnique({ where: { user_id: req.user.sub }, include: { students: true } });
  const student_id = data.students.student_id;
  try {
    const rating = await prisma.courseRating.create({
      data: {
        student_id: student_id,
        course_id: req.params.course_id,
        course_rating: course_rating,
      },
    });
    res.status(200).json(rating);
  } catch (error) {
    res.status(400).json({ message: error.message });
  }
};
