# Config system



## TODO
- [ ] NIX required setting.
  - [ ] npm
  - [ ] docker
  - [ ] python
    - [ ] poetry ?
  - [ ] kubectl ? 
  - [ ] direnv [^1] 
    - Auto install when get into directory.

## Nix notes
Example template

```nix
{ pkgs ? import
    (fetchTarball {
      name = "nixos-<version>";
      url = "https://github.com/nixos/nixpkgs/archive/<hash>.tar.gz";
      # Hash obtained using `nix-prefetch-url --unpack <url>`
      sha256 = "<hash>";
    })
    { }
}:

pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.<package-name>
    ...
  ];
}
```

Install a package and open a shell.
```bash
nix-shell -p <package-name>
```

Update home manager setting
```
home-manager switch
```

Remove garbage
```bash
nix-collect-garbage
```


[^1]: https://direnv.net/
[^2]: https://nix.dev/
[^3]: https://nixos.org/manual/nix/stable/language/index.html
[^4]: https://nixos.org/guides/nix-pills/