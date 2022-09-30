# ruby substrings.rb
require 'pry-byebug'

# given dictionary
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# main method
def substrings(text, dictionary)

    # create result hash to store dict_word => count 
    result = Hash.new

    # create array from text, and downcase each text_word
    text_array = text.split(' ').map { |text_word| text_word.downcase }

    # loop through text_array 
    text_array.each do |text_word|

        # loop through each dict_word
        dictionary.each do |dict_word|

            # determine: text_word includes dict_word
            if text_word.include?(dict_word)

                # determine: word already exists as key in result
                if result[dict_word] != nil

                    # and add 1 to the count a so
                    result[dict_word] += 1
                
                # otherwise create the key with value of one
                else
                    result[dict_word] = 1
                end
            end
        end
    end

    # return result
    result
end

# call method to test
test_item = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts test_item