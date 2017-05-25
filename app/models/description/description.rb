class Description < ActiveRecord::Base
  belongs_to :item

  def self.model_name
    ActiveModel::Name.new(self, nil, "Description")
  end
  
end
