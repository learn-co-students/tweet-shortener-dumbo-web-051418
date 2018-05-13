def dictionary
  {
    "hello" => "hi", 
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)

  tweet.split(" ").collect do |word|
    if dictionary.keys.include? (word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")

end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    return "#{selective_tweet_shortener(tweet)[0...137]}..."
  else
    return selective_tweet_shortener(tweet)
  end
end 
  