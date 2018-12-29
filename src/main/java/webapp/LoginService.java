package webapp;

public class LoginService {

	public boolean isUserValid(String user, String password) {
		if (user.equals("conrad") && password.equals("blah"))
			return true;

		return false;
	}

}