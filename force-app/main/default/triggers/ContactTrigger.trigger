trigger ContactTrigger on Contact(before update) {    
    for(Contact itemCnt : Trigger.new) {    
        String text = 'Modificado por: ' + UserInfo.getUserName();
        itemCnt.Description	= text;
    }
}