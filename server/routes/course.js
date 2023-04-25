import express from "express";
import jwt from 'jsonwebtoken';
import { DeleteCourse, GetCourse, UpdateCourse, courseEnroll, createCourse, createCourseRating, getCourse, getCourseById, getCourseEnroll, getManageCourse, randomizeCourse } from "../controllers/CourseController.js";

import upload from '../multer.js'

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

router.get('/admin/course', authenticateToken, GetCourse)
router.delete('/admin/course', authenticateToken, DeleteCourse)
router.put('/admin/course', authenticateToken, upload.single('fileupload'), UpdateCourse)
router.delete('/admin/course/:id', authenticateToken, DeleteCourse)

router.get("/", getCourse);

router.get("/:course_id", getCourseById);

router.get("/randomCourse/:type", randomizeCourse);

router.post("/getCourseEnroll/", authenticateToken, getCourseEnroll)

router.post("/getManageCourse/", authenticateToken, getManageCourse)

router.post("/createCourse", authenticateToken, upload.single('fileupload'), createCourse);

router.post("/courseEnroll/:course_id", authenticateToken, courseEnroll);

router.post("/courseRating", authenticateToken, createCourseRating);

export default router;
