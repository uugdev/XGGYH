package dto;

import java.util.Date;

public class XReview {
	
	private int review_no;
	private int show_no;
	private int file_no;
	private String mem_id;
	private String review_title;
	private String review_content;
	private Date review_date;
	private int review_score;
	private int review_hit;

	@Override
	public String toString() {
		return "XReview [review_no=" + review_no + ", show_no=" + show_no + ", file_no=" + file_no + ", mem_id="
				+ mem_id + ", review_title=" + review_title + ", review_content=" + review_content + ", review_date="
				+ review_date + ", review_score=" + review_score + ", review_hit=" + review_hit + "]";
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public int getShow_no() {
		return show_no;
	}

	public void setShow_no(int show_no) {
		this.show_no = show_no;
	}

	public int getFile_no() {
		return file_no;
	}

	public void setFile_no(int file_no) {
		this.file_no = file_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public Date getReview_date() {
		return review_date;
	}

	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}

	public int getReview_score() {
		return review_score;
	}

	public void setReview_score(int review_score) {
		this.review_score = review_score;
	}

	public int getReview_hit() {
		return review_hit;
	}

	public void setReview_hit(int review_hit) {
		this.review_hit = review_hit;
	}
	
}
