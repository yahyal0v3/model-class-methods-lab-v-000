class Captain < ActiveRecord::Base
  has_many :boats
  has_many :classifications, through: :boats

  def self.catamaran_operators
    self.includes(:classifications).where(classifications: {name: "Catamaran"})
  end

  def self.sailors
    self.includes(:classifications).where(classifications: { name: 'Sailboat' })
  end

  def self.talented_seafarers
  end

  def self.non_sailors
  end

  def self.my_all
  end
end
