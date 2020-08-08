/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dev.bugcontrol.controllers;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author ibencosme
 */
@RestController
public class BugsController {
  
    @RequestMapping(value = "/adddeveloper",method = RequestMethod.POST)
    public String AddDeveloper(){
        return "";
    }

    
    @RequestMapping(value = "/updatedeveloper",method = RequestMethod.POST)
    public String UpdateDeveloper(){
        return "";
    }
    
    
    @RequestMapping(value = "/removedeveloper",method = RequestMethod.POST)
    public String RemoveDeveloper(){
        return "";
    }
    
    
    @RequestMapping(value = "/listdeveloper",method = RequestMethod.GET)
    public String ListDeveloper(){
        return "";
    }
    
    
    @RequestMapping(value = "/checkpassword",method = RequestMethod.GET)
    public String CheckPasswordDeveloper(){
        return "";
    }
    
    
    @RequestMapping(value = "/addproject",method = RequestMethod.POST)
    public String AddProject(){
        return "";
    }

    
    @RequestMapping(value = "/updateproject",method = RequestMethod.POST)
    public String UpdateProject(){
        return "";
    }
    
    
    @RequestMapping(value = "/removeproject",method = RequestMethod.POST)
    public String RemoveProject(){
        return "";
    }
    
    
    @RequestMapping(value = "/listproject",method = RequestMethod.GET)
    public String ListProject(){
        return "";
    }
   
    
    @RequestMapping(value = "/addbug",method = RequestMethod.POST)
    public String AddBug(){
        return "";
    }

    
    @RequestMapping(value = "/updatebug",method = RequestMethod.POST)
    public String UpdateBug(){
        return "";
    }
    
    
    @RequestMapping(value = "/removebug",method = RequestMethod.POST)
    public String RemoveBug(){
        return "";
    }
    
    
    @RequestMapping(value = "/listbug",method = RequestMethod.GET)
    public String ListBug(){
        return "";
    }
   
    
}
