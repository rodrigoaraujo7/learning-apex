import { LightningElement, wire } from 'lwc';
import getListDespesa from '@salesforce/apex/DespesaController.getListDespesa'

export default class ViewAllDespesas extends LightningElement {
    despesa;
    error;

    columns = [
        {label: 'Name', fieldName: 'Nome__c'},
        {label: 'Data', fieldName: 'Data__c'},
        {label: 'Valor Unitario', fieldName: 'ValorUnitario__c'},
        {label: 'Valor Total', fieldName: 'Valor__c'}
    ]
    
    @wire(getListDespesa)wiredDespesa({error, data}) {
        if(data) {
            this.despesa = data;
            this.error = undefined;
            console.log(data)
        } else if(error) {
            this.despesa = undefined;
            this.error = error;
            console.log(error)
        }
    }
}