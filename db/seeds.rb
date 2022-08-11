puts 'Cleaning Db...'
Criminal.destroy_all
Prison.destroy_all

puts 'Creating prisons....'
azkaban = Prison.create!(
  name: 'Azkaban',
  banner_url: 'https://imgix.bustle.com/rehost/2016/9/14/0f1532ef-62d2-41da-bc43-f913584ed916.jpg?w=1200&h=630&fit=crop&crop=faces&fm=jpg'
)
puts "... created #{Prison.count} prisons"

puts 'Creating criminals....'
Criminal.create!(
  name: "Andrew Tate",
  image_url: "https://i0.wp.com/vimbuzz.com/wp-content/uploads/2022/07/Andrew-Tate-Family-Wife-children-Siblings-Parents.jpg?resize=958%2C575&ssl=1&is-pending-load=1",
  prison: azkaban
)

Criminal.create!(
  name: 'Yann',
  image_url: 'https://res.cloudinary.com/dmbf29/image/upload/v1589532186/qbsrVcFqDSPFNYXihrV2tfuC.jpg',
  prison: azkaban
)

Criminal.create!(
  name: 'Trouni',
  image_url: 'https://res.cloudinary.com/dmbf29/image/upload/v1582182957/tfuHKHCTScFNYUy1bi4AyRQq.jpg',
  prison: azkaban
)

Criminal.create!(
  name: 'Sylvain',
  image_url: 'https://media-exp1.licdn.com/dms/image/C4D03AQGDDtmc8EktDw/profile-displayphoto-shrink_800_800/0/1604650765591?e=1665619200&v=beta&t=q5KToHmTxw_rgdpPaXNmyHMGHEcA3KIfPHRo9C5nvlc',
  prison: azkaban
)
puts "... created #{Criminal.count} criminals"

puts 'Creating crimes....'

crimes = ['party animal', 'passion', 'hashing', 'poor style', 'horrible singer', 'tardiness', 'socks and sandals']
crimes.each do |name|
  Crime.create!(
    name: name
  )
end
puts "... created #{Crime.count} crimes"
