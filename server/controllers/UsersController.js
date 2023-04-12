import { PrismaClient } from "@prisma/client";
import bcrypt from 'bcrypt';

const prisma = new PrismaClient();

// Get all users

export const GetUsers = async (req, res) =>{
    try{

        const response = await prisma.users.findMany()
        res.status(200).json(response)
    }catch(err) {
        res.status(500).json({message: err.message})
    }

}

// get someone user
export const GetUserById = async (req, res) =>{
    
    try{

        const response = await prisma.users.findUnique({
            where:{
                id: Number(req.params.id)
            }
        })
        res.status(200).json(response)

    }catch(err) {
        res.status(404).json({message: err.message})
    }
    
}



// create User 
// postman => {
//   firstName String 
//   lastName String
//   userName String
// password String
//   email String
//   image String
// }

export const createUser = async (req, res) =>{
    const {first_name,last_name,username,password,email,image} = req.body;
    const hash = await bcrypt.hash(password ,13);
    try{

        const user = await prisma.users.create({
            data:{
                first_name: first_name,
                last_name: last_name,
                username:username,
                password: hash,
                email:email,
                image:image
            }
        })
        res.status(200).json(user)

    }catch(err) {
        res.status(400).json({message: err.message})
    }


}



// update someone user
export const updateUser = (req, res) =>{

    
}



// delete user
export const deleteUser = (req, res) =>{

    
}
