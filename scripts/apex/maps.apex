----------------------------------------------------------------
------------------------  MAPS   -------------------------------
----------------------------------------------------------------

Map - a collection of key - value pairs where each key maps to a single value

Keys and Values can be of any data type:
    Primitive types
    collections 
    sObjecs 
    user defined types

Each key inside the Map is unique.

        KEY            VALUE
    Employee Id |   Employee Name
        1       |   Richard
        2       |   Monica
        3       |   Elrich




-------   Create a Map of Employees   ---------------

Map <Integer, String> employeeMap = new Map <Integer, String>();
System.debug(employeeMap);

12:32:49.42 (43192629)|USER_DEBUG|[2]|DEBUG|{}


Map <Integer, String> employeeMap = new Map <Integer, String>{
    1 => 'Richard',
    2 =>  'Monica',
    3 => 'Elrich',
    4 => 'Jared'
};
System.debug(employeeMap);

12:35:53.184 (184875573)|USER_DEBUG|[8]|DEBUG|{1=Richard, 2=Monica, 3=Elrich, 4=Jared}



--------------   Add elements to a Map   ----------------------

Map <Integer, String> employeeMap = new Map <Integer, String>();
System.debug(employeeMap);
employeeMap.put(1,'Elrich');
employeeMap.put(2,'Monica');
employeeMap.put(3,'Danesh');
employeeMap.put(4,'Gilfoyle');
System.debug(employeeMap);

12:38:42.235 (237116498)|USER_DEBUG|[7]|DEBUG|{1=Elrich, 2=Monica, 3=Danesh, 4=Gilfoyle}



--------------   Access elements from a Map   ----------------------

Map <Integer, String> employeeMap = new Map <Integer, String>{
    1 => 'Richard',
    2 =>  'Monica',
    3 => 'Elrich',
    4 => 'Jared'
};
System.debug(employeeMap);
System.debug('Employee with id 4 is: ' +  employeeMap.get(4));

12:41:17.20 (21570441)|USER_DEBUG|[7]|DEBUG|{1=Richard, 2=Monica, 3=Elrich, 4=Jared}
12:41:17.20 (21632228)|USER_DEBUG|[9]|DEBUG|Employee with id 4 is: Jared



--------------   Remove elements from Map   ----------------------

Map <Integer, String> employeeMap = new Map <Integer, String>{
    1 => 'Monica',
    2 => 'Richard',
    3 => 'Gilfoyle',
    4 => 'Elrich',
    5 => 'Greg' 
};
System.debug(employeeMap);

employeeMap.remove(5);
System.debug(employeeMap);

12:46:22.40 (41030365)|USER_DEBUG|[8]|DEBUG|{1=Monica, 2=Richard, 3=Gilfoyle, 4=Elrich, 5=Greg}
12:46:22.40 (41115704)|USER_DEBUG|[11]|DEBUG|{1=Monica, 2=Richard, 3=Gilfoyle, 4=Elrich}


--------------   Check if element is present in the Map   ----------------------

Map <Integer, String> employeeMap = new Map <Integer, String>{
    1 => 'Monica',
    2 => 'Richard',
    3 => 'Gilfoyle',
    4 => 'Elrich',
    5 => 'Greg' 
};
System.debug(employeeMap);
System.debug('Employee with id 3 is present in the Map:' + employeeMap.containsKey(3));
System.debug('Employee with id 6 is present in the Map:' + employeeMap.containsKey(6));

12:49:51.21 (22440111)|USER_DEBUG|[9]|DEBUG|{1=Monica, 2=Richard, 3=Gilfoyle, 4=Elrich, 5=Greg}
12:49:51.21 (22504017)|USER_DEBUG|[11]|DEBUG|Employee with id 3 is present in the Map:true
12:49:51.21 (22528841)|USER_DEBUG|[12]|DEBUG|Employee with id 6 is present in the Map:false




--------------------------   keySet()   ---------------------------

Get all the values from the Map
--------------------------------------------------------------------
Retained in Sets because keys are unique

Map <Integer, String> employeeMap = new Map <Integer, String>{
    1 => 'Monica',
    2 => 'Richard',
    3 => 'Gilfoyle',
    4 => 'Elrich',
    5 => 'Greg' 
};
System.debug(employeeMap);

Set <Integer> employeeIds = employeeMap.keySet();
System.debug(employeeIds);

12:55:45.20 (21987961)|USER_DEBUG|[8]|DEBUG|{1=Monica, 2=Richard, 3=Gilfoyle, 4=Elrich, 5=Greg}
12:55:45.20 (22091053)|USER_DEBUG|[11]|DEBUG|{1, 2, 3, 4, 5}



--------------------------   values()   ---------------------------

Get all the values from the Map
Retained in List because values can be duplicates
-------------------------------------------------------------------

Map <Integer, String> employeeMap = new Map <Integer, String>{
    1 => 'Monica',
    2 => 'Richard',
    3 => 'Gilfoyle',
    4 => 'Elrich',
    5 => 'Greg',
    6 => 'Monica' 
};
System.debug(employeeMap);
List <String> employeeNames = employeeMap.values();
System.debug(employeeNames);

13:00:57.44 (45783272)|USER_DEBUG|[9]|DEBUG|{1=Monica, 2=Richard, 3=Gilfoyle, 4=Elrich, 5=Greg, 6=Monica}
13:00:57.44 (45882936)|USER_DEBUG|[11]|DEBUG|(Monica, Richard, Gilfoyle, Elrich, Greg, Monica)



--------------------------   clear()   ---------------------------

Remove key-value pairs from the Map
-------------------------------------------------------------------

Map <Integer, String> employeeMap = new Map <Integer, String>{
    1 => 'Monica',
    2 => 'Richard',
    3 => 'Gilfoyle',
    4 => 'Elrich',
    5 => 'Greg',
    6 => 'Monica' 
};
System.debug(employeeMap);
employeeMap.clear();
System.debug(employeeMap);

13:04:50.23 (25114707)|USER_DEBUG|[9]|DEBUG|{1=Monica, 2=Richard, 3=Gilfoyle, 4=Elrich, 5=Greg, 6=Monica}
13:04:50.23 (25161891)|USER_DEBUG|[12]|DEBUG|{}



--------------------------   size()   ---------------------------

Get total number of key-value pairs
-------------------------------------------------------------------

Map <Integer, String> employeeMap = new Map <Integer, String>{
    1 => 'Monica',
    2 => 'Richard',
    3 => 'Gilfoyle',
    4 => 'Elrich',
    5 => 'Greg',
    6 => 'Monica' 
};
System.debug(employeeMap);
System.debug('Total elements inside a Map: ' + employeeMap.size());

13:07:02.23 (24724616)|USER_DEBUG|[9]|DEBUG|{1=Monica, 2=Richard, 3=Gilfoyle, 4=Elrich, 5=Greg, 6=Monica}
13:07:02.23 (24859623)|USER_DEBUG|[10]|DEBUG|Total elements inside a Map: 6




--------------------------   keySet()   ---------------------------










--------------------------   keySet()   ---------------------------










--------------------------   keySet()   ---------------------------


