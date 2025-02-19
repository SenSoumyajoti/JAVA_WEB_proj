package hibernate.dao;

import org.hibernate.Session;

import java.util.List;
import hibernate.model.Employee;
import hibernate.util.EmployeeUtil;

public class EmployeeDao {
    public void saveRecord(Employee e1) {
        Session session = null;
        try {
            session = EmployeeUtil.getSessionFactory().openSession();
            session.beginTransaction();
            session.save(e1);
            session.getTransaction().commit();
        } catch (Exception e) {
            if (session != null) {
                session.getTransaction().rollback();
            }
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
    @SuppressWarnings("unchecked")
	public List<Employee> getAllRecords()
    {
    	List<Employee> arr=null;
    	Session session = null;
        try {
            session = EmployeeUtil.getSessionFactory().openSession();
            session.beginTransaction();
            arr=session.createQuery("from Employee").list();
            session.getTransaction().commit();
        } catch (Exception e) {
            if (session != null) {
                session.getTransaction().rollback();
            }
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
    	return arr;
    }
}