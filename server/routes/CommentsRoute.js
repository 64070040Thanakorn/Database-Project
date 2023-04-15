import express from 'express';
import {
  GetCommentByCourseId,
  createComment,
  deleteComment,
  updateComment
} from '../controllers/CommentsController.js';

const router = express.Router();

router.get('/:course_id', GetCommentByCourseId)

router.post('/', createComment)

router.patch('/:course_id', updateComment)

router.delete('/:course_id', deleteComment)

export default router;

