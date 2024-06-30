IMAGE=ghcr.io/github/pages-gem:v231

init:
	podman run -it --rm -v "$(PWD):/src/site" $(IMAGE) jekyll new .

install:
	podman run -it --rm -v "$(PWD):/src/site" -w /src/site $(IMAGE) bundle install

serve:
	podman run -it --rm -v "$(PWD):/src/site" -w /src/site -p 4000:4000 $(IMAGE) make start-server

update:
	podman run -it --rm -v "$(PWD):/src/site" -w /src/site $(IMAGE) bundle update

run:
	podman run -it --rm -v "$(PWD):/src/site" -w /src/site $(IMAGE) /bin/bash

start-server:
	bundle install
	jekyll serve -H 0.0.0.0 -p 4000
