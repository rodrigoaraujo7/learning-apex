import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation';

import Lead from '@salesforce/schema/Lead';

import FirstName from '@salesforce/schema/Lead.FirstName';
import LastName from '@salesforce/schema/Lead.LastName';
import Company from '@salesforce/schema/Lead.Company';
import Status from '@salesforce/schema/Lead.Status';

import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { createRecord } from 'lightning/uiRecordApi';

export default class NewLeadUiRecordApi extends NavigationMixin(LightningElement) {
    recordId;
    lead = {
        FirstName: '',
        LastName: '',
        Company: '',
        Status: '',
    }

    lstStatus = [
        {label: "Open - Not Contacted", value:"Open-Not Contacted"},
        {label: "Working - Contacted", value:"Working-Contacted"},
        {label: "Closed - Converted", value:"Closed-Converted"},
        {label: "Closed - Not Converted", value:"Closed-Not Converted"},
    ]; 
    
    get statusOptions() {
        return this.lstStatus;
    }

    handleInputChange(event){
        console.log(event);
        console.log(event.target);
        let name_ = event.target.name;
        let value_ = event.target.value;

        this.lead = {...this.lead, [name_]:value_};
        console.log(this.lead);
    }

    createLead(){
        const fields = {}
        // console.log('obj fields empty');
        // console.log(fields);

        fields[FirstName.fieldApiName] = this.lead.FirstName;
        fields[LastName.fieldApiName] = this.lead.LastName;
        fields[Company.fieldApiName] = this.lead.Company;
        fields[Status.fieldApiName] = this.lead.Status;

        console.log('obj fields montado');
        console.log(fields);

        const recordInput = {apiName: Lead.objectApiName, fields};

        console.log('recordInput Montado');
        console.log(recordInput);

        createRecord(recordInput).then((event) => {
            this[NavigationMixin.Navigate]({
                type: "standard__recordPage",
                attributes: {
                    recordId: event.id,
                    objectApiName: 'Lead',
                    actionName: "view",
    
                }
            });

            const confirm = new ShowToastEvent({
                title:'Created Lead',
                message: 'Lead Id: ' + event.id,
                variant: 'success'
            });

            this.dispatchEvent(confirm);
            }).catch((error) => {
                const erro = new ShowToastEvent({
                    title:'Error',
                    message: error.body.message, 
                    variant: 'error'
                });

                this.dispatchEvent(erro);
            }
        )
    }
}