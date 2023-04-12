import { PrismaClient } from '@prisma/client';
import express from 'express';

const router = express.Router();
const prisma = new PrismaClient();

router.get('/:id',(res, req, next) => {

})

router.post('/', async (res, req, next) => {

})

router.post('/:id',(res, req, next) => {
  
})

router.delete('/:id',(res, req, next) => {
  
})

 export default router;