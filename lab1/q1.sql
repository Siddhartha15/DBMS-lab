mysql> -- Question i)
mysql> -- creating faculty information table
mysql> create table facultyInfo(fid char(4), name varchar(30), age int(2), address varchar(50), mobileNo int(10), dateOfJoining date);
Query OK, 0 rows affected (0.03 sec)

mysql> -- creating student information table
mysql> create table studentInfo(sid char(4), name varchar(30), year int(4), age int(2), address varchar(50), pincode int(6));
Query OK, 0 rows affected (0.03 sec)

mysql> -- creating course information table
mysql> create table courseInfo(cid char(5),courseName varchar(30));
Query OK, 0 rows affected (0.03 sec)

mysql> -- creating courses offered table
mysql> create table courseOffered(fid char(4),facultyName varchar(30),course1 varchar(30), course2 varchar(30), course3 varchar(30));
Query OK, 0 rows affected (0.04 sec)

mysql> -- creating course registration table
mysql> create table courseReg(cid char(5), sid char(4));
Query OK, 0 rows affected (0.03 sec)

mysql> 
mysql> -- Question ii)
mysql> INSERT into studentInfo values("S101", "Shrinidhi", 2017, 20, "NITKMT3", 575025);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into studentInfo values("S102", "Shrinivas", 2017, 20, "NITKMT1", 575025);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into studentInfo values("S103", "Sai", 2017, 20, "NITKMT3", 575025);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into studentInfo values("S104", "Rahul", 2017, 20, "NITKMT1", 575025);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into studentInfo values("S105", "Rohan", 2017, 20, "NITKMT3", 575025);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into studentInfo values("S106", "Rohit", 2017, 20, "NITKMT1", 575025);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into studentInfo values("S107", "Vybhav", 2017, 20, "NITKMT3", 575025);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into studentInfo values("S108", "Avakash", 2017, 20, "NITKMT1", 575025);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into studentInfo values("S109", "Deepak", 2017, 20, "NITKMT1", 575025);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into studentInfo values("S110", "Nihal", 2017, 20, "NITKMT1", 575025);
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> select name from studentInfo where sid="S101";
+-----------+
| name      |
+-----------+
| Shrinidhi |
+-----------+
1 row in set (0.00 sec)

mysql> 
mysql> -- Question iii)
mysql> select name from studentInfo where name LIKE 'S%';
+-----------+
| name      |
+-----------+
| Shrinidhi |
| Shrinivas |
| Sai       |
+-----------+
3 rows in set (0.01 sec)

mysql> 
mysql> -- Question iv)
mysql> update studentInfo set name="Mathews" where sid="S105";
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> 
mysql> -- Question v)
mysql> INSERT into courseReg values("CO200", "S101");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO201", "S101");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO202", "S101");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into courseReg values("CO203", "S101");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO204", "S101");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> INSERT into courseReg values("CO200", "S102");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO201", "S102");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into courseReg values("CO202", "S102");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO203", "S102");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into courseReg values("CO204", "S102");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO205", "S102");
Query OK, 1 row affected (0.01 sec)

mysql> 
mysql> INSERT into courseReg values("CO200", "S103");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO201", "S103");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into courseReg values("CO202", "S103");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO203", "S103");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into courseReg values("CO204", "S103");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> INSERT into courseReg values("CO200", "S104");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into courseReg values("CO201", "S104");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO202", "S104");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into courseReg values("CO203", "S104");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO204", "S104");
Query OK, 1 row affected (0.01 sec)

mysql> 
mysql> 
mysql> INSERT into courseReg values("CO200", "S110");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO201", "S110");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into courseReg values("CO202", "S110");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO203", "S110");
Query OK, 1 row affected (0.01 sec)

mysql> 
mysql> INSERT into courseReg values("CO200", "S109");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO201", "S109");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT into courseReg values("CO202", "S109");
Query OK, 1 row affected (0.00 sec)

mysql> INSERT into courseReg values("CO203", "S109");
Query OK, 1 row affected (0.01 sec)

mysql> 
mysql> select * from courseReg where sid="S110";
+-------+------+
| cid   | sid  |
+-------+------+
| CO200 | S110 |
| CO201 | S110 |
| CO202 | S110 |
| CO203 | S110 |
+-------+------+
4 rows in set (0.00 sec)

mysql> 
mysql> -- Question vi)
mysql> delete from studentInfo where sid="S109";
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> -- Question vii)
mysql> alter table studentInfo add column hosteller char(3);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> 
mysql> -- Question viii)
mysql> rename  table studentInfo to sdetails;
Query OK, 0 rows affected (0.01 sec)

mysql> 
mysql> -- Question ix)
mysql> alter table sdetails modify address varchar(100);
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table facultyInfo modify address varchar(100);
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> 
mysql> -- Question x)
mysql> alter table sdetails drop column age;
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> 
