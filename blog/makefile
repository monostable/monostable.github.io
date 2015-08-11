ENTRIES = $(wildcard entries/*.md)

%.html: $(ENTRIES)
	@#echo '$(basename $(@F))' | tr '-' ' ' | sed 's/\w*\( \|\$\)/\u&/g' | xargs echo
	pandoc --standalone -c markdown7.css header.md $< footer.md -o $@
	sed -i '/<!-- comments -->/ r discourse.html' $@
	sed -i 's!<% file-name %>!$@!' $@


entries: $(patsubst entries/%.md, %.html, $(ENTRIES))


.PHONY: entries


