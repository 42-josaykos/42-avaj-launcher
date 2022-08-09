all: build

find:
	find ./src/main -type f -name "*.java" > sources.txt
	find ./src/test -type f -name "*.java" > unittests.txt

build_main:
	javac -d ./build/ @sources.txt

build_test: build_main
	javac -d build -cp lib/junit-platform-console-standalone-1.9.0.jar:build @unittests.txt

build: find build_main build_test

run:
	java -cp ./build main.java.simulator.Simulator

test:
	java -jar lib/junit-platform-console-standalone-1.9.0.jar --class-path build --scan-class-path

clean:
	rm -rf build/

fclean: clean
	rm sources.txt unittests.txt

.PHONY: find