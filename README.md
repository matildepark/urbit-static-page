**Notice:** This is nowhere near current and should only be considered for the purpose of mounting static HTML pages in archival subnetworks (eg. galaxies, stars, and planets pinned to Vere version 0.10.0). As of November 2023, no such archival project exists, though one could certainly imagine it.

# urbit-static-page

Basic template for mounting a static website (HTML+CSS+JS) to an [Urbit](https://urbit.org) ship v.0.10.0 or higher.

[![awesome urbit badge](https://img.shields.io/badge/~-awesome%20urbit-lightgrey)](https://github.com/urbit/awesome-urbit)

## Overview

As of Urbit v0.8.0, the eyre vane (HTTP server) of Arvo no longer automatically mounts everything in the `/web` folder. It now works through the declaration of endpoints. 

This is a boilerplate for that, using a static Gall agent, current as of v.0.10.0+.

This boilerplate will mount everything in /app/staticsite to "/~staticsite" on your ship's HTTP server. If your ship is `~sampel-palnet` and you have enabled [DNS proxying](https://urbit.org/using/operations/using-your-ship/#planets-and-stars), your site will be available on `http://sampel-palnet.arvo.network/~staticsite`. 

You can also set any domain name to your ship's IP address, if you prefer.

### Usage

1. Clone this repo.
2. If you want to rename the app or the endpoint, you can do either respectively by renaming `staticsite.hoon` and the `staticsite` folder, for the app; and all mentions of `~staticsite` in the former `staticsite.hoon` for the endpoint. Feel free to add your HTML, CSS, and JS files to the folder when ready.
3. Copy everything in `urbit/app` to your Urbit ship's pier, within its respective /app folder.
4. `|commit %home` and `|start %your-app-name`.
5. e m b r a c e g e o c i t i e s

### Future updates

- [ ] Mounting arbitrary pngs

## Acknowledgements

This was one of my first projects on Urbit. Thank you to `~tacryt-socryp`, `~palfun-folsup` and `~novlud-padtyv` for mentoring.
