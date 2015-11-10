# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: "Simon Says",
            project_url: "http://newyork-anthonyng.github.io/Simon_Says/",
            blog_url: "https://newyorkanthonyng.wordpress.com/2015/11/05/01-simon-says/",
            description: "A Simon Says Clone",
            category: "Project")
