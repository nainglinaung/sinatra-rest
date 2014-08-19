require './configuration.rb'


def list(db,collection)
	mongoList db,collection
	print "This is #{db} and this is #{collection}"

end 

def create(params)
	puts params.inspect
end	

def read(params)
	puts params.inspect
end

def update(params)
	puts params.inspect
end	

def delete(params)
	puts params.inspect
end 
