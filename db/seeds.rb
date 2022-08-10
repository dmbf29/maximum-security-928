puts 'Cleaning Db...'
Prison.destroy_all

puts 'Creating prisons....'
Prison.create!(
  name: 'Azkaban',
  banner_url: 'https://imgix.bustle.com/rehost/2016/9/14/0f1532ef-62d2-41da-bc43-f913584ed916.jpg?w=1200&h=630&fit=crop&crop=faces&fm=jpg'
)
puts "... created #{Prison.count} prisons"
