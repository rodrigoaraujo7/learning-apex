trigger AccountTrigger on Account(before insert) {
    for(Account itemAcc : Trigger.new) {
        if(itemAcc.ShippingAddress == null) {
            itemAcc.ShippingCity = itemAcc.BillingCity;
            itemAcc.ShippingCountry = itemAcc.BillingCountry;
            itemAcc.ShippingPostalCode = itemAcc.BillingPostalCode;
            itemAcc.ShippingState = itemAcc.BillingState;
            itemAcc.ShippingStreet = itemAcc.BillingStreet;
        }
    }
}