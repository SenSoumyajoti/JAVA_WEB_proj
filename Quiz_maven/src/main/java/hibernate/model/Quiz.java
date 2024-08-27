package hibernate.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "questions")
public class Quiz {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int id;
		@Column(name = "question", nullable = false)
	    private String question;
	    
	    @Column(name = "option_a", nullable = false)
	    private String A;
	    
	    @Column(name = "option_b", nullable = false)
	    private String B;
	    
	    @Column(name = "option_c", nullable = false)
	    private String C;
	    
	    @Column(name = "option_d", nullable = false)
	    private String D;
	    
	    @Column(name = "answer", nullable = false)
	    private String answer;

		
	/**
	 * 
	 */
	public Quiz() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param id
	 * @param question
	 * @param a
	 * @param b
	 * @param c
	 * @param d
	 * @param answer
	 */
	public Quiz(int id, String question, String a, String b, String c, String d, String answer) {
		super();
		this.id = id;
		this.question = question;
		A = a;
		B = b;
		C = c;
		D = d;
		this.answer = answer;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getA() {
		return A;
	}
	public void setA(String a) {
		A = a;
	}
	public String getB() {
		return B;
	}
	public void setB(String b) {
		B = b;
	}
	public String getC() {
		return C;
	}
	public void setC(String c) {
		C = c;
	}
	public String getD() {
		return D;
	}
	public void setD(String d) {
		D = d;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	
	
}
