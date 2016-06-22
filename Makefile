NEWNAME = 'coolNewName'
all:
	@echo "Type: make install"
name:
	@echo "Name target, new name: $(NEWNAME)"
	sed -i 's/example/$(NEWNAME)/g' example.html
	sed -i 's/example/$(NEWNAME)/g' js/example.js

install: name moveProject

moveProject:
	@echo "Move project"
	mkdir ../$(NEWNAME)
	mkdir ../$(NEWNAME)/js
	mv example.html ../$(NEWNAME)/$(NEWNAME).html
	mv js/example.js ../$(NEWNAME)/js/$(NEWNAME).js
