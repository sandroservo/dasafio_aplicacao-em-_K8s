import express from 'express'
import { prisma } from './primas';

export const routes = express.Router()



routes.post('/onus', async (req, res) => {
    //console.log(req.body)
    const {
        customer,
        cpe_user,
        contract,
        onu_name,
        olt,
        pon,
        serial,
        distance } = req.body
    const onu = await prisma.onu.create({
        data: {
            customer,
            cpe_user,
            contract,
            onu_name,
            olt,
            pon,
            serial,
            distance
        }

    })
    return res.status(201).json({ data: onu });

})

routes.get('/onus', async (req, res) => {
    const onu = await prisma.onu.findMany({
       
            orderBy:{
                id:'desc'
            }
       
    })
    res.status(200).json(onu)
})