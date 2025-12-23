# env-templates
A per-project nix environment templates powered by Nix and direnv.

### tl;dr
I'm just not into typing `nix-shell -p <package> `, therefore I use unique directories where I (or the app I'm trying to run) needs a package readily available. Direnv reads whatever is inside the `.envrc` present at the project directory's root. You can read more about direnv [here](https://direnv.net/). this repo also shelters templates I frequently use to setup any [temporary / development / isolated] environment.

For now, the repo looks something like this (eventhough I will add more templates I use and the ones I find online.)
```bash

├── dev # heavily inspired by dev-templates, please check them out!
│   ├── go
│   └── python
├── misc
│   ├── media 
│   │   └── # a temporary project where I can access stuff related to multi-media
│   └── mobile 
│       └── # all mobile-related stuff gets loaded whenever I'm using this template
```


### Notable references:
- https://fzakaria.com/2021/08/02/a-minimal-nix-shell.html.
- https://wirywolf.com/2025/05/using-unstable-packages-in-nix-shell.
- https://nix.dev/tutorials/first-steps/declarative-shell#declarative-reproducible-envs.
