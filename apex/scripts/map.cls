Map<String, String> mapPerson = new Map<String, String>();
mapPerson.put('Rodrigo', 'Araujo');
string lastName = mapPerson.get('Rodrigo');
system.debug('🟢' + lastName);






Cachorro cachorro1  = new Cachorro();
cachorro1.Nome      = 'Magrelinho';
cachorro1.Raca      = 'SRD';
cachorro1.Cor       = 'Preto';

Cachorro cachorro2  = new Cachorro();
cachorro2.Nome      = 'Madruguinha';
cachorro2.Raca      = 'Shitzu';
cachorro2.Cor       = 'Branco';

List<Cachorro> lstCachorro = new List<Cachorro>();
lstCachorro.add(cachorro1);
lstCachorro.add(cachorro2);

System.debug('lstCachorro:'+lstCachorro);

Map<String, Cachorro> mapNomeInfo = new Map<String, Cachorro>();
mapNomeInfo.put('Magrelinho', cachorro1);
mapNomeInfo.put('Madruguinha', cachorro2);

System.debug('mapNomeInfo:'+mapNomeInfo);





Map<String, Decimal> mapLength = new Map<String, Decimal>();
mapLength.put('Rodrigo', 1.80);
decimal length = mapLength.get('Rodrigo');
system.debug('🟢' + mapLength);