import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { NavigationMixin } from 'lightning/navigation'

export default class ViewNewAccount extends NavigationMixin(LightningElement) {
    recordId; // Get a record ID

    handleSuccess(event) {
        console.log('🟩 Created account! =D'); // To I can view if account was really created
        console.log('Id: ' + event.detail.id)
    
        this.recordId = event.detail.id;
    
        // Creating a ShowToastEvent
        const msg = new ShowToastEvent({
            title: 'Success',
            message: `Account [ Id: ${this.recordId} ] created successfully - Yrra =D`,
            variant: 'success'
        });

        // Run the ShowToastEvent
        this.dispatchEvent(msg);

        // Mixin => Navigation Method /NOTE: go to this path when create new account!/
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: this.recordId,
                objectApiName: 'Account',
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