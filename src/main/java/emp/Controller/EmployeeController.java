package emp.Controller;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import emp.dao.EmployeeDao;
import emp.dto.Employee;
import emp.service.EmployeeService;

@Controller
public class EmployeeController 
{

	@Autowired
	EmployeeService service;
	
	@RequestMapping("loademployee")
	public ModelAndView loadEmployee()
	{
		return service.loadEmployee();
	}
	
	@PostMapping("saveemployee")
	public ModelAndView saveEmployee(@ModelAttribute Employee emp,@RequestParam String date)
	{
       return service.saveEmployee(emp,date);
	}
	
	@GetMapping("fetchall")
	public ModelAndView fetch()
	{
		return service.fetch();
	}
	
	@GetMapping("delete")
	public ModelAndView delete(@RequestParam int id)
	{
		return service.delete(id);
	}
	
	@RequestMapping("edit")
	public ModelAndView editEmployee(@RequestParam int id)
	{
		return service.editEmployee(id);
	}
	
	@RequestMapping("updateEmployee")
	public ModelAndView updateEmployee(@ModelAttribute Employee emp,@RequestParam String date)
	{
		return service.updateEmp(emp,date);
	}
	
	@RequestMapping("fetchById")
	public ModelAndView FetchById(@RequestParam int id)
	{
		return service.fetchById(id);
		
	}
	

}
