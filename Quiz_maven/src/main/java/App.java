import java.util.List;

import hibernate.dao.QuizDao;
import hibernate.model.Quiz;

public class App {
	public static void main(String[] args) {
		@SuppressWarnings("unused")
		Quiz o1=new Quiz();
		QuizDao obj=new QuizDao();
		obj.saveRecord(o1); 
		System.out.println("Data Saved !!!");
		List<Quiz> arr=obj.getRecords();
		for(Quiz e1:arr)
		{
			System.out.println(e1.getA()+"\t"+e1.getB()+"\t"+e1.getC()+"\t"+e1.getD());
		}
	}
}
