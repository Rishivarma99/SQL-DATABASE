
#TO REMOVE ZEROS IN SQL FOR ANY NUMBER 

select replace(2006,'0','') ; 

select 
case when 11<12 
then "11 is small"
end ; 

#date_format()
select now() ; 
select DATE_FORMAT( now() , "%Y-%m-%d:%a:%b:%h:%i:%s");