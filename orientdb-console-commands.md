# Working with orientdb.

* Run console.sh script
* Connect to database

```
CONNECT remote:host/dbname user password
```


## Working with classes (vertexes and edges)

* list of existing classes

```
LIST CLASSES
```

* create new class:

```sql
CREATE CLASS <class> [EXTENDS <super-class>] [CLUSTER <clusterId>*] [CLUSTERS <total-cluster-number>] [ABSTRACT]**
```

* create new class as Vertex

```
CREATE CLASS TestClass EXTENDS V
```

* create new class as edge

```
CREATE CLASS TestClass EXTENDS E
```

* delete class

```
DROP CLASS TestClass
```

* alter class name

```
ALTER CLASS TestClass NAME TestClassNew
```

* add cluster (automatically creates it)

```
ALTER CLASS TestClass ADDCLUSTER TestCluster
```

* remove cluster

```
ALTER CLASS TestClassNew REMOVECLUSTER TestCluster
```

* show class info

```
INFO CLASS TestClass
```

## Working with class properties

* create property

```sql
CREATE PROPERTY <class>.<property> <type> [<linked-type>|<linked-class>] [UNSAFE]**
```

types: boolean, integer, short, long, float, double, date, string, binary, embedded,
embeddedlist, embeddedset, embeddedmap, link, linklist, linkset, linkmap, byte
more on properties types http://orientdb.com/docs/last/-Create-Property.html


```
CREATE PROPERTY TestClass.name STRING
```

```
CREATE PROPERTY TestClass.tags EMBEDDEDLIST STRING
```

* remove property

```sql
DROP PROPERTY <class>.<property>
```

```
DROP PROPERTY TestClass.tags
```

* alter property

more http://orientdb.com/docs/last/SQL-Alter-Property.html

* change name

```
ALTER PROPERTY TestClass.name NAME fullname
```

set mandatory

```
ALTER PROPERTY TestClass.name MANDATORY TRUE
```


## Working with relaitions

### Use Case: Social Network for Restaurant Patrons

* create schema

```sql
CREATE CLASS Person EXTENDS V
CREATE CLASS Restaurant EXTENDS V
CREATE CLASS Eat EXTENDS E
```

* populate some data

```sql
CREATE VERTEX Person SET name='Luca'
CREATE VERTEX Restaurant SET name='Dante', type='Pizza'
```

* add constraits

```sql
CREATE PROPERTY Eat.out LINK Person
CREATE PROPERTY Eat.in LINK Restaurant
```

* add relations

```sql
CREATE EDGE Eat FROM ( SELECT FROM Person WHERE name='Luca' ) TO ( SELECT FROM Restaurant WHERE name='Dante ' )
```

* or use ids
```sql
CREATE EDGE Eat FROM #11:1 TO #12:0
```

* show relations

```sql
SELECT EXPAND( IN() ) FROM Restaurant WHERE name='Dante'
SELECT EXPAND( OUT() ) FROM Person WHERE name='Luca'

```





