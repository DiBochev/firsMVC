package firstMVC;

public class Controller {
	
	public static String GetTime(){
		Model first = new Model();
		String time = first.GetTime();
		return time;
	}
	
}
