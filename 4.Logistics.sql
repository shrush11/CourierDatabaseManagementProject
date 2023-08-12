SELECT * FROM `project mini`.logistics;
Select count(Disp_Id1),modeoftransport from logistics group by(modeoftransport);
Select * from dispatch where Disp_Id In (Select Disp_Id1 from logistics where warehouse="yes");
Select c.cust_id_fk,c.city as dest_city,l.city as curr_city from city_st as c join dispatch as d 
on (c.cust_id_fk=d.Cust_id) join logistics as l on (d.Disp_Id=l.Disp_Id1);
Select c.Cust_id,c.F_name,c.L_name,l.log_id,l.modeoftransport,l.warehouse,l.city as Current_Location,l.onroad from customer as c join dispatch as d 
on (c.Cust_id=d.cust_id and c.F_name="Smith") join logistics as l on (d.Disp_Id=l.Disp_Id1); 
