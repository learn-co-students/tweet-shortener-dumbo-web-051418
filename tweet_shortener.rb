

# word_ref = {
#     "hello" => 'hi',
#     "to" => "2",
#     "two" => "2",
#     "too" => "2",
#     "for" => "4",
#     "four" => "4",
#     "be" => 'b',
#     'you' => 'u',
#     "at" => "@",
#     "and" => "&"
#   }
#
# def dictionary2(word, reference)
#   lookup = reference[word]
#
#   if lookup.nil?
#     word
#   else
#     lookup
#   end
# end
#
# def word_substituter2(long_word, reference)
#   new_array = []
#
#   array = long_word.split
#   array.each do |word|
#     new_array.push(dictionary(word, reference))
#   end
#   new_array.join(' ')
# end

def dictionary
 dictionary = {
    "hello" => 'hi',
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
    }
end

def word_substituter(tweet)
  edited_tweet = tweet.split.collect do |word|
     lookup = word.downcase

    if dictionary.keys.include?(lookup)
      word = dictionary[lookup]
    else
      word
    end
  end
  edited_tweet.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
    news = selective_tweet_shortener(tweet)
    news.length > 140 ? "#{tweet[0..136]}..." : tweet

end
