import { LightningElement, wire } from 'lwc';
import getListTask from '@salesforce/apex/TaskController.getListTask';

export default class ViewActualTask extends LightningElement {
    task;
    error;

    columns = [
        {label: 'Id',           fieldName: 'WhoId'},
        {label: 'Subject',      fieldName: 'Subject'},
        {label: 'ActivityDate', fieldName: 'ActivityDate'}
    ]
    
    @wire(getListTask)wiredTask({error, data}) {
        if(data) {
            this.task = data;
            this.error = undefined;
            console.log(data)
        } else if(error) {
            this.task = undefined;
            this.error = error;
            console.log(error)
        }
    }
}