require './configuration.rb'


def list(db,collection)
	mongoList db,collection
end 

def create(db,collection)
	mongoCreate db,collection
end	

def read(db,collection,id)
	mongoFindById db,collection,id 
end

def update(db,collection,id)
	mongoUpdateById db,collection,id
end	

def delete(db,collection,id)
	mongoDeleteById db,collection,id
end 
