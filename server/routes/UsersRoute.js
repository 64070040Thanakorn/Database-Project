import express from 'express';
import {
  GetUserById,
  GetUsers,
  createUser,
  deleteUser,
  updateUser
} from '../controllers/UsersController.js';

 const router = express.Router();

router.get('/users',GetUsers)

router.get('/users/:id',GetUserById)

router.post('/users',createUser)

router.patch('/users/:id',updateUser)

router.delete('/users/:id',deleteUser)

 export default router;