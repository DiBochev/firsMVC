package firstMVC;

import java.text.SimpleDateFormat;
import java.util.Date;
	
public class Model {
	
	private static Date d1;
	private static SimpleDateFormat df;
	private static String formattedDate;
	
	
	public Model(){
		d1 = new Date();
		df = new SimpleDateFormat("dd/MM/YYYY HH:mm");
		formattedDate = df.format(d1);
	}
	public String GetTime(){
	return formattedDate;
	}
	
}
