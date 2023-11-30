{-# OPTIONS_GHC -Werror=deprecations #-}

module Lib (foo) where

import System.OsPath.Encoding (EncodingException)
-- uncommenting this gives an error
--import System.OsPath.Encoding.Internal ()

foo :: Either EncodingException ()
foo = Right ()
