require 'sinatra'
require "sinatra/reloader"
require 'pry'
require_relative 'classes/reviews.rb'

recipe = {
  name: "Roasted Brussels Sprouts",
  ingredients: [
    "1 1/2 pounds Brussels sprouts",
    "3 tablespoons good olive oil",
    "3/4 teaspoon kosher salt",
    "1/2 teaspoon freshly ground black pepper"
  ],
  directions: [
    "Preheat oven to 400 degrees F.",
    "Cut off the brown ends of the Brussels sprouts.",
    "Pull off any yellow outer leaves.",
    "Mix them in a bowl with the olive oil, salt and pepper.",
    "Pour them on a sheet pan and roast for 35 to 40 minutes.",
    "They should be until crisp on the outside and tender on the inside.",
    "Shake the pan from time to time to brown the sprouts evenly.",
    "Sprinkle with more kosher salt ( I like these salty like French fries).",
    "Serve and enjoy!"
  ],
  reviews: [
    # {
    #   username: "Stupendous Cook",
    #   rating: 3,
    #   review: "The brussels sprouts end up pretty good, but I could have made this recipe up myself"
    # },
    # {
    #   username: "Basic Baker",
    #   rating: 5,
    #   review: "I've always just steamed my vegetables. This recipe was delicious, and opened a whole new world of cooking vegetables to me!!!"
    # }
    Review.new("Stupendous Cook", 3, "The brussels sprouts end up pretty good, but I could have made this recipe up myself"),
    Review.new("Basic Baker", 5, "I've always just steamed my vegetables. This recipe was delicious, and opened a whole new world of cooking vegetables to me!!!")
  ]
}

new_review = Review.new("Crazy Chef", 1, "I would never cook brussels sprouts whole!! Each leaf must be plucked and individually blowtorched for 4.3 seconds to produce the perfect dish. This is the only way to cook brussels sprouts!")
recipe[:reviews] << new_review

get '/' do
  @name = recipe[:name]
  @ingredients = recipe[:ingredients]
  @directions = recipe[:directions]
  @reviews = recipe[:reviews]

  erb :index
end
