// 1
trigger OpportunityTrigger on Opportunity(before insert) {
    for(Opportunity itemOpp : Trigger.new) {
        if(itemOpp.Amount >= 100000 && itemOpp.Amount <= 200000) {
            itemOpp.StageName = 'Value Proposition';
        } else {
            itemOpp.StageName = 'Prospecting';
        }
    }
}

// 2
trigger AccountTrigger on Account(before insert) {
    for(Account itemAcc : Trigger.new) {
        if(itemAcc.Industry	== 'Technology' || itemAcc.Industry == 'Finance') {
            itemAcc.Rating = 'Hot';
        }
    }
}

// 3
trigger ContactTrigger on Contact(before update) {
    for(Contact itemCnt : Trigger.new) {    
        String text = 'Modificado por: ' + itemCnt.LastModifiedById + '. Ultima modificação foi em: ' + itemCnt.LastModifiedDate;
        itemCnt.Description	= text;
    }
}

// 4
trigger ContactTrigger on Contact(before update) {    
    for(Contact itemCnt : Trigger.new) {    
        String text = 'Modificado por: ' + UserInfo.getUserName();
        itemCnt.Description	= text;
    }
}

// 5
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

// 6
trigger OpportunityTrigger on Opportunity(before insert) {
    for(Opportunity itemOpp : Trigger.new) {
        if(itemOpp.Amount > 500000) {
            itemOpp.StageName = 'Negotiation/Review';
        }   
    }
}

// 7
trigger AccountTrigger on Account(before insert) {
    for(Account itemAcc : Trigger.new) {
        if(itemAcc.AnnualRevenue == null) {
            itemAcc.AnnualRevenue.addError('Insira um valor!');
        } else if(itemAcc.AnnualRevenue < 100000) {
            itemAcc.Rating = 'Cold';
        } else if(itemAcc.AnnualRevenue >= 100000 && itemAcc.AnnualRevenue < 500000) {
            itemAcc.Rating = 'Warm';
        } else {
            itemAcc.Rating = 'Hot';
        }
    }
}