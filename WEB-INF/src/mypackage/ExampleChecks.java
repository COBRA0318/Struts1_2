package mypackage;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.validator.Field;
import org.apache.commons.validator.Validator;
import org.apache.commons.validator.ValidatorAction;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.validator.Resources;

public class ExampleChecks implements Serializable {
	 public ExampleChecks() {
		   super();
		 }

		 public static boolean alwaysBad(
		   Object bean,
		   ValidatorAction va,
		   Field field,
		   ActionMessages errors,
		   Validator validator,
		   HttpServletRequest request) {

		   errors.add(field.getKey(),
		       Resources.getActionError(request, va,  field));

		   return false;
		 }
}
