package hibernate.dao;

import org.hibernate.Session;

import java.util.List;
import hibernate.model.Quiz;
import hibernate.util.QuizUtil;

public class QuizDao {
    public void saveRecord(Quiz e1) {
        Session session = null;
        try {
            session = QuizUtil.getSessionFactory().openSession();
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
	public List<Quiz> getRecords()
    {
    	List<Quiz> arr=null;
    	Session session = null;
        try {
            session = QuizUtil.getSessionFactory().openSession();
            session.beginTransaction();
            arr=session.createQuery("from Quiz").list();
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