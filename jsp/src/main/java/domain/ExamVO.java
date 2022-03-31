package domain;

public class ExamVO {

	private int num;
	private String qs;//문제
	private String an;//답
	
	public ExamVO() {
		super();
	}

	public ExamVO(int num, String qs, String an) {
		super();
		this.num = num;
		this.qs = qs;
		this.an = an;
	}

	@Override
	public String toString() {
		return "ExamVO [num=" + num + ", qs=" + qs + ", an=" + an + "]";
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getQs() {
		return qs;
	}

	public void setQs(String qs) {
		this.qs = qs;
	}

	public String getAn() {
		return an;
	}

	public void setAn(String an) {
		this.an = an;
	}
	
	
}

