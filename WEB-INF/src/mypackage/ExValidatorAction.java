package mypackage;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import mypackage.MyActionForm10;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ExValidatorAction extends Action {
  public ActionForward execute(
      ActionMapping mapping,
      ActionForm form,
      HttpServletRequest req,
      HttpServletResponse res )
      throws Exception {
/*      List<HashMap> shList = new ArrayList<HashMap>();

      MyActionForm10 thisForm = (MyActionForm10)form;
      HashMap oneItem = new HashMap();
      oneItem.put("kbn", "val01");
      oneItem.put("kaisu", "su01");
      shList.add(oneItem);

      oneItem = new HashMap();
      oneItem.put("kbn", "val02");
      oneItem.put("kaisu", "su02");
      shList.add(oneItem);
      thisForm.setShList(shList);*/
    return mapping.findForward( "info" );
  }
}