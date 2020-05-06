type Category = String
type Name = String
type Price = Integer
type Memu = [(Category, [(Name, Price)])]
type Item = (Category, Name, Price)

memu1 :: Memu
memu1 =
  [("Foods",
    [("Hamburger", 120)
    , ("FrenchFries", 100)])
  , ("Drink",
    [("Cola", 80)
    , ("Tea", 100)]
  )]

getItemWithMonad :: Memu -> Category -> Name -> Maybe Item
getItemWithMonad memu category name = do
  subMenu <- lookup category memu
  price <- lookup name subMenu
  return (category, name, price)
