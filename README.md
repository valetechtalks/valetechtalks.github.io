[![Build Status](https://travis-ci.org/valetechtalks/valetechtalks.github.io.svg?branch=develop)](https://travis-ci.org/valetechtalks/valetechtalks.github.io)
[![dependencies Status](https://david-dm.org/valetechtalks/valetechtalks.github.io/status.svg)](https://david-dm.org/valetechtalks/valetechtalks.github.io)

# Vale Tech Talks Website

Based on [conf-boilerplate](https://github.com/valleyofdevelopers/conf-boilerplate).

Please, visit [valetechtalks.github.io](http://valetechtalks.github.io).

## Contribute

Check our [Issues page](https://github.com/valetechtalks/valetechtalks.github.io/issues)
to know must be done.

Fork the repository and open Pull Requests with your modification. You can also
ask to join the Organization.

### Dependencies

- Docker and Docker Compose
- rsync (for deploying)

### Usage

```bash
git clone https://github.com/valetechtalks/valetechtalks.github.io.git
cd valetechtalks.github.io
docker compose up
```

Then visit `http://localhost:9778` in your browser.

### Deploy

```bash
docker compose run -rm web yarn generate
git checkout master
rsync -r out/ .
git add --all
git commit -m 'Update page'
git push origin master
```