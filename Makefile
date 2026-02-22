NAME=draft-snijders-rpkispool-format

.PHONY: all
all: drafts

.PHONY: drafts
drafts: $(NAME).txt

$(NAME).txt: $(NAME).xml
	xml2rfc $(NAME).xml --html --text --expand --allow-local-file-access
	cp -v $(NAME).txt $(NAME).html $(NAME).exp.xml ~/Downloads
	chrome ~/Downloads/$(NAME).html

clean:
	rm -f *.html *.txt *.exp.xml

www:
	cp $(NAME).txt $(NAME).html ~/Downloads/
