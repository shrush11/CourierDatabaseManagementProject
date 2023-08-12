SELECT * FROM `project mini`.delivery;
Select p.Cust_id1,p.Pac_wt,p.typeofpack,p.dateofbook,d.Del_id,d.del_personname,d.del_phno 
from package as p join delivery as d on (p.Disp_Id=d.Disp_id2) Order By (Cust_id1) ASC;
Select l.Disp_Id1,l.city as Current_Location,d.Del_id,d.del_personname,d.del_phno 
from logistics as l join delivery as d on (l.Disp_Id1=d.Disp_id2);