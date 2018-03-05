package mypackage;

import java.util.HashMap;
import java.util.List;

import org.apache.struts.action.ActionForm;

public class MyActionForm10 extends ActionForm {
  private boolean value;
  private List<HashMap> shList;

  public void setValue( boolean value ) {
    this.value = value;
  }
  public boolean getValue() {
    return value;
  }
  public List<HashMap> getShList() {
	return shList;
  }
  public void setShList(List<HashMap> shList) {
	 this.shList = shList;
  }
}
