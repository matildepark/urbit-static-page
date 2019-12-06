# urbit-static-page

Basic template for mounting an arbitrary HTML page to an [Urbit](https://urbit.org) ship v.0.10.0 or higher.

## Overview

As of Urbit v0.8.0, the [eyre](https://urbit.org/docs/learn/arvo/eyre/) vane of Arvo no longer automatically mounts everything in the `/web` folder. It now works through the declaration of endpoints. This is a boilerplate for that, using the static Gall agent current as of v.0.10.0.

### Usage

1. Clone this repo. 
2. Copy everything in urbit/app to your Urbit ship's pier, in its respective /app folder. 
3. By default, it will mount `/staticsite/index.html` to `[your-ship's-url]/~staticsite`. To change this, amend the "staticsite" name to whatever you like. 
    - Ensure you change the .hoon filename, the "staticsite" folder name, and all instances of "staticsite" in the .hoon file. See the comments in `staticsite.hoon` for naming the endpoint, too.
4. `|commit %home` and `|start your-app-name`.
5. e m b r a c e g e o c i t i e s

### Future updates

- [ ] Commenting out examples of different file types
- [ ] Adding in examples of mapping multiple files of the same type to a single variable.

## Acknowledgements

Thank you to ~tacryt-socryp, ~palfun-folsup and ~novlud-padtyv for mentoring. This is a basic package, but a new territory!
