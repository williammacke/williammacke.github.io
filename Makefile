DOCS=index misc

HDOCS=$(addsuffix .html, $(DOCS))

.PHONY : docs
docs : $(HDOCS)

%.html : %.jemdoc MENU mysite.conf
	jemdoc $<

.PHONY : clean
clean :
	rm -f *.html
