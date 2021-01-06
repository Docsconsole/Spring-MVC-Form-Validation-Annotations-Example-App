package com.docsconsole.tutorials.validator;


import com.docsconsole.tutorials.model.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class PersonFormValidator implements Validator {

    @Autowired
    private MessageSource messageSource;

    //which objects can be validated by this validator
    @Override
    public boolean supports(Class<?> paramClass) {
        return Person.class.equals(paramClass);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstname", "firstname.required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastname", "lastname.required");
		/*Person person = (Person) obj;
		if(person.getPhoneNumber().match("/^(\+\d{1,3}[- ]?)?\d{10}$/") && ! (person.getPhoneNumber().match("/0{5,}/")){
			errors.rejectValue("id", "negativeValue", new Object[]{"'id'"}, "id can't be negative");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "name.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "role", "role.required");*/
    }
}
