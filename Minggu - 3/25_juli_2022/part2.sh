// BOOKS, AUTHORS

// 1
> db.Books.find({ "authorID" : { "$in" : [1, 2] }})

// 2
> db.Books.find({"authorID" : 1}, { "_id" : true, "title" : true, "price" : true })