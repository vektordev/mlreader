module RedditGrabber where

import Data.Aeson.Parser
import Network.HTTP
import RedditHeader
import Data.Text

grab :: IO [Post]

parse json bytestr -> Result Value

convert :: Value -> [Post]

create :: Value -> Post
create (Object o) = Post {
	sub = lookupDefault (String pack "") key o,
	score = Nothing,
	username = ,
	title = ,
	body = ,
	score = ,
	length = ,
	timestamp = ,
	id =
}
create x = mzero

toString :: Value -> String
toString String s = unpack s

--already existing raw data
getRaw :: IO [Post]

removeIntersect :: [Post] -> [Post] -> [Post]
removeIntersect new existing = new \\ existing -- still need to update existing upvote counts... maybe keep new posts but dismiss existing ones that have been reloaded? existing \\ new
