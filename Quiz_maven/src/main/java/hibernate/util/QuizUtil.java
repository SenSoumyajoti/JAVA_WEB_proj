package hibernate.util;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import hibernate.model.Quiz;



public class QuizUtil {
	private static SessionFactory factory=null;
	private static ServiceRegistry serviceRegistry;
	public static SessionFactory getSessionFactory() {
		if(factory==null)
		{
			try {
				Configuration config= new Configuration();
				Properties settings = new Properties();
				settings.put(Environment.DRIVER,"com.mysql.jdbc.Driver");
				settings.put(Environment.URL,"jdbc:mysql://localhost:3306/db_quiz");
				settings.put(Environment.USER,"root");
				settings.put(Environment.PASS,"root@1");
				settings.put(Environment.DIALECT,"org.hibernate.dialect.MySQL8Dialect");
				settings.put(Environment.SHOW_SQL,"true");
				settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS,"thread");
				settings.put(Environment.HBM2DDL_AUTO,"update");
				config.setProperties(settings);
				config.addAnnotatedClass(Quiz.class);
				StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build();
				factory=config.buildSessionFactory(serviceRegistry);
				
						
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		return factory;

}
	}
