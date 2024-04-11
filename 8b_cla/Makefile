build:
	mkdir build
	iverilog -o build/hello main.v cla.v node.v

clean:
	rm -rf build

run:
	vvp  build/hello

test:
	vvp  build/hello | python3 ./tools/check_8b_add.py

.PHONY: clean build
