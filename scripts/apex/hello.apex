// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Everita';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);

----------------------------------------------------------------
------------------------DATA STRUCTURES-------------------------
----------------------------------------------------------------



----LISTS-----


1. Create list of Integer

List <Integer> integers = new List<Integer>();
System.debug (integers);

List<Integer> integers = new List<Integer>{10,20,30,40,50,60,70,90,100};
System.debug (integers);


2. Create list of Strings

List<String> employees = new List<String>{'James', 'Sirius', 'Remus'};
employees.add('Hannah');
System.debug(employees);

3.Access elements from the List
List<Integer> integers = new List<Integer>{10,20,30,40,50,60,70,90,100};
System.debug (integers[4]);

16:44:31.200 (200929546)|USER_DEBUG|[2]|DEBUG|50

for (Integer i=0; i<9; i++){
    System.debug(integers.get(i));
}
16:44:31.200 (200992729)|USER_DEBUG|[4]|DEBUG|10
16:44:31.200 (201006595)|USER_DEBUG|[4]|DEBUG|20
16:44:31.200 (201017051)|USER_DEBUG|[4]|DEBUG|30
16:44:31.200 (201026462)|USER_DEBUG|[4]|DEBUG|40
16:44:31.200 (201034467)|USER_DEBUG|[4]|DEBUG|50
16:44:31.200 (201044024)|USER_DEBUG|[4]|DEBUG|60
16:44:31.200 (201052122)|USER_DEBUG|[4]|DEBUG|70
16:44:31.200 (201061718)|USER_DEBUG|[4]|DEBUG|90
16:44:31.200 (201070406)|USER_DEBUG|[4]|DEBUG|100

4. add element at a particular Index

add(0,1)    [a], a
List<Integer> integers = new List<Integer>{10,20,30,40,50,60,70,90,100};
integers.add(2,25);
System.debug(integers);

16:43:41.16 (17333188)|USER_DEBUG|[3]|DEBUG|(10, 20, 25, 30, 40, 50, 60, 70, 90, 100)

addAll()
List<String> olds = new List <String>{'Minerva', 'Albus', 'Molly'};
System.debug(olds);
List<String> news = new List <String>{'Ron', 'Neville', 'Luna','Albus'};
System.debug(news);
olds.addAll(news);
System.debug(olds);

16:55:31.209 (210361274)|USER_DEBUG|[2]|DEBUG|(Minerva, Albus, Molly)
16:55:31.209 (210430057)|USER_DEBUG|[4]|DEBUG|(Ron, Neville, Luna, Albus)
16:55:31.209 (210504034)|USER_DEBUG|[6]|DEBUG|(Minerva, Albus, Molly, Ron, Neville, Luna, Albus)

remove(i)   [a]
List<Integer> integers = new List<Integer>{10,20,30,40,50,60,70,90,100};
integers.remove(3);
System.debug(integers);

16:43:01.201 (202323774)|USER_DEBUG|[3]|DEBUG|(10, 20, 30, 50, 60, 70, 90, 100)


clear()
List<Integer> integers = new List<Integer>{10,20,30,40,50,60,70,90,100};
System.debug(integers);
integers.clear();
System.debug(integers);

16:42:44.21 (22582295)|USER_DEBUG|[2]|DEBUG|(10, 20, 30, 40, 50, 60, 70, 90, 100)
16:42:44.21 (22668450)|USER_DEBUG|[4]|DEBUG|()


isEmpty()     t/f
List<Integer> integers = new List<Integer>{10,20,30,40,50,60,70,90,100};
System.debug(integers.isEmpty());
integers.clear();
System.debug(integers.isEmpty());

16:41:57.228 (229716904)|USER_DEBUG|[2]|DEBUG|false
16:41:57.228 (229775937)|USER_DEBUG|[4]|DEBUG|true


size()
List<Integer> integers = new List<Integer>{10,20,30,40,50,60,70,90,100};
System.debug(integers.size());

16:38:08.216 (217195036)|USER_DEBUG|[2]|DEBUG|9


contains()
List<String> employees = new List<String>{'James', 'Sirius', 'Remus'};
System.debug(employees.contains('James'));

16:40:48.301 (303044154)|USER_DEBUG|[2]|DEBUG|true


sort()
List<Integer> integers = new List<Integer>{1,25,85,14,10,39,2,0};
System.debug(integers);
16:47:07.14 (15228550)|USER_DEBUG|[2]|DEBUG|(1, 25, 85, 14, 10, 39, 2, 0)

integers.sort();
System.debug(integers);
16:47:07.14 (15297169)|USER_DEBUG|[4]|DEBUG|(0, 1, 2, 10, 14, 25, 39, 85)

