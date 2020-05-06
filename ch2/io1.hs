main :: IO ()
main =
    getLine >>= \x ->
    getLine >>= \y ->
    putStrLn (":" ++ x) >>
    putStrLn (":" ++ y)
