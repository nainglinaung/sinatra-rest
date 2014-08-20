require './configuration.rb'


def list(db,collection)
	mongoList db,collection
end 

def create(db,collection)
	params.inspect
end	

def read(db,collection,id)
	mongoFindById db,collection,id 
end

def update(db,collection,id)
	
end	

def delete(db,collection,id)
	
end 
