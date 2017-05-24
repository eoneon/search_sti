class Item < ActiveRecord::Base
  #enable sublcass to use parent's route
  def self.model_name
    ActiveModel::Name.new(self, nil, "Item")
  end
end
