module Main

{-
To write these functions in vim:

\d to make a template definition
\c over a variable to do case analysis on that variable
\o to fill in a hole with the 'obvious' value

-}

data Vect : Nat -> Type -> Type where
     Nil  : Vect Z a
     (::) : a -> Vect k a -> Vect (S k) a

%name Vect xs,ys,zs

append : Vect n a -> Vect m a -> Vect (n + m) a

vZipWith : (a -> b -> c) -> Vect n a -> Vect n b -> Vect n c
