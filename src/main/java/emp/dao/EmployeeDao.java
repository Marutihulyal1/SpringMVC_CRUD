package emp.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import emp.dto.Employee;

@Component
public class EmployeeDao {
	
	@Autowired
	EntityManager manager;

	public void save(Employee employee) {
		manager.getTransaction().begin();
		manager.persist(employee);
		manager.getTransaction().commit();
	}

	public List<Employee> fetch() {
		return manager.createQuery("select x from Employee x").getResultList();
	}

	public void delete(int id) {
		manager.getTransaction().begin();
		manager.remove(manager.find(Employee.class, id));
		manager.getTransaction().commit();
	}

	public Employee find(int id) {
		return manager.find(Employee.class, id);
	}

	public void update(Employee emp) {
		manager.getTransaction().begin();
		manager.merge(emp);
		manager.getTransaction().commit();
	}

	public Employee findById(int id) {
		return manager.find(Employee.class, id);
	}

}
