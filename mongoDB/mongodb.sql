use xavient;

db.getCollectionNames();

show tables

db.users.insert(
   {
      name: "anil",
      age: 26,
      status: "A"
   }
)

db.users.insertOne(
   {
      name: "Ravi",
      age: 26,
      status: "A"
   }
)

db.users.insertMany(
   [
     { name: "Manish", age: 29, status: "A", },
     { name: "Satish", age: 27, status: "A", },
     { name: "Harsh", age: 22, status: "D", }
   ]
)

db.users.find();

db.users.find().pretty();

db.users.find( { status: "A" } )

db.users.find( { age: { $lt: 30 } }, {status: ""} )

db.users.find( 
{ age: { $gt: 18 } },
{ name: "" , age: ""} )

AND :: db.users.find( { status: "A", age: { $lt: 30 } } )

OR : db.users.find(
   {
     $or: [ { status: "A" }, { age: { $lt: 30 } } ]
   }
)

In : db.users.find( { status: { $in: [ "P", "D" ] } } )

AND & Or : db.users.find(
   {
     status: "A",
     $or: [ { age: { $lt: 30 } }, { name: "manish" } ]
   }
)

Update :: 
	
	db.users.update(
	{ age: { $lt: 30 } },
	{ $set: { status: "U" } }
	)

	
	db.users.update(
	{ age: { $lt: 30 } },
	{ $set: { status: "U" } },
	{ multi: true }
	)
	
	db.users.updateOne(
	{ status: { $eq: "U" } },
	{ $set: { status: "Update" } }
	)
	
	db.users.updateMany(
	{ status: { $eq: "U" } },
	{ $set: { status: "Update" } }
	)
	
Delete:: 
		
db.test1.insert({
  "age": "26",
  "_id": "1",
  "test2": [
    {
      "age": "30",
      "name": "harish",
      "salary": "20000"
    },{
      "age": "35",
      "name": "aviral",
      "salary": "15000"
    }
  ],
  "name": "Anil",
  "salary": "25000"
})


