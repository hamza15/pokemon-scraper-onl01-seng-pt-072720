class Pokemon
  
<<<<<<< HEAD
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:nil, name:, type:, db:)
=======
  
  def initialize(id=nil, name, type, db)
>>>>>>> 94699fa33a7ca10fa7aee485b4f5793fe88da3af
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
<<<<<<< HEAD
  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon
      (name, type)
      VALUES (?, ?)
    SQL
    
    db.execute(sql, name, type)
    @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
  
  def self.find(id, db)
    sql = <<-SQL
      SELECT * FROM pokemon
      WHERE id = ?
    SQL
    
    db.execute(sql, id).map do |pokemon|
      id = pokemon[0]
      name = pokemon[1]
      type = pokemon[2]
    Pokemon.new(id: id, name: name, type: type, db: db)
  end.first
end
=======
  def self.save
    sql = <<-SQL
      INSERT INTO pokemon
      (name, type, db)
      VALUES
      (?, ?, ?)
    SQL
    
    DB[:conn].execute(sql, self.name, self.type, self.db)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end
>>>>>>> 94699fa33a7ca10fa7aee485b4f5793fe88da3af
end
