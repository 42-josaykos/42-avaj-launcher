all: build

src:
	find ./src -type f -name "*.java" > sources.txt

build: clean
	javac -d ./build/ @sources.txt

run:
	java -cp ./build com.avaj.simulator.Simulator
	
clean:
	rm -rf build/