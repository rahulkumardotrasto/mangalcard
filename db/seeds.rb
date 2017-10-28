# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Card.delete_all
# . . .
Card.create(title: 'Marriage Card',
description:
%{<p>
Khushi cards bring to you environment of tradition, joy, fashion.
</p>},
image_url: 'khushi01.PNG',
price: 40.00)
Card.create(title: 'Birthday Card',
description:
%{<p>
Enjoy the beauty of welcoming friends and relatives  through Shakshi's amaging collections.
</p>},
image_url: 'shakshi01.PNG',
price: 20.00)
