import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { NavigationMixin } from 'lightning/navigation'

export default class CreateNewLead extends NavigationMixin(LightningElement) {
    recordId;

    handleSuccess(event) {
        console.log('🟩 Created lead! =D');
        console.log('Id: ' + event.detail.id)
    
        this.recordId = event.detail.id;
    
        // Creating a ShowToastEvent
        const msg = new ShowToastEvent({
            title: 'Success',
            message: `Lead [ Id: ${this.recordId} ] created successfully - Yrra =D`,
            variant: 'success'
        });

        // Run the ShowToastEvent
        this.dispatchEvent(msg);

        // Mixin => Navigation Method
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: this.recordId,
                objectApiName: 'Lead',
                actionName: 'view'
            }
        })
    }

    // Clear input's value!
    handleClear() {
        const inputField = this.template.querySelectorAll(
            'lightning-input-field'
        );

        if(inputField) {
            inputField.forEach(field => {
                field.reset();
            })
        }
    }
}