import bodyParser from "body-parser";
import cors from 'cors';
import dotenv from 'dotenv';
import express from 'express';
import UersRoute from './routes/UsersRoute.js';
import course from './routes/course.js';
import CommentRoute from './routes/CommentsRoute.js';

dotenv.config();

const app = express();

const router = express.Router();

app.use(cors());
app.use(express.json())
app.use(bodyParser.urlencoded({ extended: true}));
app.use(bodyParser.json());
app.use(bodyParser.raw());

app.use("/api",
 router.use("/user", UersRoute),
 router.use("/course", course),
 router.use("/comment", CommentRoute)
);

app.listen(process.env.APP_PORT, () => {
  console.log(`Server started on port ${process.env.APP_PORT}`)
});