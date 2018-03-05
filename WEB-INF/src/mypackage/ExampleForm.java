package mypackage;

import java.util.HashMap;
import java.util.List;

import org.apache.struts.action.ActionForm;

public class ExampleForm extends ActionForm {
  private String value;
//  private List<HashMap> shList;

  public String getValue() {
  	  return value;
  }

  public void setValue(String value) {
	  this.value = value;
  }

//  public void setValue( boolean value ) {
//    this.value = value;
//  }
//  public boolean getValue() {
//    return value;
//  }
//  public List<HashMap> getShList() {
//	return shList;
//  }
//  public void setShList(List<HashMap> shList) {
//	 this.shList = shList;
//  }
}
