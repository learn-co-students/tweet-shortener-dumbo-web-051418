require 'pry'

def dictionary
  dictionary = {
    "hello" => "hi",
    "Hello" => "Hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "To" => "2",
    "Two" => "2",
    "Too" => "2",
    "For" => "4",
    "Four" => "4",
    "Be" => "b",
    "You" => "u",
    "At" => "@",
    "And" => "&"
  }

end

def word_substituter(tweet)
  new_array = tweet.split(" ")
  new_array.each_with_index do |word, index|
    if dictionary.keys.include?(word)
      new_array[index] = dictionary[word]

    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)
    tweet[137] = "..."
    tweet.chomp(tweet[140..-1])
  else tweet
  end
end
