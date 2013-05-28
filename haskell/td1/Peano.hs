module Peano where

data Peano = Zero | Succ Peano deriving (Eq)

instance Num Peano where
  a + Zero = a
  a + Succ b = Succ (a + b)
  
  _ * Zero = Zero
  a * Succ b = a + (a * b)
  
  a - Zero = a
  Succ a - Succ b = (a - b)
  
  abs a = a
  
  fromInteger 0 = Zero 
  fromInteger i = Succ (fromInteger (i - 1))
  
  signum Zero = 0
  signum _ = 1
  
instance Show Peano where
  show Zero = "Zero"
  show (Succ Zero) = "Succ Zero"
  show (Succ a) = "Succ (" ++ (show a) ++ ")"