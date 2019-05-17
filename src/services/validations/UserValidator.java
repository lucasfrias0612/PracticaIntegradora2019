package services.validations;

import static services.validations.GenericValidator.isAlphabeticalString;
import static services.validations.GenericValidator.isNumeric;

import dto.UserDTO;

public class UserValidator {

	public static boolean isFile(String s) {
		return isNumeric(s) && s.length() < 7;
	}

	public static boolean isUserValid(UserDTO user) {
		return isFile(user.getFile()) && isDni(user.getDni()) && isName(user.getFirstname())
				&& isName(user.getLastname()) && isGender(user.getGender());
	}
	
	private static boolean isDni(String s) {
		return isNumeric(s) && s.length() < 9;
	}

	private static boolean isName(String s) {
		return isAlphabeticalString(s) && s.length() < 50;
	}

	private static boolean isGender(String s) {
		return isName(s) && s.length() < 30;
	}

}
