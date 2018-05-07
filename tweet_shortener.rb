def dictionary
  hash = {"hello" => "hi", 
  "to" => "2",
  "two" => "2", 
  "too" => "2", 
  "for" => "4",
  "four" => "4", 
  "be" => "b", 
  "you" => "u", 
  "at" => "@" ,
  "and" => "&"}
end 

def word_substituter(tweet)
  array = []
  tweet = tweet.split(" ")
  tweet.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      array << word
      else
        array << word 
    end
  end 
  array.join(" ")
end 


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet| 
    puts word_substituter(tweet)
  end 
end 


def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    return word_substituter(tweet)
  elsif tweet.length <= 140
    return tweet
  end
end 
  

def shortened_tweet_truncator(tweet)
  shorten = selective_tweet_shortener(tweet)
  if shorten.length > 140 
    return shorten[0..136] + "..."
  elsif shorten.length <= 140 
    return shorten 
  end 
end 
