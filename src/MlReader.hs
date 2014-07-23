import Data.Ratio
import RedditHeader
import RedditGrabber

learn :: Post -> IO ()

judge :: Post -> IO Rating

getData :: IO Wordbase

recalcWordbase :: IO ()

data WordbaseOptions = WordbaseOptions {
	insignificants :: [String],
	concatDepth :: Int,
	combinations :: [[String]],
	allcombinations :: [String]
}

data Wordbase = Wordbase{
	insignificantWords :: [String],
	wordlist :: [([String], Int)],--one String -> as found in text, multiple: found in various places
	ratings :: Array Int Rating, 
	titleratings :: Array Int Rating,
	average :: Rating,
	posts :: Int,
	lengthBasedRating :: [(Int, Rating)]
}