--Q1. what is the sales trend over time?
use chris
select * from [E-COMMERCE DATASET]
select YEAR(InvoiceDate)as year,
FORMAT(InvoiceDate,'MMM') as month,sum(quantity*unitprice)as totalsales
from [E-COMMERCE DATASET]
group by YEAR(InvoiceDate), month(InvoiceDate), format(InvoiceDate,'MMM')
order by totalsales desc;

--Q2. Totalsales for each product ( StockCode)
select stockcode, sum(quantity * unitprice) as product_sales
from [E-COMMERCE DATASET]
group by StockCode

--Q3. Which country has the highest number of customers
select country, APPROX_COUNT_DISTINCT (customerID)as number_of_customers
from [E-COMMERCE DATASET]
group by Country
order by number_of_customers desc

--Q4. What areb the top ten(10) product 
select top 10 stockcode, sum (quantity*unitprice)as totalsales
from [E-COMMERCE DATASET]
group by stockcode
order by totalsales desc

--Q5.What are the distribution of sales across diffrent countries?
select country, sum(quantity*unitprice)as totalsaleas
from [E-COMMERCE DATASET]
group by country