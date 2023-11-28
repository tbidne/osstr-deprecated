{-# OPTIONS_GHC -Werror=deprecations #-}

module Lib (foo) where

import System.OsPath.Encoding (EncodingException)

foo :: Either EncodingException ()
foo = Right ()
