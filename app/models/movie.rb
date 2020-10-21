class Movie < ActiveRecord::Base
  def self.with_ratings(ratings_list)
  # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
  #  movies with those ratings
  # if ratings_list is nil, retrieve ALL movies
    if ratings_list == []
      return Movie.all
    elsif ratings_list.nil?
      return Movie.all
    else
      Movie.where(:rating => ratings_list)
    end
  end
  def self.sortedby(p)
    if p == 'title'
      Movie.order(:title)
    end
  end

end
