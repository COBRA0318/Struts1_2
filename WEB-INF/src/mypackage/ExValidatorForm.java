package mypackage;

import org.apache.struts.validator.*;
import org.apache.struts.action.*;

//Validator���g�p����ꍇ��ValidatorForm�N���X���p�����܂��B
//���̑��͈�ʓI�ȃA�N�V������t�H�[��Bean�̍쐬���@�ƕς��܂���B
public final class ExValidatorForm extends ValidatorForm {
    private String requireV;
    private String validwhenV;
    private String countV;
    private String patternV;
    private String dateV;
    private String rangeV;
    private String emailV;

    public void setRequireV(String requireV)
            {this.requireV = requireV;}
    public void setValidwhenV(String validwhenV)
            {this.validwhenV = validwhenV;}
    public void setCountV(String countV)
             {this.countV = countV;}
    public void setPatternV(String patternV)
            {this.patternV = patternV;}
    public void setDateV(String dateV)
            {this.dateV = dateV;}
    public void setRangeV(String rangeV)
            {this.rangeV = rangeV;}
    public void setEmailV(String emailV)
            {this.emailV = emailV;}

    public String getRequireV() {return requireV;}
    public String getValidwhenV() {return validwhenV;}
    public String getCountV() {return countV;}
    public String getPatternV() {return patternV;}
    public String getDateV() {return dateV;}
    public String getRangeV() {return rangeV;}
    public String getEmailV() {return emailV;}
}