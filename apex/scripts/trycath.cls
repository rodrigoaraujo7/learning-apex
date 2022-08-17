try {
    Account newOpp = new Account();
    newOpp.Name = 'Rodrigo';
    insert newOpp;

    system.debug('🟣 Conta criada');
} catch(DmlException DMLtriste) {
    system.debug('🔴 Erro ao criar conta');
    system.debug('🔴' + DMLtriste);
    system.debug('🔴' + DMLtriste.getDmlMessage(0));
}

try {
    integer calc = 10/0;
    system.debug('🟣 Calc done successfully: ' + calc);
} catch(MathException CalcError) {
    system.debug('🔴 Error in calc!');
}