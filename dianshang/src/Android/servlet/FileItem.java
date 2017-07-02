package Android.servlet;

import java.io.InputStream;

public class FileItem {
	private String fieldName;
	private String name;
	private InputStream inputstream;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public InputStream getInputstream() {
		return inputstream;
	}
	public void setInputstream(InputStream inputstream) {
		this.inputstream = inputstream;
	}
	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}
	public String getFieldName() {
		// TODO Auto-generated method stub
		return null;
	}

}
