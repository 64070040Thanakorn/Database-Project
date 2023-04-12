import { PrismaClient } from "@prisma/client";
import bcrypt from "bcrypt";
import express from "express";

const prisma = new PrismaClient();
const router = express.Router();

router.post("/register", async (req,res,next) => {
  try{
    const { first_name, last_name, email, password } = req.body;
    const exist = await prisma.user.findFirst({
      where:{
        email: email
      }
    });
    if(exist){
      return res.status(409).send("Email already exist.")
    }
    const encrytedPassword = await bcrypt.hash(password, 10)
    const user = await prisma.user.create({
      data:{
        first_name: first_name,
        last_name: last_name,
        email: email,
        password: encrytedPassword,
      }
    });
    user.password = undefined
    res.json(user)
  } catch(err) {
    next(err);
  };
});

router.post("/login", async(req, res, next) => {
  try{
    const { email, password } = req.body
    const user = await prisma.user.findFirst({
      where: { email: email },
    })
    if(user){
      if (await bcrypt.compare(password, user.password)) {
          user.password = undefined
          res.send(user)
      }
      else {
        res.status(409).send("Password not correct!")
      }
    };
  } catch(err) {
    next(err);
  };
});

export default router