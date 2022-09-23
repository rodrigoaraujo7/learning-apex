import { LightningElement, wire } from 'lwc';

// Importing the apex method
import getListAccount from '@salesforce/apex/AccountController.getListAccount'

export default class NewAccountViewer extends LightningElement {
    account;
    error;

    columns = [
        // fieldName is a api of the field
        {label: 'Name',   fieldName: 'Name'},
        {label: 'Rating', fieldName: 'Rating'},
        {label: 'Phone',  fieldName: 'Phone', type: 'phone'},
    ]

    // Wire receive the data from the apex method
    @wire(getListAccount)wiredAccounts({error, data}) {
        if(data) {
            this.account = data;
            this.error = undefined;
            console.log(data);
        } else if(error) {
            this.account = undefined;
            this.error = error;
        }
    }
}