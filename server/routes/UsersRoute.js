import express from 'express';
import {
  GetUserById,
  GetUsers,
  createUser,
  deleteUser,
  AuthMe,
  AuthLogin,
  updateUser
} from '../controllers/UsersController.js';

import jwt from 'jsonwebtoken'

function authenticateToken(req, res, next) {
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1];
  if (token == null) return res.sendStatus(401);

  jwt.verify(token, "fewZaandtheGang", (err, user) => {
    if (err) return res.sendStatus(403);
    req.user = user;
    next();
  });
}

const router = express.Router();

router.get('/users', GetUsers)

router.get('/users/:id', GetUserById)

router.post('/users', createUser)

router.post('/login', AuthLogin)

router.get('/me', authenticateToken, AuthMe)

router.patch('/users/:id', updateUser)

router.delete('/users/:id', deleteUser)

export default router;