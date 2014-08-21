require 'json'

class MongoAccessor

  def initialize(hostname, port)
    @client =  Mongo::MongoClient.new(hostname, port)
  end

  def list(database, collection_name)
    db = @client.db(database)
    db[collection_name].find.to_a.to_json
  end

  def find_by_id(database, collection_name,id) 
    db = @client.db(database)
    db[collection_name].find('_id' => BSON::ObjectId.from_string(id)).to_a.to_json
  end 

  def update_by_id(database, collection_name, id)
    db = @client.db(database)
    db[collection_name].update({'_id' => BSON::ObjectId.from_string(id)}, {"$set" => {"welcome" => "Hello There" } })
    "[{condition :'success'}]"
  end

  def delete_by_id(database, collection_name, id)
    db = @client.db(database)
    db[collection_name].remove('_id' => BSON::ObjectId.from_string(id))
    "[{condition :'success'}]"
  end
end
