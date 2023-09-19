BIN = page-table-reader
CXXFLAGS = -O3 -Wall -g

.PHONY: all
all: $(BIN)

.PHONY: install
install:
	mkdir -p $(PREFIX)/bin
	install -t $(PREFIX)/bin $(BIN)
