FROM alpine:latest

ENV LANG ru_RU.UTF-8

RUN apk add --no-cache make \
    	    	       texlive texmf-dist-latexextra \
		       texlive-luatex texlive-xetex \
		       texmf-dist-langcyrillic \
		       py3-pygments biber biblatex \
		       texmf-dist-bibtexextra

RUN apk add --no-cache msttcorefonts-installer fontconfig && \
    		       update-ms-fonts && \
    		       fc-cache -f