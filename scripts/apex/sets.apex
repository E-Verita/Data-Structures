----------------------------------------------------------------
--------------------------SETS---------------------------------
----------------------------------------------------------------

Set is unordered collection of elements that DO NOT contain duplicates

--------------  Set of Integers  ----------------

Set<Integer> integers = new Set<Integer>();
System.debug(integers);

08:51:04.18 (18841537)|USER_DEBUG|[2]|DEBUG|{}

Set<Integer> integers = new Set<Integer>{10,20,20,15,30,20,15,2};
System.debug(integers);

08:52:10.47 (48965370)|USER_DEBUG|[2]|DEBUG|{2, 10, 15, 20, 30}


----------------   Set of Strings   --------------

Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
System.debug(employees);

08:58:47.18 (19087443)|USER_DEBUG|[2]|DEBUG|{Danesh, Eric, Monica, Richard}


---------------  Add elements  --------------------

Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
employees.add('JD');
employees.add('Monica');
employees.add('Sarah');
employees.add('Gilfoyle');
System.debug(employees);

09:02:01.243 (245189125)|USER_DEBUG|[6]|DEBUG|{Danesh, Eric, Gilfoyle, JD, Monica, Richard, Sarah}


--------------- Accessing elements   -------------------

Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
for (String empl : employees){
    System.debug(empl);
}
09:03:56.18 (19554118)|USER_DEBUG|[3]|DEBUG|Monica
09:03:56.18 (19583048)|USER_DEBUG|[3]|DEBUG|Richard
09:03:56.18 (19595142)|USER_DEBUG|[3]|DEBUG|Eric
09:03:56.18 (19605999)|USER_DEBUG|[3]|DEBUG|Danesh


----------------  Remove elements ----------------------

Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
System.debug(employees);
employees.remove('Eric');
System.debug(employees);

09:06:23.288 (308432306)|USER_DEBUG|[2]|DEBUG|{Danesh, Eric, Monica, Richard}
09:06:23.288 (308642137)|USER_DEBUG|[4]|DEBUG|{Danesh, Monica, Richard}


-------------- Is element in the set?  ------------------

Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
System.debug('Set contains Monica: ' + employees.contains('Monica'));
System.debug('Set contains Edgar: ' + employees.contains('Edgar'));

09:09:09.46 (48617009)|USER_DEBUG|[2]|DEBUG|Set contains Monica: true
09:09:09.46 (48700360)|USER_DEBUG|[3]|DEBUG|Set contains Edgar: false



---------------   clear()  -----------------------------
Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
System.debug(employees);
employees.clear();
System.debug(employees);

09:11:22.257 (259163579)|USER_DEBUG|[2]|DEBUG|{Danesh, Eric, Monica, Richard}
09:11:22.257 (259220811)|USER_DEBUG|[4]|DEBUG|{}


---------------   isEmpty()  -----------------------------

Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
System.debug(employees.isEmpty());
employees.clear();
System.debug(employees.isEmpty());

09:12:17.22 (23516312)|USER_DEBUG|[2]|DEBUG|false
09:12:17.22 (23557748)|USER_DEBUG|[4]|DEBUG|true


---------------   size()  -----------------------------

Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
System.debug(employees.size());

09:13:27.26 (27353792)|USER_DEBUG|[2]|DEBUG|4


---------------   containsAll()  -----------------------------

Check if the whole list is a part of another Set

Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
List <String> employees2 = new List <String>{'Monica', 'Richard'};
System.debug('Whole list is a part of another Set: ' + employees.containsAll(employees2));

09:17:31.278 (279126227)|USER_DEBUG|[3]|DEBUG|Whole list is a part of another Set: true

Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
List <String> employees2 = new List <String>{'Monica', 'Edgar'};
System.debug(employees.containsAll(employees2));

09:19:15.214 (217191791)|USER_DEBUG|[3]|DEBUG|false


---------------   retainAll()  -----------------------------

Can pass both Lists and Sets!!!

Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
System.debug(employees);

Set <String> employeesToRetain = new Set <String>{'Monica', 'Danesh'};
employees.retainAll(employeesToRetain);
System.debug(employees);

Set <String> employeesToRetainVol2 = new Set <String>{'Monica', 'Victor'};
employees.retainAll(employeesToRetainVol2);
System.debug(employees);


09:28:20.20 (21205050)|USER_DEBUG|[2]|DEBUG|{Danesh, Eric, Monica, Richard}
09:28:20.20 (21401528)|USER_DEBUG|[5]|DEBUG|{Danesh, Monica}
09:28:20.20 (21484853)|USER_DEBUG|[9]|DEBUG|{Monica}



----------------------------------------------------------------------------------------
----------------------        CONVERTING SET TO LIST         ---------------------------
----------------------------------------------------------------------------------------

Set <String> employees = new Set <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
System.debug('Initial Set: ' + employees);

List<String> employeesList = new List <String>(employees);
System.debug('Converted List: ' + employeesList);
System.debug('Employee at index 2: ' + employeesList[2]);

09:44:32.20 (21845047)|USER_DEBUG|[2]|DEBUG|Initial Set: {Danesh, Eric, Monica, Richard}
09:44:32.20 (21942153)|USER_DEBUG|[5]|DEBUG|Converted List: (Monica, Richard, Eric, Danesh)
09:44:32.20 (21982935)|USER_DEBUG|[6]|DEBUG|Employee at index 2: Eric



----------------------------------------------------------------------------------------
----------------------        CONVERTING LIST TO SET         ---------------------------
----------------------------------------------------------------------------------------

List <String> employeeList = new List <String>{'Monica', 'Richard', 'Eric', 'Danesh'};
System.debug('Initial list: ' + employeeList);

Set <String> employeeSet = new Set <String>(employeeList);
System.debug('Coverted to Set: ' + employeeSet);

09:54:00.22 (23769133)|USER_DEBUG|[2]|DEBUG|Initial list: (Monica, Richard, Eric, Danesh)
09:54:00.22 (23881157)|USER_DEBUG|[5]|DEBUG|Coverted to Set: {Danesh, Eric, Monica, Richard}


List <String> employeeList = new List <String>{'Monica', 'Richard', 'Eric', 'Danesh', 'Monica', 'Richard'};
System.debug('Initial list: ' + employeeList);

Set <String> employeeSet = new Set <String>(employeeList);
System.debug('Coverted to Set: ' + employeeSet);

09:55:16.47 (48104800)|USER_DEBUG|[2]|DEBUG|Initial list: (Monica, Richard, Eric, Danesh, Monica, Richard)
09:55:16.47 (48194305)|USER_DEBUG|[5]|DEBUG|Coverted to Set: {Danesh, Eric, Monica, Richard}