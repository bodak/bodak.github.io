build:
    docker run -ti --rm -v .:/srv/jekyll:rw -e JEKYLL_ROOTLESS=1 jekyll/jekyll jekyll new .

serve:
	docker run -ti --rm -v .:/srv/jekyll:rw -p 4001:4000 -e JEKYLL_ROOTLESS=1 jekyll/jekyll jekyll serve

update:
	docker run -ti --rm -v .:/srv/jekyll:rw -e JEKYLL_ROOTLESS=1 jekyll/jekyll bundle update
