class Pokemon
  @@all = []
 
  def initialize(id, name, type)
    @id = id
    @name = name
    @type = type
    @@all << self
  end
  
   def self.all
    @@all
  end
  
  def self.save(id, name, type, database_connection)
    database_connection.execute("INSERT INTO pokemon (id, name, type) VALUES (?, ?, ?)",id, name, type)
  end
 
end

#For our purposes the Pokemon class is responsible for saving, adding, removing, or changing anything about each Pokémon. Your scraper is not responsible for knowing anything about them.
