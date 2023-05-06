package emp.service;

import java.sql.Date;
import java.util.List;

import javax.swing.text.View;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import emp.dao.EmployeeDao;
import emp.dto.Employee;

@Service //just like a @component
public class EmployeeService 
{
	@Autowired
	Employee employee;
	
	@Autowired
	EmployeeDao dao;
	
	public ModelAndView loadEmployee() 
	{
		ModelAndView view=new ModelAndView("InsertData");
		view.addObject("employee",employee);
		return view;
	}

	public ModelAndView saveEmployee(Employee emp,String date) 
	{
			emp.setDoj(Date.valueOf(date));
			dao.save(emp);
			ModelAndView view=new ModelAndView("Home");
			view.addObject("msg","Data added Successfully");
			return view;
	}
	
	public ModelAndView fetch()
	{
		ModelAndView view=new ModelAndView();
		List<Employee> list=dao.fetch();
		if(list.isEmpty())
		{
			view.addObject("msg","Data Not FOund");
			view.setViewName("Home");
		}
		else
		{
		view.addObject("list",list);
		view.setViewName("Result");
		}
		return view;
	}

	public ModelAndView delete(int id) 
	{
		ModelAndView view=new ModelAndView("Result");
		dao.delete(id);
		List<Employee> list=dao.fetch();
		if(list.isEmpty())
		{
			view.addObject("msg","Data not Present");
			view.setViewName("Home");
		}
		else
		{
//		view.addObject("list",dao.fetch());
			view.addObject("list",list);
		view.addObject("msg","Data Deleted Successfully");
		}
		return view;
	}

	public ModelAndView editEmployee(int id)
	{
		ModelAndView view=new ModelAndView("edit");
		Employee employee=dao.find(id);
		view.addObject("emp",employee);
//		view.addObject("emp",dao.find(id));
		return view;
	}

	public ModelAndView updateEmp(Employee emp, String date) 
	{
		emp.setDoj(Date.valueOf(date));
		dao.update(emp);
		ModelAndView view=new ModelAndView("Result");
		 view.addObject("list",dao.fetch());
		 
		view.addObject("msg","Data updated Successfully");
		return view;
	}

	public ModelAndView fetchById(int id) 
	{
		ModelAndView view=new ModelAndView();
		Employee e=dao.findById(id);
		if(e==null)
		{
			view.addObject("msg","Data Not Found");
			view.setViewName("fetch");
		}
		else
		{
			view.addObject("emppp",e);
			view.setViewName("Result1");
		}
		return view;
		
	}
	

}
