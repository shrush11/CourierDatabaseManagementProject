SELECT * FROM `project mini`.dispatch;
Select c.Cust_id,c.F_name,c.L_name,c.Phone_no,d.Disp_Id,d.dis_date,d.dis_time,d.estimateddeldate
 from customer as c join dispatch as d on (c.Cust_id=d.Cust_id);
Select p.Pac_Id,p.Pac_wt,p.dateofbook,p.typeofpack,d.Disp_Id,d.dis_date,d.dis_time,d.estimateddeldate
from package as p join dispatch as d on 
(p.Disp_Id=d.Disp_Id AND (typeofpack="Luggage" or typeofpack="Medical Supplies"));
Update dispatch set estimateddeldate="2021-08-07" where Cust_id=104;
Select * from Dispatch where Cust_id=105;