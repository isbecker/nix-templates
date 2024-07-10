{
  description = "A collection of flake templates";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    templates = {

      python = {
        path = ./python;
        description = "A Python project flake";
        welcomeText = ''
          # `.devenv` should be added to `.gitignore`
          ```sh
            echo .devenv >> .gitignore
            direnv allow
          ```
          
          # add the flake to git 
          ```sh
            git add flake.nix
            git commit -m "feat(nix): initial commit for flake.nix"
          ```
          # add other files to git (now or later)

          # run `direnv allow`
          ```sh
            direnv allow
          ```          
        '';
      };

      cloudflare-worker = {
        path = ./cloudflare-worker;
        description = "A Cloudflare Worker project flake";
      };

      typescript = {
        path = ./typescript;
        description = "A generic TypeScript project flake";
        welcomeText = ''
          # `.devenv` should be added to `.gitignore`
          ```sh
            echo .devenv >> .gitignore
            direnv allow
          ```
          # add other files to git (now or later)
          
          # add the flake to git
          ```sh
            git add  flake.nix
            git commit -m "feat(nix): initial commit for flake.nix"
          ```

          # run `direnv allow`
          ```sh
            direnv allow
          ```          
        '';
      };
    };
  };
}