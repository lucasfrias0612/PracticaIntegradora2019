package services;

import dto.UserDTO;

public class UserValidator extends RegexValidator {

	public static boolean isFile(String s) {
		return isNumeric(s) && s.length() < 7;
	}

	public static boolean isDni(String s) {
		return isNumeric(s) && s.length() < 9;
	}

	public static boolean isName(String s) {
		return isAlphabeticalString(s) && s.length() < 50;
	}

	public static boolean isGender(String s) {
		return isAlphabeticalString(s) && s.length() < 20 && isAnAvaiableGender(s);
	}

	private static boolean isAnAvaiableGender(String s) {
		boolean b = false;
		for (String gender : UserDTO.avaiableGenders) {
			if (gender.equals(s.trim().toLowerCase()))
				b = true;
		}
		return b;
	}

}
