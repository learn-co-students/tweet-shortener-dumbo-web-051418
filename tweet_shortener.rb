# Write your code here.
dictionary = {
  'hello' => 'hi',
  'to' => '2',
  'two'=> '2',
  'too' => '2',
  'for' => '4',
  'four' => '4',
  'be' => 'b',
  'you' => 'u',
  'at' => '@',
  'and' => '&'
}
  
def word_substituter(tweet)
  dictionary = {
  'hello' => 'hi',
  'to' => '2',
  'two'=> '2',
  'too' => '2',
  'for' => '4',
  'four' => '4',
  'be' => 'b',
  'you' => 'u',
  'at' => '@',
  'and' => '&'
}
  tweet.split.map do |word|
    
    if dictionary.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(' ')
end

def bulk_tweet_shortener(tweets)
  result = ''
  tweets.each do |tweet|
  puts word_substituter(tweet)
  end
  result
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140 
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short_tweet = ''
  if tweet.size > 140
     short_tweet << selective_tweet_shortener(tweet)
     short_tweet[0...137] << '...'
  else
     tweet
  end
end
