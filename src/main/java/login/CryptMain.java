package login;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 
 * Hashes user's password
 *
 */
public class CryptMain {
	
	private static MessageDigest md5;
	
	public CryptMain(){
	       try{
	           md5 = MessageDigest.getInstance("MD5");
	       }
	       catch(NoSuchAlgorithmException e){
	           System.out.println(e.toString());
	       }
	   }

	public String hashPassword(String password) {
		md5.update(password.getBytes());
		byte[] digest = md5.digest();
		StringBuffer strBuff = new StringBuffer();
		for (byte b : digest) {
			strBuff.append(String.format("%02x", b & 0xff));
		}
		return strBuff.toString();
	}
    
}