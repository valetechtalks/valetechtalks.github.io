# Vale Tech Talks Website

A website for the Vale Tech Talks community events, built with Jekyll.

Please, visit [valetechtalks.github.io](https://valetechtalks.github.io).

## Contribute

Check our [Issues page](https://github.com/valetechtalks/valetechtalks.github.io/issues)
to know what needs to be done.

Fork the repository and open Pull Requests with your modification. You can also
ask to join the Organization.

### Dependencies

- Docker and Docker Compose
- Ruby 3.2+ (if running locally)
- Jekyll 4.3+ (if running locally)

### Running with Docker

The easiest way to run the website locally is with Docker:

```bash
git clone https://github.com/valetechtalks/valetechtalks.github.io.git
cd valetechtalks.github.io
docker compose up
```

Then visit `http://localhost:4000` in your browser.

### Running locally

If you prefer to run Jekyll locally:

```bash
git clone https://github.com/valetechtalks/valetechtalks.github.io.git
cd valetechtalks.github.io
bundle install
bundle exec jekyll serve --livereload
```

Then visit `http://localhost:4000` in your browser.

### Content Structure

The website content is stored in YAML data files:

- `_data/schedule.yml` - Event schedule and speakers
- `_data/sponsors.yml` - Event sponsors
- `_data/partners.yml` - Event partners
- `_data/about.yml` - About section content
- `_data/contact.yml` - Contact information
- `_data/location.yml` - Event location details

### Deploy

GitHub Pages will automatically build and deploy the site when changes are pushed to the `master` branch.

```bash
git checkout master
git merge develop
git push origin master
```