import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import UersRoute from './routes/UsersRoute.js'

dotenv.config();

const app = express();
app.use(cors());
app.use(express.json())
app.use(UersRoute)

app.listen(process.env.APP_PORT, () => {
    console.log('Server up and running...');
});