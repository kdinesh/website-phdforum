DOCS=index talks dcc travel faq misc compre adsa mccs co elective other feed contact

HDOCS=$(addsuffix .html, $(DOCS))
PHDOCS=$(addprefix html/, $(HDOCS))

.PHONY : docs
docs : $(PHDOCS)

.PHONY : update
update : $(PHDOCS)
	@echo -n 'Copying to server...'
	# insert code for copying to server here.
	@echo ' done.'

html/%.html : %.jemdoc MENU
	jemdoc -o $@ $<

.PHONY : clean
clean :
	-rm -f html/*.html
