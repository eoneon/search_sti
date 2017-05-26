class Item < ActiveRecord::Base
  has_and_belongs_to_many :descriptions
  #enable sublcass to use parent's route
  def self.model_name
    ActiveModel::Name.new(self, nil, "Item")
  end
end
