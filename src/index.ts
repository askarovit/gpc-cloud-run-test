import express, { Request, Response } from 'express';

const app = express()

app.get('/', (req: Request, res: Response) => {
    res.status(200).json({
        date: new Date(),
        message: 'It works'
    })
})

app.listen(8080, () => {
    console.log(`Example app listening on port 8080`)
})
