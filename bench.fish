for x in nightly lts-9 lts-6 lts-2
      /home/simon/.local/bin/stack --resolver $x ghc -- --numeric-version
      /home/simon/.local/bin/stack bench --resolver $x :sequence-benchmarks --benchmark-arguments "--small --match ipattern map" ^| grep mean
end
