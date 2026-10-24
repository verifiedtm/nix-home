{
  description = "shared home-manager configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      home-manager,
      stylix,
      ...
    }:
    {
      homeManagerModules.default = {
        imports = [
          ./home/default.nix
          stylix.homeModules.stylix
        ];
      };
    }
    // flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        testHome = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;

          modules = [
            self.homeManagerModules.default

            {
              home.username = "test";
              home.homeDirectory = if pkgs.stdenv.hostPlatform.isDarwin then "/Users/test" else "/home/test";
              home.stateVersion = "25.11";
            }
          ];
        };

      in
      {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            nixfmt
            just
            fd
          ];
        };
        checks.home = testHome.activationPackage;
      }
    );
}
