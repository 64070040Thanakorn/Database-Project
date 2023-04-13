import { PrismaClient } from "@prisma/client";


const prisma = new PrismaClient();

// get all Comment in Post
export const GetCommentByCourseId = async (req, res) =>{
    
    try{

        const response = await prisma.comments.findUnique({
            where:{
                course_id: req.params.course_id
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

export const createComment = async (req, res) =>{
    const {content,user_id,course_id} = req.body;
    
    try{

        const user = await prisma.comments.create({
            data:{
                content: content,
                user_id: user_id,
                course_id:course_id,
            }
        })
        res.status(200).json(user)

    }catch(err) {
        res.status(400).json({message: err.message})
    }


}



// update someone user
export const updateComment = async (req, res) =>{
    try{
        const {first_name,last_name,username,password,email,image,role} = req.body
        const user = await prisma.comments.update({
            where:{
                email:email
            },
            data:{
                first_name: first_name,
                last_name: last_name,
                username:username,
                password: hash,
                email:email,
                image:image,
                role: role 
            }
        })
        res.status(200).json(user)

    }catch(err) {
        res.status(400).json({message: err.message})
    }
    
}



// delete user
export const deleteComment = async (req, res) =>{
    try{
        
        const user = await prisma.comments.delete({
            where:{
                id: req.params.course_id
            }
        })
        res.status(200).json(user)

    }catch(err) {
        res.status(400).json({message: err.message})
    }
    
}
