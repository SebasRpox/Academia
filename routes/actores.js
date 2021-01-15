const {Router} = require("express");
const router = Router();

router.get("/actor", (req,res)=>{
    return res.json([{nombre: "carlos"}]);
});

router.get("/actor/:id", (req,res)=>{
    
});

router.post("/actor", (req,res)=>{
    
});

router.put("/actor/:id", (req,res)=>{
    
});

router.patch("/actor/:id", (req,res)=>{
    
});

router.delete("/actor/:id", (req,res)=>{
    
});

module.exports = router;