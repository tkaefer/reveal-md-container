## Description
This container provides a run time environment base on reveal-md for running reveal.js presentations.

You can either use local file system based setup or have your own volume container bringing the presentation.


## Using docker-compose
### Own volume container example

```
version: '2'
services:
  revealmd:
    image: tkaefer/reveal-md-container:latest
    volumes_from:
      - presentation
  presentation:
    image: tkaefer/decision-making-cognitive-biases
    volumes:
      - /app
```

### Local directory

```
version: '2'
services:
  revealmd:
    image: tkaefer/reveal-md-container:latest
    volumes:
      - ./path/to/presentation:/app:ro
```
