
## Solarizer API

## Table of Contents

* [About](#about)
  * [Tech Stack](#tech-stack)
* [Getting Started](#getting-started)
  * [Installation](#installation)
  * [Testing](#testing)
* [Solarizer API Access Points](#solarizer-api-endpoints)

## About

This API is used by the [Solarizer](https://github.com/PaulDebevec/solarizer) app. This API has two endpoints, one for a random eco-tip, and the other is a FAQ for the [Solarizer](https://github.com/PaulDebevec/solarizer) Front-End.

### Learning Goals: 

- refactoring
- serializers
- consuming APIs
- exposing APIs
- authentication
- password encryption

### Built with:

- Ruby: 2.5.1
- PostgreSQL: 12.2
- Rails: 6.0.3
- Bcrypt (password encryption)
- fast_jsonapi

***Testing framework***
- RSpec
- Capybara
- Simplecov
- Shoulda-matchers
- Pry (For debugging)

## Getting Started

To get a local copy up and running follow these simple steps. 

### Installation

1. Clone the repo
```sh
git clone git@github.com:jrsewell400/solarizer-api.git
```
2. Install the Gem File
```sh
bundle install
```
3. Create your environment
```sh
rails db:create
rails db:migrate
rails db:seed
```

### Testing

1. Install RSpec

```sh
bundle install rspec
```
2. Run the test suite from the root directory of the repository

```sh
rspec 
```
Or:

```sh
bundle exec rspec 
```

## Solarizer API Endpoints

Retrieve a random eco tip
```sh
GET api/v1/tips
```
Expected response: 
```sh
{"description":"Turn it off. Energy conservation is one of the most important things you can do to reduce your carbon footprint."}
```
Retrieve weather forecast for a specific location:
```sh
GET api/v1/faq
```
Expected response: 
```sh
[{"faq":"Overview","answer":"Solarizer is a web app for solar energy enthusiasts seeking estimates on electricity production of a photovoltaic (PV) system based on a few simple inputs."},{"faq":"Get Started","answer":"Users provide information about the system 's location, basic design parameters, and an optional historical monthly energy usage. Solarizer calculates estimates of the system 's annual and monthly electricity production, and an estimate of the value of that electricity."},{"faq":"System Size","answer":"System Size is the DC (direct current) power rating of the PV array in kilowatts (kW) at standard test conditions. The default size if usually 4kW."},{"faq":"Module Type","answer":"Module Type describes the PV modules in the solar array.  Most module types will be Standard."},{"faq":"Array Type","answer":"The array type describes whether the PV modules in the array are fixed, or whether they move to track the movement of the sun across the sky with one or two axes of rotation. The default value is for a fixed array, For systems with fixed arrays, you can choose between an open rack or a roof mount option. The open rack option is appropriate for ground-mounted systems"},{"faq":"System Losses","answer":"The system losses account for performance losses you would expect in a real system that are not explicitly calculated by Solarizer. Several categories make up the system losses, including soiling, shading, snow, and more.  The default system loss percentage is 14%"},{"faq":"Tilt","answer":"The tilt angle is the angle from horizontal of the PV modules in the array. For a fixed array, the tilt angle is genereally between 0-45%. The default value is 20 degrees."},{"faq":"Azimuth","answer":"For a fixed array, the azimuth angle is the angle clockwise from true north describing the direction that the array faces. An azimuth angle of 180° is for a south-facing array, and an azimuth angle of zero degrees is for a north-facing array. For reference: N = 0°, NE = 45°, E = 90°, SE = 135°, S = 180°, SW = 225°, W = 270°, SW = 315 °"},{"faq":"Retail Electricty Rate","answer":"The national average rate is 11 cents per kWh"}]

```
