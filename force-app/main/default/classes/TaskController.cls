public with sharing class TaskController {
    @AuraEnabled(cacheable=true)
    public static List<Task> getListTask() {
        return [SELECT WhoId, Subject, ActivityDate FROM Task WHERE ActivityDate > Today ORDER BY ActivityDate ASC LIMIT 5];
    }
}
