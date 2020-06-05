# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url1_Budapest = "https://www.ubereats.com/pt-en/feed?pl=JTdCJTIyYWRkcmVzcyUyMiUzQSUyMkxpc2JvbiUyMiUyQyUyMnJlZmVyZW5jZSUyMiUzQSUyMkNoSUpPX1BrWVJvekdRMFIwRGFRNUwzckFBUSUyMiUyQyUyMnJlZmVyZW5jZVR5cGUlMjIlM0ElMjJnb29nbGVfcGxhY2VzJTIyJTJDJTIybGF0aXR1ZGUlMjIlM0EzOC43MjIyNTI0JTJDJTIybG9uZ2l0dWRlJTIyJTNBLTkuMTM5MzM2NiU3RA%3D%3D"
html_file1 = open(url1_Budapest).read


html_doc1 = Nokogiri::HTML(html_file1)


name = nil
address = nil
html_doc1.search(".b3 f4 g6 g4").each do |elem|
  name = elem.children[7].text.strip
end

html_doc1.search(".al aj f1").each do |elem|
  type = elem.text.strip
end
# stars = nil
# html_doc1.search(".hp__hotel_ratings .hp__hotel_ratings__stars .bk-icon-wrapper").each do |elem|
#   stars = elem.values.last.scan(/\d+/).join("").to_i
# end
