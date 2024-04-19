select * from contacts;

select * from category;

select * from subcategory;

select * from campaign;

select sum(backers_count) as backers_count from campaign as backers_count;

select campaign.cf_id, campaign.company_name, contacts.email 
from campaign
join contacts on campaign.contact_id = contacts.contact_id
;

select campaign.cf_id, campaign.pledged, subcategory.subcategory 
from campaign
join subcategory on campaign.subcategory_id = subcategory.subcategory_id
where outcome = 'successful';

select subcategory.subcategory, campaign.outcome, count(outcome)
from campaign
join subcategory on campaign.subcategory_id = subcategory.subcategory_id
group by subcategory.subcategory_id, campaign.outcome
order by subcategory.subcategory
;