const { Router } = require("express");
const documentController = require("../controllers/document.controller");

const router = Router();

router.get('/document/:id',documentController.getDocument)
router.delete('/document/:id',documentController.deleteDocument)
router.get('/document',documentController.getDocuments)
router.post('/document',documentController.createDocument)
router.put('/document/:id',documentController.updateDocument)


module.exports = router;