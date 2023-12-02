{-# OPTIONS_GHC -Werror=deprecations #-}

module Lib (foo) where

import System.OsPath.Encoding (EncodingException)

-- This throws deprecation warnings:
--import System.OsPath.Encoding.Internal (EncodingException)
--
-- src/Lib.hs:8:41: error: [GHC-68441] [-Wdeprecations, -Werror=deprecations]
--     In the use of type constructor or class ‘EncodingException’
--     (imported from System.OsPath.Encoding.Internal):
--     Deprecated: "Use System.OsString.Encoding.Internal from os-string >= 2.0.0 package instead. This module will be removed in filepath >= 1.5."
--   |
-- 8 | import System.OsPath.Encoding.Internal (EncodingException)
--   |                                         ^^^^^^^^^^^^^^^^^

-- src/Lib.hs:10:15: error: [GHC-68441] [-Wdeprecations, -Werror=deprecations]
--     In the use of type constructor or class ‘EncodingException’
--     (imported from System.OsPath.Encoding.Internal):
--     Deprecated: "Use System.OsString.Encoding.Internal from os-string >= 2.0.0 package instead. This module will be removed in filepath >= 1.5."
--    |
-- 10 | foo :: Either EncodingException ()
--    |               ^^^^^^^^^^^^^^^^^
-- Error: cabal: Failed to build osstr-deprecated-0.1.

foo :: Either EncodingException ()
foo = Right ()
