select cropType as cy,email as ema from CropDetsils  where email like '%.in%'
union
select name as name ,Mm_id  as m from requirment where Mm_id like '%1%';
select * from FormarDetails where email like 'moin@ok.com';

select * from FormarDetails;

select cropType,email from  CropDetsils  where cropType like '%r%' union select typep,Mm_id from requirment where typep like '%r%' OR  name like '%r%';