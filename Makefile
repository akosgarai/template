NEWNAME = 'coolNewName'
ANGULARVERSION = '1.4.9'

ANGULARURL = 'https://ajax.googleapis.com/ajax/libs/angularjs/$(ANGULARVERSION)/angular.min.js'
ANGULARMOCKURL = 'http://ajax.googleapis.com/ajax/libs/angularjs/$(ANGULARVERSION)/angular-mocks.js'
all:
	@echo "Type: make install"
name:
	@echo "Name target, new name: $(NEWNAME)"
	sed -i 's/example/$(NEWNAME)/g' example.html
	sed -i 's/example/$(NEWNAME)/g' js/example.js
	sed -i 's/example/$(NEWNAME)/g' test/example-test.js

install: name moveProject getAngular

moveProject:
	@echo "Move project"
	mkdir ../$(NEWNAME)
	mkdir ../$(NEWNAME)/js
	mkdir ../$(NEWNAME)/test
	mv example.html ../$(NEWNAME)/$(NEWNAME).html
	mv js/example.js ../$(NEWNAME)/js/$(NEWNAME).js
	mv test/example-test.js ../$(NEWNAME)/test/$(NEWNAME).js

getAngular:
	curl $(ANGULARURL) > ../$(NEWNAME)/js/angular.min.js
	curl $(ANGULARMOCKURL) > ../$(NEWNAME)/js/angular-mocks.js
