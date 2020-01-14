class Artist

  attr_reader :name, :years_experience
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
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map(&:gallery)
  end

  def cities
    galleries.city
  end

  def self.total_experience
    all.select(&:years_experience).sum
  end

  def self.most_prolific
    all.max_by { |artist| artist.paintings.length / artist.years_experience }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, artist, gallery)
  end
end
