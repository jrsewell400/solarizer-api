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

Question.destroy_all

Question.create(faq: "Overview", answer: "Solarizer is a web app for solar energy enthusiasts seeking estimates on electricity production of a photovoltaic (PV) system based on a few simple inputs.")
Question.create(faq: "Get Started", answer: "Users provide information about the system \'s location, basic design parameters, and an optional historical monthly energy usage. Solarizer calculates estimates of the system \'s annual and monthly electricity production, and an estimate of the value of that electricity.")
Question.create(faq: "System Size", answer: "System Size is the DC (direct current) power rating of the PV array in kilowatts (kW) at standard test conditions. The default size if usually 4kW.")
Question.create(faq: "Module Type", answer: "Module Type describes the PV modules in the solar array.  Most module types will be Standard.")
Question.create(faq: "Array Type", answer: "The array type describes whether the PV modules in the array are fixed, or whether they move to track the movement of the sun across the sky with one or two axes of rotation. The default value is for a fixed array, For systems with fixed arrays, you can choose between an open rack or a roof mount option. The open rack option is appropriate for ground-mounted systems")
Question.create(faq: "System Losses", answer: "The system losses account for performance losses you would expect in a real system that are not explicitly calculated by Solarizer. Several categories make up the system losses, including soiling, shading, snow, and more.  The default system loss percentage is 14%")
Question.create(faq: "Tilt", answer: "The tilt angle is the angle from horizontal of the PV modules in the array. For a fixed array, the tilt angle is genereally between 0-45%. The default value is 20 degrees.")
Question.create(faq: "Azimuth", answer: "For a fixed array, the azimuth angle is the angle clockwise from true north describing the direction that the array faces. An azimuth angle of 180° is for a south-facing array, and an azimuth angle of zero degrees is for a north-facing array. For reference: N = 0\u00B0, NE = 45\u00B0, E = 90\u00B0, SE = 135\u00B0, S = 180\u00B0, SW = 225\u00B0, W = 270\u00B0, SW = 315 \u00B0")
Question.create(faq: "Retail Electricty Rate", answer: "The national average rate is 11 cents per kWh")
