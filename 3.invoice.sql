SELECT * FROM `project mini`.invoice;
Select * from Invoice order by Amount Desc;
Select count(Cust_id2) as count,payment_status from invoice group by payment_status;
Select i.Invoice_no,c.Cust_id,c.F_name,c.L_name,c.Phone_no,c.email_id,c.modeOfPay,i.amount,i.payment_status,
p.Pac_wt,p.typeofpack,d.estimateddeldate from invoice as i join customer as c 
on (i.Cust_id2=c.Cust_Id and i.payment_status="paid") join dispatch as d 
on (c.Cust_Id= d.Cust_id) join package as p on (d.Disp_Id=p.Disp_Id);
Select sum(Amount) as Total,max(Amount) as Max_Amount, 
min(Amount) as Min_Amount, avg(Amount) as Average from Invoice;
Select count(Cust_id2) as count,payment_status from 
invoice group by payment_status having count(Cust_id2)>2;
Select i.Invoice_no,i.amount,i.payment_status,p.Pac_id 
from invoice as i join package as p on (i.Cust_id2=p.Cust_id1 and p.Pac_Id=102);