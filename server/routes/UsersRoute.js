import express from 'express';
import {
    GetUsers,
    GetUserById,
    createUser,
    updateUser,
    deleteUser
 } from '../controllers/UsersController.js'

 const router = express.Router();

router.get('/users',GetUsers)

router.get('/users/:id',GetUserById)

router.post('/users',createUser)

router.patch('/users/:id',updateUser)

router.delete('/users/:id',deleteUser)

 export default router;