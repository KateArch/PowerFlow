--This test checks if the ltv is positive.

select
    *
   
from {{ ref("ltv") }} as l
where lifetime<0