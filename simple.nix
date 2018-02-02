{ nixpkgs
, supportedSystems ?  [ "x86_64-linux" ]
}:

with import (nixpkgs + "/top-level/release-lib.nix") { inherit supportedSystems; };

(mapTestOn {
  hello = all;
})
