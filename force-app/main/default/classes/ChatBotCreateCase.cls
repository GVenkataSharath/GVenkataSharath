public class ChatBotCreateCase {    
    @InvocableMethod(label='Case' description='New case creation for the specified text')   
     public static void createCase(list<string> currentUser) {
        User u = [select id,Name,contactId from User where id =: userInfo.getUserId()];
        System.debug('u.Name'+u.Name);
         System.debug('u.contactId'+u.contactId);
         System.debug('userInfo.getUserId()'+userInfo.getUserId());
         
        Case c = new Case();
        c.contactid = u.contactId;
        c.Subject='Additional Covid-19 Relief from Chat Bot';
        c.Status='New';
        c.Origin = 'web';
        insert c;
        
       
    }
    
   
    
}