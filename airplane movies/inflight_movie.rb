# Jon Wexler
# Given an Integer and an array of numbers, see if there are exactly two numbers
# When combined that equal that integer
# Fast O(n) runtime and O(1) space
# Alternative is to use a "set", filters out duplicates, must require 'set'

movies = [120,80, 104, 105, 67, 133, 111, 203]
flight = 237

def calculate_movies(flight, movies)
    # Hash of possibilities
    possibilities = {}
    # Loop through movie times
    for movie_length in movies
        # Filter out movies longer than the flight
        if movie_length < flight
            # Check if the second half of the sum exists in the hash already
            # If so we are done
            if possibilities[movie_length]
                return true
            else
                # Add this movie time to the hash (looking for a partner)
                possibilities[flight - movie_length] = movie_length
            end
        end
    end
    puts possibilities.inspect
    # Can't find a matching sum, return false  
    return false
end

puts calculate_movies(flight, movies)