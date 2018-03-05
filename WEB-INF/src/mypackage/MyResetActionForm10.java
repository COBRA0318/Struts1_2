package mypackage;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import javax.servlet.http.HttpServletRequest;

public class MyResetActionForm10 extends ActionForm {
  private boolean value;

  public void setValue( boolean value ) {
    this.value = value;
  }
  public boolean getValue() {
    return value;
  }

  public void reset( ActionMapping mapping, HttpServletRequest request ) {
    value = false;
  }
}
