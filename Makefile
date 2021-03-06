BUILD_PATH = build
BUILD_DEBUG_FILE = debug
FILES_TO_COMPILE = main.cpp src/scene.cpp src/shape.cpp src/logger.cpp
ARGS = -g -pthread

compile: clean
	g++ $(FILES_TO_COMPILE) -o $(BUILD_PATH)/$(BUILD_DEBUG_FILE) -std=c++14 $(ARGS)

clean:
	rm -rf $(BUILD_PATH) && mkdir $(BUILD_PATH)

run:
	./$(BUILD_PATH)/$(BUILD_DEBUG_FILE)

remove-renders:
	rm *.vox *.debug *.log | exit 0