import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export const getCourse = async (req, res) =>{
  try{
    const asdasdasd = await prisma.users.findMany()
    
    res.status(200).json(asdasdasd)
  } catch (err) {
    res.status(500).json({message: err.message})
  }
}
