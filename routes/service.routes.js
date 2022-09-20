const { Router } = require("express");
const serviceController = require("../controllers/service.controller");

const router = Router();

router.get('/service/:id',serviceController.getService)
router.delete('/service/:id',serviceController.deleteService)
router.get('/service',serviceController.getServices)
router.get('/service-options',serviceController.getOptions)
router.post('/service',serviceController.createService)
router.put('/service/:id',serviceController.updateService)


module.exports = router;