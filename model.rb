require './configuration.rb'


MongoModel = MongoAccessor.new('127.0.0.1',27017) 

def list(db,collection)
	MongoModel.list db,collection
end 

def create(db,collection)
	MongoModel.create db,collection
end	

def read(db,collection,id)
	MongoModel.findById db,collection,id 
end

def update(db,collection,id)
	MongoModel.updateById db,collection,id
end	

def delete(db,collection,id)
	MongoModel.deleteById db,collection,id
end 
