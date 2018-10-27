DOCS=index misc

HDOCS=$(addsuffix .html, $(DOCS))

.PHONY : docs
docs : $(HDOCS)

%.html : %.jemdoc MENU mysite.conf
	jemdoc -c mysite.conf -o $@ $<

.PHONY : clean
clean :
	rm -f *.html
