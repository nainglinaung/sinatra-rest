
$config = {hostname:'127.0.0.1',port:27017}





def mongoList(database,collectionName)


 client =  Mongo::MongoClient.new($config[:hostname],$config[:port])
 db = client.db(database)
 collection = db[collectionName]

 data = collection.find()
 print data.inspect
   
end
