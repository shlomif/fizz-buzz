SHELL = /bin/bash

all:

test:
	prove -v Tests/*.{py,t}
