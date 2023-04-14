import express from "express";
import { getCourse, createCourse, getCourseById } from "../controllers/CourseController.js";
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
router.get("/course/:course_id", getCourseById)
router.post("/createCourse", authenticateToken, createCourse);

export default router;
