## Reactive
An ORM inspired by Ruby on Rails' Active Record. Reactive uses complex SQL queries to communicate with a SQLite Database. By manipulating the data retrieved, Reactive creates objects with simplified methods (shown below) for effective communication between developer and database.

## Setup 
Reactive uses SQLite3 as its database. Please follow the link and download SQLite3 before using Reactive.

## Methods and Associations

all - returns all rows within the object's table
find(id) - returns an SQLObject with the given id
where(params) - takes a hash as an argument and returns an array of SQL objects that follow the key/value pairs given.
insert - inserts a new row into the database with the SQLObject's attributes along with a new id
update - updates the SQLObject with its current attributes
save - inserts or updates the SQLObject
belongs_to(name, options) - creates a BelongsToOptions instance to create an association between two database tables; then, it creates an association with 'name' to access the associated object
has_many(name, options) - creates an HasManyOptions instance to create an association between two database tables; then, it creates an association with 'name' to access the associated objects
has_one_through(name, through_name, source_name) - creates an association between two objects through an existing assocation. Goes through two ::belongs_to methods in order to access the associated object. Then, defines a method as an association with 'name' to access the associated object.
