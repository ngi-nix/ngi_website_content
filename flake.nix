{
  description = "Flake for SoN blogposts";

  inputs = {
    nixpkgs = { url = "github:NixOS/nixpkgs/release-21.05"; };
  };

  outputs = { self, nixpkgs}:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in
  {
    defaultPackage.x86_64-linux = pkgs.stdenv.mkDerivation {
      name = "site";
      src = ./.;
      installPhase = ''
        mkdir -p $out
        for MD_FILE in $(ls blogs)
        do
          ${pkgs.pandoc}/bin/pandoc blogs/$MD_FILE -o $out/''${MD_FILE%.md}.html
        done
      '';
    };
  };
}
