require 'json'


$config = {hostname:'127.0.0.1',port:27017}





def mongoList(database,collectionName)

 client =  Mongo::MongoClient.new($config[:hostname],$config[:port])
 db = client.db(database)
 collection = db[collectionName]

 collection.find.to_a.to_json

end


def mongoFindById(database,collectionName,id) 
 
 client =  Mongo::MongoClient.new($config[:hostname],$config[:port])
 db = client.db(database)
 collection = db[collectionName]
 collection.find('_id' => BSON::ObjectId.from_string(id)).to_a.to_json
  
end 

def mongoUpdateById(database,collection,id)
 
 client =  Mongo::MongoClient.new($config[:hostname],$config[:port])
 db = client.db(database)
 collection = db[collectionName]
 collection.update()
 "aaaa"
end	

