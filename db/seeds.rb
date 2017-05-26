require 'csv'

Description.delete_all
records = CSV.foreach('db/descriptions.csv').map do |row|
  Description.create!({
    :type => row[0],
    :kind => row[1],
    :description => row[2]
  })
end

puts "Seed finished"
puts "#{Description.count} descriptions created"
