class Review
  attr_reader :username, :rating, :review

  def initialize(username, rating, review)
    @username = username
    @rating = rating
    @review = review
  end
end
