# inner joining:
	# 2 tables will have a common field to result in a combined table with matching data
	# a reference is used to collect the column of the table
    # eg:
		# tb1: id,fname,lname,age-- refernce-a
        # tb2: prof,loc,id,salary-- reference-b
        # collect fname,lname,age,prof,salary
			#select a.fname,a.lname,a.age,b.prof,b.salary from tb1 a join tb2 b on (a.id=b.id);
	use db_demo2;
    select a.name,a.age,a.loc,b.dat,b.amount from custom_csv a join order_csv b on (a.id=b.id);
    select a.*,b.dat,b.amount from custom_csv a join order_csv b on (a.id=b.id);
    select a.name,a.age,a.loc,a.salary,b.dat,b.amount from custom_csv a join order_csv b on (a.id=b.id) where a.salary>2000;
    select a.name,a.age,a.loc,b.dat,b.amount from custom_csv a join order_csv b on (a.id=b.id) order by a.age desc limit 1;
    select a.name,a.age,a.loc,b.dat,b.amount from custom_csv a join order_csv b on (a.id=b.id) order by b.dat desc limit 1;