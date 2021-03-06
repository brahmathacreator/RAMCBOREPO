package com.org.mntr.constants;

import java.io.Serializable;

public class SSValidationConfig implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public final static int textGeneralMin = 1;
	public final static int textGeneralMax = 200;
	public final static int passGeneralMin = 8;
	public final static int passGeneralMax = 16;
	public final static int numericGeneralMin = 1;
	public final static int numericGeneralMax = 10;
	public final static String textGeneralPattern = "^[A-Za-z0-9 _,\\.\\/\\-]*$";
	public final static String textGeneralUserIdPatteren = "^[A-Za-z0-9_]*$";
	public final static String passGeneralPattern = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#%]).{8,16})";
	public final static String phnoGeneralPatteren = "^[0-9]{8}$|^[0-9]{10}$";
	public final static String appDateFormat = "yyyy-MM-dd HH:mm:ss";
	public final static String onlyNumeric = "^[0-9]{1,8}$";

	// security configuration constants
	public final static String sessionExpiryPeriodKey = "app.session.timeout.mins";
	public final static String pwdLinkExpiryPeriodKey = "app.password.link.expiry.period.hour";
	public final static String masterPassCode = "app.master.sec.code";

}
