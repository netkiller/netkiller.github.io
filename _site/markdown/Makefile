PANDOC = pandoc
PANDOCOPTS = -f markdown -t html5
PREFIX=..
HTML := $(patsubst %.md,%.html,$(wildcard *.md))

all: $(HTML)
	
%.html: %.md 
	$(PANDOC) $(PANDOCOPTS) -s $< -o $(PREFIX)/$@

clean:
	@rm -rf $(PREFIX)/*.html
	
rebuild : clean all	