init:
	podman run -it --rm -v "$$PWD:/srv/jekyll:rw" -e JEKYLL_ROOTLESS=1 jekyll/jekyll jekyll new .

install:
	podman run -it --rm -v "$$PWD:/srv/jekyll:rw" -e JEKYLL_ROOTLESS=1 jekyll/jekyll bundle install

serve:
	podman run -it --rm -v "$$PWD:/srv/jekyll:rw" -p 4001:4000 -e JEKYLL_ROOTLESS=1 jekyll/jekyll jekyll serve --force_polling

update:
	podman run -it --rm -v "$$PWD:/srv/jekyll:rw" -e JEKYLL_ROOTLESS=1 jekyll/jekyll bundle update
