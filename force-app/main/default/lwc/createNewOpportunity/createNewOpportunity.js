import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class CreateNewOpportunity extends LightningElement {
    recordId; // Get a record ID

    handleSuccess(event) {
        console.log(event);
        
        console.log('🟩 Created opportunity! =D');
        console.log('Id: ' + event.detail.id);
 
        this.recordId = event.detail.id;

        // Show toast event
        const msg = new ShowToastEvent({
            title: 'Success',
            message: `Opportunity [ Id: ${this.recordId} ] created successfully - Yrra =D`,
            variant: 'success'
        })

        // Run the ShowToastEvent
        this.dispatchEvent(msg);
    }
}