List<String> employees = new List<String>{'James', 'Albus', 'Snape', 'Sirius', 'Remus'};
System.debug(employees);
employees.sort();
16:48:35.201 (202545643)|USER_DEBUG|[2]|DEBUG|(James, Albus, Snape, Sirius, Remus)

System.debug(employees);
16:48:35.201 (202616177)|USER_DEBUG|[4]|DEBUG|(Albus, James, Remus, Sirius, Snape)

equals(list2)
List<Integer> integers = new List<Integer>{1,25,85,14,10,39,2,0};
List<Integer> numbers = new List<Integer>{1,25,85,14,10,39,2,0};
System.debug(integers.equals(numbers));

16:57:50.17 (18687418)|USER_DEBUG|[3]|DEBUG|true

getSObjectType()
List <Account> accounts = [SELECT Name from Account ORDER BY Name ASC LIMIT 5 ];
System.debug(accounts);
System.debug(accounts.getSObjectType());
17:04:00.217 (448186111)|USER_DEBUG|[3]|DEBUG|Account

hashCode()
List <Account> accounts = [SELECT Name from Account ORDER BY Name ASC LIMIT 5 ];
System.debug(accounts);
System.debug(accounts.hashCode());

indexOf()
List<Integer> integers = new List<Integer>{1,25,85,14,10,39,2,0};
System.debug(integers.indexOf(39));
21:00:31.18 (21062488)|USER_DEBUG|[2]|DEBUG|5

clone()
List <Account> accounts = [SELECT Name from Account ORDER BY Name ASC LIMIT 2 ];
System.debug(accounts);
List <Account> accounts2 = new List <Account>();
accounts2 = accounts.clone();
System.debug(accounts2);
21:06:05.16 (23343929)|USER_DEBUG|[2]|DEBUG|(Account:{Name=Burlington Textiles Corp of America, Id=0017R00002nYnChQAK}, Account:{Name=Dickenson plc, Id=0017R00002nYnCjQAK})
21:06:05.16 (23999759)|USER_DEBUG|[5]|DEBUG|(Account:{Name=Burlington Textiles Corp of America, Id=0017R00002nYnChQAK}, Account:{Name=Dickenson plc, Id=0017R00002nYnCjQAK})


set()
List<Integer> integers = new List<Integer>{1,25,85,14,10,39,2,0};
integers.set(2,45);
System.debug(integers);
21:12:53.17 (18833106)|USER_DEBUG|[3]|DEBUG|(1, 25, 45, 14, 10, 39, 2, 0)


Sort a list of SObject records based on field value

List <Account> accounts = new List <Account>();
accounts.add(new Account (name='Hooli', NumberOfEmployees = 50, AnnualRevenue = 10000
));

accounts.add(new Account (name = 'Pied Piper', NumberOfEmployees = 20, AnnualRevenue = 5000
));

accounts.add(new Account (name ='Aviato', NumberOfEmployees = 15000, AnnualRevenue = 15000
));
insert accounts;

List <Account> accounts2 = [SELECT Name, NumberOfEmployees, AnnualRevenue FROM Account];
System.debug('Initial list of accounts' + accounts);
System.debug('2nd list of accounts' + accounts2);

Custom comparator

class Employee{
    Integer id;
    String name;

    public Employee(Integer Id, String name){
        this id=id;
        this.name=name;
    }

    List <Employee> employees = new List<Employee>();
    employees.add(new Employee (1, 'Richard'));
    employees.add(new Employee (2, 'Danesh'));
    employees.add(new Employee (3, 'Monica'));
    employees.add(new Employee (4, 'Erlich'));

    System.debug('Initial list:' + employees );
    
    System.debug('Sorting employees...')

    /* employees.sort() will not work - 2 fields, SF cannot identify which field to sort by
    Need to implement comparable interface */

class Employee implements Comparable{

    Integer id;
    String name;

    public Employee(Integer Id, String name){
        this id=id;
        this.name=name;
    }

    Integer compareTo(Object anotherObject){
        Employee secondEmployee = (Employee) anotherObject;

        if (id < secondEmpoyee.id){
            return -1;
        } else if (id > secondEmployee.id){
            return 1;
        }
        return 0;
    }
}

    List <Employee> employees = new List<Employee>();
    employees.add(new Employee (3, 'Monica'));
    employees.add(new Employee (4, 'Erlich'));
    employees.add(new Employee (2, 'Danesh'));
    employees.add(new Employee (1, 'Richard'));

    System.debug('Initial list:' + employees );
    
    System.debug('Sorting employees...');

    employees.sort();
    System.debug('Sorted list: ' + employees);


