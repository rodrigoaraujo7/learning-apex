import { LightningElement, wire } from 'lwc';
import getApprovationOpportunities from '@salesforce/apex/OpportunityController.getApprovationOpportunities';

export default class ViewApprovationOpportunities extends LightningElement {
    opportunity;
    error;

    columns = [
        {label: 'Id',         fieldName: 'Id'},
        {label: 'Name',       fieldName: 'Name'},
        {label: 'Amount',     fieldName: 'Amount'},
        {label: 'Stage Name', fieldName: 'StageName'}
    ]
    
    @wire(getApprovationOpportunities)wiredOpportunity({error, data}) {
        if(data) {
            this.opportunity = data;
            this.error = undefined;
            console.log(data)
        } else if(error) {
            this.opportunity = undefined;
            this.error = error;
            console.log(error)
        }
    }
}