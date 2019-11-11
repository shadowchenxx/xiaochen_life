```sql
--这是一行测试代码
select split(regexp_extract(user_agent,'\\;\\\s(.*?)\\;',1),' ')[0] as system_version,
    count(1) as pv
from ods.apache
where ds = '2019-11-10'
  and hour = '16'
  and lower(path) like '%/mobileapi/i/device/update%'
  and user_agent not like 'LR2013Fanli%'
group by split(regexp_extract(user_agent,'\\;\\\s(.*?)\\;',1),' ')[0];
```


--这是一行测试文本。new branch
