require 'json'

class MongoAccessor

  def initialize(hostname,port)
    @client =  Mongo::MongoClient.new(hostname,port)
  end

  def list(database,collectionName)
    db = @client.db(database)
    db[collectionName].find.to_a.to_json
  end

  def findById(database,collectionName,id) 
    db = @client.db(database)
    db[collectionName].find('_id' => BSON::ObjectId.from_string(id)).to_a.to_json
  end 

  def updateById(database,collectionName,id)
    db = @client.db(database)
    db[collectionName].update({'_id' => BSON::ObjectId.from_string(id)},{"$set" => {"welcome" => "Hello There"}})
    "[{condition :'success'}]"
  end	

  def deleteById(database,collectionName,id)
    db = @client.db(database)
    db[collectionName].remove('_id' => BSON::ObjectId.from_string(id))
    "[{condition :'success'}]"
  end

end 	
