FROM node:alpine

WORKDIR /app

RUN npm install -g reveal-md

EXPOSE 1948
CMD ["reveal-md", "slides.md"]
