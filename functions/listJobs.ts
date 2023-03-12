import { Request, Response } from 'express';

export const listJobs = (req: Request, res: Response) => {
    res.status(200).json({
        data: [
            {
                id: 1,
                value: 'value 1'
            }
        ]
    })
}
