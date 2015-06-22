# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'Architecture'},
                              { name: 'Building'},
                              { name: 'Carpentry' },
                              { name: 'Cleaning' },
                              { name: 'Design' },
                              { name: 'Electrical' },
                              { name: 'Fencing' },
                              { name: 'Flooring' },
                              { name: 'Handywork' },
                              { name: 'Hardscaping' },
                              { name: 'Installation' },
                              { name: 'Landscaping' },
                              { name: 'Masonry' },
                              { name: 'Organization' },
                              { name: 'Painting' },
                              { name: 'Plumbing' },
                              { name: 'Repair'}])

states = State.create([{ name: 'California'},
                       { name: 'New York'},
                       { name: 'Oregon'},
                       { name: 'Pennsylvania'},
                       { name: 'Tennessee'},
                       { name: 'Washington' },
                       { name: 'Virtual' }])
