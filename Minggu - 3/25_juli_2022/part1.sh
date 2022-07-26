// Create Collections
> db.createCollection('products')
{ ok: 1 }
> db.createCollection('product_types')
{ ok: 1 }
> db.createCollection('product_descriptions')
{ ok: 1 }
> db.createCollection('operators')
{ ok: 1 }
> db.createCollection('payment_methods')
{ ok: 1 }
> db.createCollection('users')
{ ok: 1 }
> db.createCollection('transaction_details')
{ ok: 1 }

 // 1
 >db.operators.insertMany([{ name : "Operator 1" },{ name : "Operator 2" },{ name : "Operator 3" }, { name : "Operator 4" }, { name : "Operator 5" }])

 // 2
 > db.product_types.insertMany([ { name: "Type 2" }, { name: "Type 4" }, { name: "Type 3" }])

//3, 4, 5
 > db.product_types.insertMany([
    { name : "Product 1", operator : ObjectId("62df71eab5c62e52cf4bc2fa"), product_type : ObjectId("62df723cb5c62e52cf4bc2fd"), code : 1, status : "Selling" },
    { name : "Product 2", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2fa")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2fd")}, code : 2, status : "Selling" }
    { name : "Product 3", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2f8")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2fe")}, code : 3, status : "Selling" },
    { name : "Product 4", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2f8")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2fe")}, code : 4, status : "Out of Stock" },
    { name : "Product 5", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2f8")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2fe")}, code : 5, status : "Out of Stock" },
    { name : "Product 6", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2fb")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2ff")}, code : 6, status : "Selling" },
    { name : "Product 7", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2fb")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2ff")}, code : 7, status : "Selling" },
    { name : "Product 8", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2fb")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2ff")}, code : 8, status : "Selling" }
    ])

 // 7
> db.payment_methods.insertMany([
    { name : "Payment 1" },
    { name : "Payment 2" },
    { name : "Payment 3" }
    ])

// 8
Atlas atlas-i5p7nm-shard-0 [primary] myFirstDatabase> db.users.insertMany([
    { name : "Ani", status : "Active", gender : "Female", dob : "1996-07-31" },
    { name : "Budi", status : "Active", gender : "Male", dob : "1992-08-31" },
    { name : "Danu", status : "Active", gender : "Female", dob : "1991-07-3" },
    { name : "Siti", status : "Active", gender : "Female", dob : "1998-01-1" },
    { name : "Arunika", status : "Active", gender : "Male", dob : "1996-05-30" }
])

// 9
> db.product.insertMany([
... { name : "Product 3", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2f8")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2fe")}, code : 3, status : "Selling" },
... { name : "Product 4", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2f8")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2fe")}, code : 4, status : "Out of Stock" },
... { name : "Product 5", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2f8")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2fe")}, code : 5, status : "Out of Stock" },
... { name : "Product 6", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2fb")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2ff")}, code : 6, status : "Selling" },
... { name : "Product 7", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2fb")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2ff")}, code : 7, status : "Selling" },
... { name : "Product 8", operator : { $ref: 'operators', $id : ObjectId("62df71eab5c62e52cf4bc2fb")}, product_type : { $ref : "product_types", $id : ObjectId("62df723cb5c62e52cf4bc2ff")}, code : 8, status : "Selling" }
... ])

// 10
> db.transaction_details.insertMany([
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b20")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a76") }, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b20")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a76") }, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b20")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a76") }, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b21"),}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a76") }, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b21"),}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a76") }, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b21"),}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a76") }, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b22")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a76") }, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b22")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a76") }, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b22")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a77")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b23")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a77")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b23")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a77")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b23")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a77")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b24")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a77")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b24")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a77")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b24")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a77")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b25")}, product : { $ref : 'products', $id : ObjectId("62df7e9a2b9f9c82ecfc7a77")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b25")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a78")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b25")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a78")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b26")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a78")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b26")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a78")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b26")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a78")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b27")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a79")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b27")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a79")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b27")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a79")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b28")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a79")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b28")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a79")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b28")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a79")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b29")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a79")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b29")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7a")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b29")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7a")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2a")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7a")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2a")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7a")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2a")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7b")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2b")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7b")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2b")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7b")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2b")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7b")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2c")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7c")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2c")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7c")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2c")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7c")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2d")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7c")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2d")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7d")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2d")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7d")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2e")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7d")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2e")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7d")}, qty : 1 },
... { transaction : { $ref : 'transactions', $id : ObjectId("62df82cd6ccccc199ec68b2e")}, product : { $ref : 'products', $id : ObjectId("62df7fea2b9f9c82ecfc7a7d")}, qty : 1 }
.. ])


// FIND User male
> db.users.find({"gender": "Male"})

// FIND ObjectId
> db.product.find({"_id": ObjectId("62df7fea2b9f9c82ecfc7a78")})

// COUNT FEMALE User
> db.users.find({ "gender" : "Female" }).count()

// SORT ASC
> db.users.aggregate([{ $sort : { "name" : 1 } }])

// FIND 5 Data
> db.product.find().limit(5)

//UPDATE PRODUCT 1
> db.product.updateOne({ "code" : 1 }, { $set : { "name" : "product dummy" } })

// DELETE PRODUCT 1
> db.products.deleteOne({ "code" : 1})

