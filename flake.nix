{
  description = ''Homoiconic dynamic language interpreter in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spryvm-master".dir   = "master";
  inputs."spryvm-master".owner = "nim-nix-pkgs";
  inputs."spryvm-master".ref   = "master";
  inputs."spryvm-master".repo  = "spryvm";
  inputs."spryvm-master".type  = "github";
  inputs."spryvm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spryvm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}