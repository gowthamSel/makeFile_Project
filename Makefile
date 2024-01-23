# Makefile for creating a JAR file

# Java compiler
JAVAC = javac
# Jar utility
JAR = jar
# Directory where your .java files are located
SRC_DIR = src
# Directory where your .class files will be generated
BUILD_DIR = buildFiles
# Directory where your JAR file will be created
JAR_DIR = F:\gowthamCodingProjects\GOWTHAM\make_file_project\jarFiles
# Main class (replace with your actual main class)
MAIN_CLASS = src.Main
# JAR file name
JAR_FILE = Myjar.jar
# List of all Java source files
JAVA_FILES = $(wildcard $(SRC_DIR)/*.java)
# List of all compiled .class files
CLASS_FILES = $(patsubst $(SRC_DIR)/%.java,$(BUILD_DIR)/%.class,$(JAVA_FILES))
.PHONY: all clean
all: $(JAR_DIR)/$(JAR_FILE)
# Compile Java source files
$(BUILD_DIR)/%.class: $(SRC_DIR)/%.java
	$(JAVAC) -d $(BUILD_DIR) $<
# Create JAR file
$(JAR_DIR)/$(JAR_FILE): $(CLASS_FILES)
	$(JAR) cfe $(JAR_DIR)/$(JAR_FILE) $(MAIN_CLASS) -C $(BUILD_DIR) .
clean:
	rm -rf $(BUILD_DIR)/* $(JAR_DIR)/*

