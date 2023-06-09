package btl.font_end;

import org.mindrot.jbcrypt.BCrypt;

public class taopass {
	
		public static void main(String[] args) {
//			System.out.println(BCrypt.hashpw("1234567", BCrypt.gensalt(12)));
			System.out.println(BCrypt.checkpw("1234567", "$2a$12$94jpVXkBWiZ5QRt6OZFdbOEe2A9W2M3wk63sNjuu5NC52WS75OaR6"));
		}
}
