const { Router } = require("express");
const serviceController = require("../controllers/service.controller");

const router = Router();

router.get('/service/:id',serviceController.getService)
router.get('/service',serviceController.getServices)
router.post('/service',serviceController.createService)
router.put('/service/:id',serviceController.updateService)


module.exports = router;