all: build

src:
	find ./src/main -type f -name "*.java" > sources.txt

build: clean
	javac -d ./build/ @sources.txt

run:
	java -cp ./build main.java.Simulator

clean:
	rm -rf build/

.PHONY: src