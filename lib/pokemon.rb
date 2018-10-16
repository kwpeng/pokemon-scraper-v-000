class Pokemon
  @@all = []
 
  def initialize(name, type)
    @name = nanme
    @type = type
    @@all << self
  end
  
   def self.all
    @@all
  end
  
  def self.save(name, type, database_connection)
    database_connection.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
 
end

#For our purposes the Pokemon class is responsible for saving, adding, removing, or changing anything about each Pokémon. Your scraper is not responsible for knowing anything about them.
