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

cities = City.create([{ name: 'Los Angeles', state_id: '1'},
                       { name: 'Sacramento', state_id: '1'},
                       { name: 'San Diego', state_id: '1'},
                       { name: 'San Francisco', state_id: '1'},
                       { name: 'Brooklyn', state_id: '2'},
                       { name: 'New York', state_id: '2'},
                       { name: 'Eugene', state_id: '3'},
                       { name: 'Portland', state_id: '3'},
                       { name: 'Philidelphia', state_id: '4'},
                       { name: 'Pittsburgh', state_id: '4'},
                       { name: 'Franklin', state_id: '5'},
                       { name: 'Memphis', state_id: '5'},
                       { name: 'Nashville', state_id: '5'},
                       { name: 'Seattle', state_id: '6'},
                       { name: 'Vancouver', state_id: '6'}])

