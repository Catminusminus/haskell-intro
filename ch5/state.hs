import           Control.Monad.Trans.State
import           Data.List
import           Data.Ord
type Card = Int
type Score = Int
type Hand = [Card]
type Stock = [Card]
type Player = String

drawCards :: Int -> State Stock Hand
drawCards n = do
  deck <- get
  put $ drop n deck
  return $ take n deck

gameWithState :: State Stock [(Score, Hand, Player)]
gameWithState = do
  taroHand <- drawCards 5
  hanakoHand <- drawCards 5
  takashiHand <- drawCards 5
  yumiHand <- drawCards 5
  return . sortOn Down $
    [(sum taroHand, taroHand, "Taro")
      , (sum hanakoHand, hanakoHand, "Hanako")
      , (sum takashiHand, takashiHand, "Takashi")
      , (sum yumiHand, yumiHand, "Yumi")
    ]
