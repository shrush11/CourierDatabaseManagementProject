SELECT * FROM `project mini`.customer;
Select c.Cust_id,c.F_name,c.L_name,c.Phone_no,c.email_id,c.Street,c.modeOfPay,c.Pincode,p.city,t.state,t.Country 
from customer as c join pincode_city as p on (c.Cust_id= p.cust_id_fk) join 
city_state as s on(p.cust_id_fk = s.cust_id) join state_country as t on (s.cust_id=t.cust_id_fk);
Select Cust_id,F_name,L_name,Phone_no,email_id,modeOfPay from customer 
where Cust_id IN (select cust_id_fk from state_country where country="INDIA");  
Select count(Cust_id) AS count , modeOfPay From customer group by modeOfPay
 having modeOfPay="Credit Card" or modeOfPay="UPI" ;
