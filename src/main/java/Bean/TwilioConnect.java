package Bean;

import Servlet.TwilioServlet;
import java.util.Map;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser; //Dependency

public class TwilioConnect {
    
    String username = null, password = null;
    String accountSID = null, authToken = null;
	
	public TwilioConnect(){
		try{
			setCreds();
		}catch (Exception e){
			
		}
	}
    
    private void setCreds()throws Exception{
        Map<String, String> env = System.getenv();
        
        if(env.containsKey("VCAP_SERVICES")){ //to check if VCAP_SERVICES exists
            JSONParser parse = new JSONParser();
            JSONObject v_serv = (JSONObject) parse.parse(env.get("VCAP_SERVICES"));
            JSONObject service = null;
            
            
            for (Object key : v_serv.keySet()) {
                String keyStr = (String) key;
                if (keyStr.toLowerCase().contains("Twilio")) {
                    service = (JSONObject) ((JSONArray) v_serv.get(keyStr)).get(0);
                    break;
                }
            }
            
            if (service != null) {
                JSONObject creds = (JSONObject) service.get("credentials");
                //String username = (String) creds.get("username");
                //String password = (String) creds.get("password");
                accountSID = (String) creds.get("accountSID");
                authToken = (String) creds.get("authToken");
                
                this.accountSID = accountSID;
                this.authToken = authToken;
            }
            else {
                throw new Exception("Twilio service not found");
            }
        }
        else{ //if VCAP_SERVICES do not exist, throw exception
            throw new Exception("Error: VCAP_SERVICES not found");
        }
    }
    
    public String getAcctSID(){
        return accountSID;
    }
    
    public String getAuthToken(){
        return authToken;
    }
}
