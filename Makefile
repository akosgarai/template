NEWNAME = 'coolNewName'
all:
	@echo "Type: make name"
name:
	@echo "Name target"
	sed -i 's/example/$(NEWNAME)/g' example.html
	sed -i 's/example/$(NEWNAME)/g' js/example.js
	mv example.html $(NEWNAME).html
	mv js/example.js js/$(NEWNAME).js
