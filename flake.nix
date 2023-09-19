{
  description = "A page table reader";

  outputs = { self, nixpkgs, ... }:
    with import nixpkgs { system = "x86_64-linux"; }; {

      formatter.x86_64-linux = nixfmt;

      # Utilized by `nix build .`
      defaultPackage.x86_64-linux = stdenv.mkDerivation {
        name = "page-table-reader";
        makeFlags = [ "PREFIX=$(out)" ];
        src = self;
      };

      # Utilized by `nix develop`
      devShell.x86_64-linux = mkShell { packages = [ bear clang-tools gdb ]; };
    };
}
