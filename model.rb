require './configuration.rb'


def list(db,collection)
	mongoList db,collection
end 

def create(db,collection)
	puts params.inspect
end	

def read(db,collection,id)
	findById db,collection,id 
	puts params.inspect
end

def update(db,collection,id)
	
end	

def delete(db,collection,id)
	
end 
