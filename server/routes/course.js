import express from "express";
import { getCourse, createCourse, randomizeCourse, getCourseById, courseEnroll, courseRating, getCourseEnroll } from "../controllers/CourseController.js";
import jwt from 'jsonwebtoken'

const router = express.Router();
function authenticateToken(req, res, next) {
  const authHeader = req.headers["authorization"];
  const token = authHeader && authHeader.split(" ")[1];
  if (token == null) return res.sendStatus(401);

  jwt.verify(token, "fewZaandtheGang", (err, user) => {
    if (err) return res.sendStatus(403);
    req.user = user;
    next();
  });
}



router.get("/", getCourse);

router.get("/:course_id", getCourseById);

router.get("/randomCourse/:type", randomizeCourse);

router.post("/getCourseEnroll/", authenticateToken, getCourseEnroll)

router.post("/createCourse", authenticateToken, createCourse);

router.post("/courseEnroll/:course_id", authenticateToken, courseEnroll);

router.post("/courseRating/:course_id", authenticateToken, courseRating);



export default router;
