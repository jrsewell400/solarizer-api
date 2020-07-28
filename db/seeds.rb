# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tip.destroy_all

Tip.create(description: "Turn it off. Energy conservation is one of the most important things you can do to reduce your carbon footprint.")
Tip.create(description: "Collect plastic and recycle film. Many grocery stores have recycling drop-offs for this less-commonly recycled type of plastic.")
Tip.create(description: "Use your microwave. Honestly, you’d be surprised by how much more energy efficient microwaves are compared to conventional ovens.")
Tip.create(description: "Buy local. The closer to home products are made and bought, the less carbon is created with their transportation.")
Tip.create(description: "Try to cut out plastic, especially types which cannot be recycled locally.")
Tip.create(description: "Electronics that are plugged in still consume energy.  Unplug unused electronics to save money on your energy bill!")
Tip.create(description: "Eat less meat!  Meat is one of the biggest contributors to climate change.")
