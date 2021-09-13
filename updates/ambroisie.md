# Week of 2021-08-17

* Looked at [Balthazar](https://github.com/ngi-nix/ngi/issues/134), which seems
to have nothing packageable using Nix.
* Packaged [Nyxt](https://github.com/ngi-nix/ngi/issues/116)
    * Packaged their latest release (2.1.1)
    * Their `master` makes use of CL dependencies that are not in nixpkgs
    * The lisp tooling in nixpkgs is erroring out when trying to use them
* Looked at [Plaudit](https://github.com/ngi-nix/ngi/issues/20)
    * They do some weird things with their Yarn setup, someone more experienced
      in JS could help make sense of it
* Looked at [Chipflasher](https://github.com/ngi-nix/ngi/issues/114)
    * Their documentation need `inkscape_0`, so track down an old version of
    nixpkgs to get it
    * Their firmware needs [their fork of
    GCC](https://sites.google.com/site/propellergcc/)
        * Not packaged in nixpkgs yet
        * Will need to do that to finish off that package

Other remarks:

* I discovered that Nix would segfault when trying to build a derivation without
`name`
