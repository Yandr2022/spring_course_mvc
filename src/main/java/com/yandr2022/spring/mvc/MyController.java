package com.yandr2022.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/employee")
public class MyController {
    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

//    @RequestMapping("/askDetails")
//    public String askEmployeeDetails() {
//        return "ask-emp-details-view";
//    }
    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {
//        Employee employee = new Employee();
//        employee.setName("Ivan");
//        employee.setSurname("Petrov");
//        employee.setSalary(100);
        model.addAttribute("employee",new Employee(
        ));
        return "ask-emp-details-view";
    }

    //    @RequestMapping("/showDetails")
//    public String showEmployeeDetails() {
//        return "show-emp-details-view";
//    }

//    @RequestMapping("/showDetails")
//    public String showEmployeeDetails(HttpServletRequest request, Model model) {
//        String empName = request.getParameter("employeeName");
//        empName = "Mr." + empName;
//        model.addAttribute("nameAttribute", empName);
//        model.addAttribute("description", " - best man to world");
//        return "show-emp-details-view";
//    }
//    @RequestMapping("/showDetails")
//    public String showEmployeeDetails(@RequestParam("employeeName") String empName, Model model) {
//        empName = "Mr." + empName;
//        model.addAttribute("nameAttribute", empName);
//        return "show-emp-details-view";
//    }

//    @RequestMapping("/showDetails")
//    public String showEmployeeDetails(@ModelAttribute("employee") Employee emp) {
//        String name = emp.getName();
//        emp.setName("Mr. " + name);
//        String surname = emp.getSurname();
//        emp.setSurname(surname + "!");
//        int salary = emp.getSalary();
//        emp.setSalary(salary * 10);
//        return "show-emp-details-view";
//    }

    @PostMapping("/showDetails")
    public String showEmployeeDetails(@Valid @ModelAttribute("employee") Employee emp, BindingResult result) {
        if (result.hasErrors()) {
            return "ask-emp-details-view";
        } else {
            return "show-emp-details-view";
        }
    }

}
