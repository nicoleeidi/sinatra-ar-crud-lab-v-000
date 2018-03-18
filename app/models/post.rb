#Placeholder for a model

class Post < ActiveRecord::Base
  @@all= []
  def initialize(args)
    @name=args[:name]
    @content=args[:content]
    @@all << self
  end
  def self.all
    @@all
  end
end
