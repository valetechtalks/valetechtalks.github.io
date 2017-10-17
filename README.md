[![Build Status](https://travis-ci.org/valleyofdevelopers/valleyofdevelopers.github.io.svg?branch=develop)](https://travis-ci.org/valleyofdevelopers/valleyofdevelopers.github.io)
[![dependencies Status](https://david-dm.org/valleyofdevelopers/valleyofdevelopers.github.io/status.svg)](https://david-dm.org/valleyofdevelopers/valleyofdevelopers.github.io)

# Valley of Developers Website

Based on [conf-boilerplate](https://github.com/valleyofdevelopers/conf-boilerplate).

Please, visit [valleyofdevelopers.github.io](http://valleyofdevelopers.github.io).

## Contribute

Check our [Issues page](https://github.com/valleyofdevelopers/valleyofdevelopers.github.io/issues)
to know must be done.

Fork the repository and open Pull Requests with your modification. You can also
ask to join the Organization.

### Dependencies

- git
- nodejs
- yarn

### Usage

```bash
git clone https://github.com/valleyofdevelopers/valleyofdevelopers.github.io.git
cd valleyofdevelopers.github.io
yarn install
yarn watch
```

### Deploy

Done automatically on any merge to `develop` branch.

Otherwise, if needed:

```bash
yarn deploy
```

### Archive Meetups

To arquive old Meetup pages, do the followying:

```bash
yarn generate         # Make sure to generate the meetup page to be archive
yarn archive YYYYMMDD # Archive it under /archive/YYYYMMDD
```

Where `YYYYMMDD` is the day where the meetup was realized.
