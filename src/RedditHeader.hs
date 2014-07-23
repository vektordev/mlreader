module RedditHeader where

data Post = Post {
	sub :: String,
	score :: Maybe Rating,
	username :: String,
	title :: String,
	body :: String,
	score :: (Int, Int),
	length :: Int,
	timestamp :: Int,
	id :: String
}--equality

type Rating = Rational
