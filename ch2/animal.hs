data Dog = Dog
    deriving Show
data Cat = Cat
    deriving Show
newtype Human = Human String
    deriving Show

class Greeting a where
    name :: a -> String
    hello :: a -> String
    hello _ = "..."
    bye :: a -> String
    bye _ = "..."

instance Greeting Human where
    name (Human n) = n
    hello h = "Hi, I'm " ++ name h ++ "."
    bye _ = "See you."

instance Greeting Dog where
    name _ = "a dog"
    hello _ = "Bark!"

instance Greeting Cat where
    name _ = "a cat"
    bye _ = "Meow..."

class Greeting a => Laughing a where
    laugh :: a -> String

instance Laughing Human where
    laugh _ = "Zehahahah...!!"

leaveWithLaugh :: Laughing a => a -> IO ()
leaveWithLaugh x = do
    putStrLn $ bye x
    putStrLn $ laugh x
