class Description < ActiveRecord::Base
  has_and_belongs_to_many :items

  def self.model_name
    ActiveModel::Name.new(self, nil, "Description")
  end

end
