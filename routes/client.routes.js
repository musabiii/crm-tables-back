const { Router } = require("express");
const clientController = require("../controllers/client.controller");

const router = Router();

router.get('/client/:id',clientController.getClient)
router.delete('/client/:id',clientController.deleteClient)
router.get('/client',clientController.getClients)
router.get('/client-options',clientController.getOptions)
router.post('/client',clientController.createClient)
router.put('/client/:id',clientController.updateClient)


module.exports = router;