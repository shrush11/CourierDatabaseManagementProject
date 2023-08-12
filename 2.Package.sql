update package set typeofpack="Luggage" where Cust_id1=105;
update package set typeofpack="Furniture" where Cust_id1=103;
Select count(Disp_Id),typeofpack from package group by (typeofpack);
Select * from package order by dateofbook ASC ;
Select * from package where Cust_id1 in (Select Cust_id_fk from pin_city where (city="Kolkata" or city="Mumbai"));
Select p.Pac_Id,p.Pac_wt,p.dateofbook,p.typeofpack,p.Disp_Id,p.Cust_id1,c.city 
from package as p join pin_city as c on (p.Cust_id1=c.Cust_id_fk and (c.city="Kolkata" or c.city="Mumbai"));