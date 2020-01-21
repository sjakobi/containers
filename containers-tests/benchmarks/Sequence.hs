module Main where

import Gauge (bench, bgroup, defaultMain, nf)

main = do
    defaultMain
      [ bgroup "<*>"
         [ bench "nf100/2500/rep" $
              nf (\(s,t) -> (,) <$> replicate s () <*> replicate t ()) (100,2500)
         , bench "nf2500/100/rep" $
              nf (\(s,t) -> (,) <$> replicate s () <*> replicate t ()) (2500,100)
         ]
      ]
