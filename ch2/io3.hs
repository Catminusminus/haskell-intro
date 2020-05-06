main :: IO ()
main = do
    x <- getLine
    putStrLn $ "x" ++ x
    getLine >>= return . (":" ++) >>= putStrLn
    (":" ++) <$> getLine >>= putStrLn
