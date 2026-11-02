# Compiles the COBOL batch inside a GnuCOBOL container, so no local cobc is needed.
# The image is chosen in the haunted-bank spec; override with: make build COBOL_IMAGE=...
COBOL_IMAGE ?= REPLACE_WITH_GNUCOBOL_IMAGE
BUILD_DIR   := build

.PHONY: build clean

build:
	@mkdir -p $(BUILD_DIR)
	docker run --rm -v "$(CURDIR)":/work -w /work $(COBOL_IMAGE) \
		cobc -x -I copybooks -o $(BUILD_DIR)/settle src/SETTLE.cbl

clean:
	rm -rf $(BUILD_DIR)
