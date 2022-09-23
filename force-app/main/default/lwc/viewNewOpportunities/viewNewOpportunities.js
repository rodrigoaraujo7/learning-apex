import { LightningElement, wire } from 'lwc';
import getOpportunities from '@salesforce/apex/OpportunityController.getOpportunities'

export default class ViewNewOpportunities extends LightningElement {
    opportunity;
    error;

    columns = [
        {label: 'Id', fieldName: 'Id'},
        {label: 'Name', fieldName: 'Name'},
        {label: 'Amount', fieldName: 'Amount'},
        {label: 'Stage Name', fieldName: 'StageName'},
        {label: 'Created Date', fieldName: 'CreatedDate'}
    ]

    @wire(getOpportunities)wiredOpportunities({error, data}) {
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