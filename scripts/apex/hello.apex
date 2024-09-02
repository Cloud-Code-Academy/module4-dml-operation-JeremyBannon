// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

/*List<Opportunity> opptList = new List<Opportunity>();
Opportunity oppty1 = new Opportunity(Name = 'Donut Shop4 - New Biz', CloseDate = Date.today().addDays(7), StageName = 'Prospecting', AccountId = '001Hr0000234f06IAA');
Opportunity oppty2 = new Opportunity(Name = 'Donut Shop5 - New Biz', CloseDate = Date.today().addDays(14), StageName = 'Prospecting', AccountId = '001Hr0000234f06IAA');
Opportunity oppty3 = new Opportunity(Name = 'Donut Shop6 - New Biz', CloseDate = Date.today().addDays(21), StageName = 'Prospecting', AccountId = '001Hr0000234f06IAA');
opptList.add(oppty1);
opptList.add(oppty2);
opptList.add(oppty3);

insert opptList;


Opportunity opp = [SELECT Id, Name FROM Opportunity WHERE Name = 'Donut Shop4 - New Biz'];
opp.CloseDate = Date.today();
upsert opp;
*/
Account masterAcc = [SELECT Id, Name, Phone FROM Account WHERE Name = 'Propel1'];

Account mergeAcc = [SELECT Id, Name, Phone FROM Account WHERE Name = 'Propel'];

merge masterAcc mergeAcc;