# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\Administrator\scoop\apps\cmake\3.31.0\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\Administrator\scoop\apps\cmake\3.31.0\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Administrator\Desktop\project\notepad

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug

# Include any dependencies generated for this target.
include CMakeFiles/Notepad.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Notepad.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Notepad.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Notepad.dir/flags.make

Notepad_autogen/timestamp: C:/Qt/6.8.0/mingw_64/bin/moc.exe
Notepad_autogen/timestamp: CMakeFiles/Notepad.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target Notepad"
	C:\Users\Administrator\scoop\apps\cmake\3.31.0\bin\cmake.exe -E cmake_autogen C:/Users/Administrator/Desktop/project/notepad/build/Desktop_x86_windows_msys_pe_64bit-Debug/CMakeFiles/Notepad_autogen.dir/AutogenInfo.json Debug
	C:\Users\Administrator\scoop\apps\cmake\3.31.0\bin\cmake.exe -E touch C:/Users/Administrator/Desktop/project/notepad/build/Desktop_x86_windows_msys_pe_64bit-Debug/Notepad_autogen/timestamp

CMakeFiles/Notepad.dir/codegen:
.PHONY : CMakeFiles/Notepad.dir/codegen

CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.obj: CMakeFiles/Notepad.dir/flags.make
CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.obj: CMakeFiles/Notepad.dir/includes_CXX.rsp
CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.obj: Notepad_autogen/mocs_compilation.cpp
CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.obj: CMakeFiles/Notepad.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.obj -MF CMakeFiles\Notepad.dir\Notepad_autogen\mocs_compilation.cpp.obj.d -o CMakeFiles\Notepad.dir\Notepad_autogen\mocs_compilation.cpp.obj -c C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug\Notepad_autogen\mocs_compilation.cpp

CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug\Notepad_autogen\mocs_compilation.cpp > CMakeFiles\Notepad.dir\Notepad_autogen\mocs_compilation.cpp.i

CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug\Notepad_autogen\mocs_compilation.cpp -o CMakeFiles\Notepad.dir\Notepad_autogen\mocs_compilation.cpp.s

CMakeFiles/Notepad.dir/main.cpp.obj: CMakeFiles/Notepad.dir/flags.make
CMakeFiles/Notepad.dir/main.cpp.obj: CMakeFiles/Notepad.dir/includes_CXX.rsp
CMakeFiles/Notepad.dir/main.cpp.obj: C:/Users/Administrator/Desktop/project/notepad/main.cpp
CMakeFiles/Notepad.dir/main.cpp.obj: CMakeFiles/Notepad.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Notepad.dir/main.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Notepad.dir/main.cpp.obj -MF CMakeFiles\Notepad.dir\main.cpp.obj.d -o CMakeFiles\Notepad.dir\main.cpp.obj -c C:\Users\Administrator\Desktop\project\notepad\main.cpp

CMakeFiles/Notepad.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Notepad.dir/main.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Administrator\Desktop\project\notepad\main.cpp > CMakeFiles\Notepad.dir\main.cpp.i

CMakeFiles/Notepad.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Notepad.dir/main.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Administrator\Desktop\project\notepad\main.cpp -o CMakeFiles\Notepad.dir\main.cpp.s

CMakeFiles/Notepad.dir/mainwindow.cpp.obj: CMakeFiles/Notepad.dir/flags.make
CMakeFiles/Notepad.dir/mainwindow.cpp.obj: CMakeFiles/Notepad.dir/includes_CXX.rsp
CMakeFiles/Notepad.dir/mainwindow.cpp.obj: C:/Users/Administrator/Desktop/project/notepad/mainwindow.cpp
CMakeFiles/Notepad.dir/mainwindow.cpp.obj: CMakeFiles/Notepad.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Notepad.dir/mainwindow.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Notepad.dir/mainwindow.cpp.obj -MF CMakeFiles\Notepad.dir\mainwindow.cpp.obj.d -o CMakeFiles\Notepad.dir\mainwindow.cpp.obj -c C:\Users\Administrator\Desktop\project\notepad\mainwindow.cpp

CMakeFiles/Notepad.dir/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Notepad.dir/mainwindow.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Administrator\Desktop\project\notepad\mainwindow.cpp > CMakeFiles\Notepad.dir\mainwindow.cpp.i

CMakeFiles/Notepad.dir/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Notepad.dir/mainwindow.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Administrator\Desktop\project\notepad\mainwindow.cpp -o CMakeFiles\Notepad.dir\mainwindow.cpp.s

# Object files for target Notepad
Notepad_OBJECTS = \
"CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.obj" \
"CMakeFiles/Notepad.dir/main.cpp.obj" \
"CMakeFiles/Notepad.dir/mainwindow.cpp.obj"

# External object files for target Notepad
Notepad_EXTERNAL_OBJECTS =

Notepad.exe: CMakeFiles/Notepad.dir/Notepad_autogen/mocs_compilation.cpp.obj
Notepad.exe: CMakeFiles/Notepad.dir/main.cpp.obj
Notepad.exe: CMakeFiles/Notepad.dir/mainwindow.cpp.obj
Notepad.exe: CMakeFiles/Notepad.dir/build.make
Notepad.exe: C:/Qt/6.8.0/mingw_64/lib/libQt6Widgets.a
Notepad.exe: C:/Qt/6.8.0/mingw_64/lib/libQt6Gui.a
Notepad.exe: C:/Qt/6.8.0/mingw_64/lib/libQt6Core.a
Notepad.exe: CMakeFiles/Notepad.dir/linkLibs.rsp
Notepad.exe: CMakeFiles/Notepad.dir/objects1.rsp
Notepad.exe: CMakeFiles/Notepad.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable Notepad.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Notepad.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Notepad.dir/build: Notepad.exe
.PHONY : CMakeFiles/Notepad.dir/build

CMakeFiles/Notepad.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Notepad.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Notepad.dir/clean

CMakeFiles/Notepad.dir/depend: Notepad_autogen/timestamp
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Administrator\Desktop\project\notepad C:\Users\Administrator\Desktop\project\notepad C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug C:\Users\Administrator\Desktop\project\notepad\build\Desktop_x86_windows_msys_pe_64bit-Debug\CMakeFiles\Notepad.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Notepad.dir/depend

