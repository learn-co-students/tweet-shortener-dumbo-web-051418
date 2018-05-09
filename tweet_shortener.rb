require 'pry'

def dictionary 
  words = {
    "hello" => 'hi',
    "to" => 2,
    "two" => 2,
    "too" => 2,
    "for" => 4,
    "four" => 4,
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(str)   #
  str_array = str.split(" ").map do |word|
    #For each word, compare to every word in the dictionary 
    #switch which ever words are identical i nthe keys then return the value
    if dictionary.keys.include?(word.downcase) #bool
      dictionary[word.downcase]
    else
      word
    end
  end
  str_array.join(" ")
end


def bulk_tweet_shortener(arr_tweets)
  arr_tweets.map do |word|
    puts word_substituter(word)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end
  
# tweet.split(" ").map do |word|
#   if word.length > 140
#     word_substituter(word)
#   else word.length <= 140
#     word
#   end
# end
#end

def shortened_tweet_truncator(tweet)
  t_tweet= ""
  if word_substituter(tweet).length > 140
    t_tweet << word_substituter(tweet)[0..136]+"..."
  else
    tweet
  end
end