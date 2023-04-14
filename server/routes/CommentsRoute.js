import express from 'express';
import {
  GetCommentByCourseId,
  createComment,
  deleteComment,
  updateComment
} from '../controllers/CommentsController.js';

const router = express.Router();

router.get('/comment/:course_id', GetCommentByCourseId)

router.post('/comment', createComment)

router.patch('/comment/:course_id', updateComment)

router.delete('/comment/:course_id', deleteComment)

export default router;

