# Config system



## TODO
- [ ] NIX required setting.
    - [ ] npm
    - [ ] docker
    - [ ] python
        - [ ] poetry ?
    - [ ]
    - [ ] gcloud ?
    - [ ] kubectl ? 
    - [ ] direnv [^1] 
        - Auto install when get into directory.

## Nix notes
Example template

```nix
{ pkgs ? import
    (fetchTarball {
      name = "nixos-unstable-2022-10-14";
      url = "https://github.com/nixos/nixpkgs/archive/a114755d05c1a590ece2e3ecff31e43e07334b5e.tar.gz";
      # Hash obtained using `nix-prefetch-url --unpack <url>`
      sha256 = "0bh1w9jw4r45a5rrw4wc02k4yajm64r0prsr6z20ybi5zgai727v";
    })
    { }
}:

pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.postgresql
    pkgs.poetry
    pkgs.redis
    pkgs.watchexec
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

[^1]: https://direnv.net/
[^2]: https://nix.dev/
[^3]: https://nixos.org/manual/nix/stable/language/index.html
[^4]: https://nixos.org/guides/nix-pills/