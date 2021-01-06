package com.docsconsole.tutorials.controllers;

import com.docsconsole.tutorials.model.Person;
import com.docsconsole.tutorials.validator.PersonFormValidator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("person-app")
public class PersonController {

    private static final Logger logger = Logger.getLogger(PersonController.class);

    private Map<String, Person> persons = null;

    @Autowired
    private PersonFormValidator validator;

    public PersonController() {
        persons = new HashMap<String, Person>();
    }

    @InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }

    @ModelAttribute("person")
    public Person createPersonModel() {
        // ModelAttribute value should be same as used in the empSave.jsp
        return new Person();
    }

    @RequestMapping(value = "/person/save", method = RequestMethod.GET)
    public String setupForm(Model model) {
        logger.info("Returning person.jsp page1");
        return "person";
    }

    @RequestMapping(value = "/person/save.do", method = RequestMethod.POST)
    public String savePerson(@ModelAttribute("person") @Validated Person person,
                             BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            logger.info("Returning person.jsp");
            return "person";
        }
        logger.info("Returning person-success.jsp page");
        model.addAttribute("person", person);
        persons.put(person.getFirstname(), person);
        return "person-success";

    }


}