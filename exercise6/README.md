## Exercise 6 - MongoDB

<ins> Obtain documents from campaign_id 3: </ins>  
db.inventory.find( { campaign_id: "3" } )

<ins> Obtain documents where queue_datetime is greater than 2020-08-19: </ins>  
db.inventory.find( { queue_datetime: { $gt: 2020-08-19T0:0:0.000Z } } )

