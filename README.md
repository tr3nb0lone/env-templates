# env-templates
A per-project environment templates powered by Nix and Direnv.

### tl;dr
I'm just not into typing `nix-shell -p <package> `, therefore I use unique directories where I (or the app I'm trying to run) needs a package readily available. Direnv reads whatever is inside the `.envrc` present at the project directory's root. You can read more about direnv [here](https://direnv.net/). this repo also shelters templates I frequently use to setup any [temporary / development / isolated] environment.

For now, the repo looks something like this:
```bash
├── dev 
│   ├── go
│   └── python
│   └── c-cpp
│   └── js-ts
│   └── # More TBD!
|        # heavily inspired by dev-templates, please check them out!
├── misc
│   ├── media 
│   │   └── # a temporary project where I can access stuff related to multi-media
│   └── mobile 
│       └── # all mobile-related stuff gets loaded whenever I'm using this template
```

#### INFO:
Every directory has the `.envrc` file pointing Direnv to either use flakes or the trad nix-shell.

### Notable references:
- https://fzakaria.com/2021/08/02/a-minimal-nix-shell.html.
- https://wirywolf.com/2025/05/using-unstable-packages-in-nix-shell.
- https://nix.dev/tutorials/first-steps/declarative-shell#declarative-reproducible-envs.
- https://ayats.org/blog/nix-workflow

#### Roadmap:
[ ] - Add templates for other languages.
[ ] - get a contribution from fellow nixers.
