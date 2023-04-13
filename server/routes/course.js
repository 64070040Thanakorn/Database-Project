import express from 'express';
import { getCourse, createCourse } from '../controllers/CourseController.js';

const router = express.Router();

router.get('/', getCourse)

router.post('/createCourse', createCourse)

export default router;