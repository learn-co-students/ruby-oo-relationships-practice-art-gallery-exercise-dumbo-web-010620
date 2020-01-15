class Artist

  attr_reader :name, :years_experience

  @@all = []
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|p| p.artist == self}
  end

  def galleries
    paintings.map(&:gallery)
  end

  def cities
    galleries.map(&:city)
  end

  def self.total_experience
    self.all.map {|x| x.years_experience}.sum
  end

  def self.most_prolific
    self.all.map {|x| x.years_experience}.max
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
