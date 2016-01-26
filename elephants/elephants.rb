# Jon Wexler
# 1/25/16
# 
# Safari life is tough and a herd of elephants must stick together. Given a line of elephants where each elephant's trunk holds onto the tail of the elephant in front of him. Get the strongest elephant to the front of the line to protect the rest of the herd.

# Use the Elephant class below to create a method which accepts the last elephant in line and use that information to push the strongest elephant to the front and return the new last elephant in line.


class Elephant
    attr_accessor :strength, :elephant_in_front
    def initialize(deets={})
        @strength = deets[:strength]
        @elephant_in_front = nil
    end
end

# For example, if the following elephants are created:
dumbo = Elephant.new(strength: 4)
trumbo = Elephant.new(strength: 7)
gumbo = Elephant.new(strength: 1)
jumbo = Elephant.new(strength: 8)

# Then assorted in the following order:
jumbo.elephant_in_front = gumbo
gumbo.elephant_in_front = dumbo
dumbo.elephant_in_front = trumbo

# jumbo --> gumbo --> dumbo --> trumbo
# And you were given 'jumbo'. Return 'gumbo' such that the new arrangement of elephants has jumbo in the front, like so:
# gumbo --> dumbo --> trumbo --> jumbo

def strongest_in_front elephant
    last_elephant = elephant

    while elephant.elephant_in_front != nil
        if elephant.strength > elephant.elephant_in_front.strength
            switching_elephant = elephant.elephant_in_front
            elephant.elephant_in_front = switching_elephant.elephant_in_front
            switching_elephant.elephant_in_front = last_elephant
            last_elephant = switching_elephant
        end
    end
    return last_elephant
end

# Sample method call
# puts (strongest_in_front jumbo).inspect