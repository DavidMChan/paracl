# ParaCL workshop website

Static site for **ParaCL: Prosodic and Paralinguistic Understanding and Generation**. It is plain HTML, CSS, and a small amount of JS, with no build step.

```
index.html            all page content (one page, anchored sections)
assets/css/style.css  styles; light/dark themes are tokens at the top
assets/js/main.js     mobile menu + active-section highlight in the nav
assets/img/           favicon.svg, og.png (social share card), people/ (headshots)
deploy.sh             publishes the site to Cloudflare Pages
```

## Hero graphic

The banner graphic is a real measurement of the word "ParaCL", spoken by the macOS `say` voice "Flo (English (US))". The pitch track (F0) and waveform were extracted with Praat via [parselmouth](https://parselmouth.readthedocs.io/). The tone labels are ToBI: H\* on *Pa*, H\* on *L*, then a final L-L% fall.

## Preview locally

```sh
python3 -m http.server 8000
# open http://localhost:8000
```

## Deploy

The site is hosted on Cloudflare Pages (project `paracl`) at **https://paracl.pages.dev/**. The source lives in [DavidMChan/paracl](https://github.com/DavidMChan/paracl).

To publish changes, commit them and run:

```sh
./deploy.sh
```

It uploads only `index.html` and `assets/`. You need to be logged in with `wrangler login` to the Cloudflare account that owns the project.

If the URL ever changes (for example a custom domain), update `canonical`, `og:url` and `og:image` at the top of `index.html`.

## Common updates

All of these are in `index.html`:

- **Dates.** The `TBA` deadlines in the Important Dates timeline, and the exact workshop day (August 18 or 19) in the hero and timeline.
- **Submission link.** Replace the disabled `<span class="btn is-disabled">` in the CFP section with `<a class="btn btn--primary" href="https://openreview.net/...">Submit on OpenReview</a>`.
- **Photos and links.** Each card has a 320×320 headshot in `assets/img/people/<name>.jpg`, and the name links to that person's homepage. To change a photo, replace the file with a square crop.
- **Tentative speaker.** Taehong Cho (listed as tentative in the proposal) is in a commented-out block in the Speakers section. Uncomment it once he is confirmed.
- **Schedule.** Talk slots read "Invited Talks". Add speaker names to each row once the program is set.
