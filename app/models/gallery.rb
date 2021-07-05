class Gallery

  attr_reader :name, :city

  @@all = []
  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|x| x.gallery == self}
  end

  def artists
    paintings.map(&:artist)
  end

  def artists_names
    artists.map(&:name)
  end

  def self.most_expensive_painting
    Painting.all.map(&:price).max
  end
    
end
