import express from 'express';
import { indexRouter } from './routes/indexRouter.js';
import dotenv from 'dotenv';
import path from 'node:path';

// setup
dotenv.config();
const app = express();
const __dirname = path.resolve();
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(express.urlencoded({ extended: true }));
// Enable serving static files
const assetsPath = path.join(__dirname, 'public');
app.use(express.static(assetsPath));

// define routes
app.use('/', indexRouter);

// init server
const PORT = 3000;
app.listen(PORT, () => console.log('Server listening on port: ' + PORT));
