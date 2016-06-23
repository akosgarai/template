NEWNAME = 'testname'
ANGULARVERSION = '1.4.9'

ANGULARURL = 'https://ajax.googleapis.com/ajax/libs/angularjs/$(ANGULARVERSION)/angular.min.js'
ANGULARMOCKURL = 'http://ajax.googleapis.com/ajax/libs/angularjs/$(ANGULARVERSION)/angular-mocks.js'

all:
	@echo "Type: make install"

createNewProject:
	@echo "Create new project with name: $(NEWNAME), and angular version: $(ANGULARVERSION)"
	sed 's/example/$(NEWNAME)/g' example.html > ../$(NEWNAME)/$(NEWNAME).html
	sed 's/example/$(NEWNAME)/g' karma.conf.js > ../$(NEWNAME)/karma.conf.js
	sed 's/example/$(NEWNAME)/g' js/example.js > ../$(NEWNAME)/js/$(NEWNAME).js
	sed 's/example/$(NEWNAME)/g' test/example-test.js > ../$(NEWNAME)/test/$(NEWNAME)-test.js

install: createNewDir createNewProject getAngular

createNewDir:
	mkdir ../$(NEWNAME)
	mkdir ../$(NEWNAME)/js
	mkdir ../$(NEWNAME)/test

getAngular:
	curl $(ANGULARURL) > ../$(NEWNAME)/js/angular.min.js
	curl $(ANGULARMOCKURL) > ../$(NEWNAME)/js/angular-mocks.js
