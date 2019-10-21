$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS

require 'pp'

def pretty_print_nds(nds)
pp nds
end

def print_first_directors_movie_titles
  first_directors_movie = directors_database[0][:movies]
  index = 0

  while index < first_directors_movie.count do
    movie_title = first_directors_movie[index][:title]
    puts movie_title
    index +=1
  end
end