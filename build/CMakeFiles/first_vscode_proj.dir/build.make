# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dterrade/Documents/test/Test_vscode

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dterrade/Documents/test/Test_vscode/build

# Include any dependencies generated for this target.
include CMakeFiles/first_vscode_proj.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/first_vscode_proj.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/first_vscode_proj.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/first_vscode_proj.dir/flags.make

CMakeFiles/first_vscode_proj.dir/main.cpp.o: CMakeFiles/first_vscode_proj.dir/flags.make
CMakeFiles/first_vscode_proj.dir/main.cpp.o: ../main.cpp
CMakeFiles/first_vscode_proj.dir/main.cpp.o: CMakeFiles/first_vscode_proj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dterrade/Documents/test/Test_vscode/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/first_vscode_proj.dir/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/first_vscode_proj.dir/main.cpp.o -MF CMakeFiles/first_vscode_proj.dir/main.cpp.o.d -o CMakeFiles/first_vscode_proj.dir/main.cpp.o -c /Users/dterrade/Documents/test/Test_vscode/main.cpp

CMakeFiles/first_vscode_proj.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/first_vscode_proj.dir/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dterrade/Documents/test/Test_vscode/main.cpp > CMakeFiles/first_vscode_proj.dir/main.cpp.i

CMakeFiles/first_vscode_proj.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/first_vscode_proj.dir/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dterrade/Documents/test/Test_vscode/main.cpp -o CMakeFiles/first_vscode_proj.dir/main.cpp.s

# Object files for target first_vscode_proj
first_vscode_proj_OBJECTS = \
"CMakeFiles/first_vscode_proj.dir/main.cpp.o"

# External object files for target first_vscode_proj
first_vscode_proj_EXTERNAL_OBJECTS =

first_vscode_proj: CMakeFiles/first_vscode_proj.dir/main.cpp.o
first_vscode_proj: CMakeFiles/first_vscode_proj.dir/build.make
first_vscode_proj: CMakeFiles/first_vscode_proj.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dterrade/Documents/test/Test_vscode/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable first_vscode_proj"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/first_vscode_proj.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/first_vscode_proj.dir/build: first_vscode_proj
.PHONY : CMakeFiles/first_vscode_proj.dir/build

CMakeFiles/first_vscode_proj.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/first_vscode_proj.dir/cmake_clean.cmake
.PHONY : CMakeFiles/first_vscode_proj.dir/clean

CMakeFiles/first_vscode_proj.dir/depend:
	cd /Users/dterrade/Documents/test/Test_vscode/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dterrade/Documents/test/Test_vscode /Users/dterrade/Documents/test/Test_vscode /Users/dterrade/Documents/test/Test_vscode/build /Users/dterrade/Documents/test/Test_vscode/build /Users/dterrade/Documents/test/Test_vscode/build/CMakeFiles/first_vscode_proj.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/first_vscode_proj.dir/depend

