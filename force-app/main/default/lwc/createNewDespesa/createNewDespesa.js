import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class CreateNewDespesa extends LightningElement {
    recordId;

    handleSuccess(event) {
        console.log('🟩 Created account! =D');
        console.log('Id: ' + event.detail.id)
    
        this.recordId = event.detail.id;
    
        // Creating a ShowToastEvent
        const msg = new ShowToastEvent({
            title: 'Success',
            message: `Despesa [ Id: ${this.recordId} ] created successfully - Yrra =D`,
            variant: 'success'
        });

        // Run the ShowToastEvent
        this.dispatchEvent(msg);
    }
}