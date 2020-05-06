main :: IO ()
main = do
    x <- getLine
    y <- getLine
    putStrLn $ ":" ++ x
    putStrLn $ ":" ++ y
