# Write your code here.

def dictionary
  words = {
    "hello":"hi",
    "to":"2",
    "two":"2",
    "too":"2",
    "for":"4",
    "four":"4",
    "be":"b",
    "you":"u",
    "at":"@",
    "and":"&"
  }
end

def word_substituter(tweet)
  dictionary_words = dictionary
  words = tweet.split()
  words.each_with_index do |word,index|
    if dictionary_words.has_key? word.downcase.to_sym
      words[index] = dictionary_words[word.downcase.to_sym]
    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts(word_substituter(tweet))
  end
end

def selective_tweet_shortener(tweet)
  final_tweet = tweet
  if tweet.length > 140
    final_tweet = word_substituter(tweet)
  end
  final_tweet
end

def shortened_tweet_truncator(tweet)
  final_tweet = tweet
  if tweet.length > 140
    final_tweet = tweet[0..136]+"..."
  end
  final_tweet
end