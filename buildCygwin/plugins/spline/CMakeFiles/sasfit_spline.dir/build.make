# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/user/SASfitGit/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/user/SASfitGit/buildCygwin

# Include any dependencies generated for this target.
include plugins/spline/CMakeFiles/sasfit_spline.dir/depend.make

# Include the progress variables for this target.
include plugins/spline/CMakeFiles/sasfit_spline.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/spline/CMakeFiles/sasfit_spline.dir/flags.make

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj: plugins/spline/CMakeFiles/sasfit_spline.dir/flags.make
plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj: C:/user/SASfitGit/src/plugins/spline/sasfit_sd_akima8.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/user/SASfitGit/buildCygwin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj"
	cd C:/user/SASfitGit/buildCygwin/plugins/spline && C:/cygwin64/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj   -c C:/user/SASfitGit/src/plugins/spline/sasfit_sd_akima8.c

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj.requires:

.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj.requires

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj.provides: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj.requires
	$(MAKE) -f plugins/spline/CMakeFiles/sasfit_spline.dir/build.make plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj.provides.build
.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj.provides

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj.provides.build: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj


plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj: plugins/spline/CMakeFiles/sasfit_spline.dir/flags.make
plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj: C:/user/SASfitGit/src/plugins/spline/sasfit_sd_cspline8.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/user/SASfitGit/buildCygwin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj"
	cd C:/user/SASfitGit/buildCygwin/plugins/spline && C:/cygwin64/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj   -c C:/user/SASfitGit/src/plugins/spline/sasfit_sd_cspline8.c

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj.requires:

.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj.requires

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj.provides: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj.requires
	$(MAKE) -f plugins/spline/CMakeFiles/sasfit_spline.dir/build.make plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj.provides.build
.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj.provides

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj.provides.build: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj


plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj: plugins/spline/CMakeFiles/sasfit_spline.dir/flags.make
plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj: C:/user/SASfitGit/src/plugins/spline/sasfit_ff_akima8.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/user/SASfitGit/buildCygwin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj"
	cd C:/user/SASfitGit/buildCygwin/plugins/spline && C:/cygwin64/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj   -c C:/user/SASfitGit/src/plugins/spline/sasfit_ff_akima8.c

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj.requires:

.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj.requires

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj.provides: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj.requires
	$(MAKE) -f plugins/spline/CMakeFiles/sasfit_spline.dir/build.make plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj.provides.build
.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj.provides

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj.provides.build: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj


plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj: plugins/spline/CMakeFiles/sasfit_spline.dir/flags.make
plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj: C:/user/SASfitGit/src/plugins/spline/sasfit_ff_cspline8.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/user/SASfitGit/buildCygwin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj"
	cd C:/user/SASfitGit/buildCygwin/plugins/spline && C:/cygwin64/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj   -c C:/user/SASfitGit/src/plugins/spline/sasfit_ff_cspline8.c

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj.requires:

.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj.requires

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj.provides: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj.requires
	$(MAKE) -f plugins/spline/CMakeFiles/sasfit_spline.dir/build.make plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj.provides.build
.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj.provides

plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj.provides.build: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj


plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj: plugins/spline/CMakeFiles/sasfit_spline.dir/flags.make
plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj: C:/user/SASfitGit/src/plugins/spline/interface.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/user/SASfitGit/buildCygwin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj"
	cd C:/user/SASfitGit/buildCygwin/plugins/spline && C:/cygwin64/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sasfit_spline.dir/interface.c.obj   -c C:/user/SASfitGit/src/plugins/spline/interface.c

plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sasfit_spline.dir/interface.c.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_PREPROCESSED_SOURCE

plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sasfit_spline.dir/interface.c.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_C_CREATE_ASSEMBLY_SOURCE

plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj.requires:

.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj.requires

plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj.provides: plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj.requires
	$(MAKE) -f plugins/spline/CMakeFiles/sasfit_spline.dir/build.make plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj.provides.build
.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj.provides

plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj.provides.build: plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj


# Object files for target sasfit_spline
sasfit_spline_OBJECTS = \
"CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj" \
"CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj" \
"CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj" \
"CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj" \
"CMakeFiles/sasfit_spline.dir/interface.c.obj"

# External object files for target sasfit_spline
sasfit_spline_EXTERNAL_OBJECTS =

C:/user/SASfitGit/src/plugins/spline/lib/sasfit_spline.dll: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj
C:/user/SASfitGit/src/plugins/spline/lib/sasfit_spline.dll: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj
C:/user/SASfitGit/src/plugins/spline/lib/sasfit_spline.dll: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj
C:/user/SASfitGit/src/plugins/spline/lib/sasfit_spline.dll: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj
C:/user/SASfitGit/src/plugins/spline/lib/sasfit_spline.dll: plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj
C:/user/SASfitGit/src/plugins/spline/lib/sasfit_spline.dll: plugins/spline/CMakeFiles/sasfit_spline.dir/build.make
C:/user/SASfitGit/src/plugins/spline/lib/sasfit_spline.dll: C:/user/SASfitGit/src/gsl/windows_amd64/lib/libgsl.a
C:/user/SASfitGit/src/plugins/spline/lib/sasfit_spline.dll: C:/user/SASfitGit/src/gsl/windows_amd64/lib/libgslcblas.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/user/SASfitGit/buildCygwin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C shared module C:/user/SASfitGit/src/plugins/spline/lib/sasfit_spline.dll"
	cd C:/user/SASfitGit/buildCygwin/plugins/spline && C:/cygwin64/bin/cc    -shared  -o C:/user/SASfitGit/src/plugins/spline/lib/sasfit_spline.dll $(sasfit_spline_OBJECTS) $(sasfit_spline_EXTERNAL_OBJECTS) C:/user/SASfitGit/src/gsl/windows_amd64/lib/libgsl.a C:/user/SASfitGit/src/gsl/windows_amd64/lib/libgslcblas.a 
	cd C:/user/SASfitGit/buildCygwin/plugins/spline && "C:/Program Files/CMake/bin/cmake.exe" -E copy C:/user/SASfitGit/src/plugins/spline/lib/./sasfit_spline.dll C:/user/SASfitGit/plugins/sasfit_spline.dll
	cd C:/user/SASfitGit/buildCygwin/plugins/spline && "C:/Program Files/CMake/bin/cmake.exe" -E copy C:/user/SASfitGit/src/plugins/spline/include/sasfit_spline.h C:/user/SASfitGit/plugins

# Rule to build all files generated by this target.
plugins/spline/CMakeFiles/sasfit_spline.dir/build: C:/user/SASfitGit/src/plugins/spline/lib/sasfit_spline.dll

.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/build

plugins/spline/CMakeFiles/sasfit_spline.dir/requires: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_akima8.c.obj.requires
plugins/spline/CMakeFiles/sasfit_spline.dir/requires: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_sd_cspline8.c.obj.requires
plugins/spline/CMakeFiles/sasfit_spline.dir/requires: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_akima8.c.obj.requires
plugins/spline/CMakeFiles/sasfit_spline.dir/requires: plugins/spline/CMakeFiles/sasfit_spline.dir/sasfit_ff_cspline8.c.obj.requires
plugins/spline/CMakeFiles/sasfit_spline.dir/requires: plugins/spline/CMakeFiles/sasfit_spline.dir/interface.c.obj.requires

.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/requires

plugins/spline/CMakeFiles/sasfit_spline.dir/clean:
	cd C:/user/SASfitGit/buildCygwin/plugins/spline && $(CMAKE_COMMAND) -P CMakeFiles/sasfit_spline.dir/cmake_clean.cmake
.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/clean

plugins/spline/CMakeFiles/sasfit_spline.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/user/SASfitGit/src C:/user/SASfitGit/src/plugins/spline C:/user/SASfitGit/buildCygwin C:/user/SASfitGit/buildCygwin/plugins/spline C:/user/SASfitGit/buildCygwin/plugins/spline/CMakeFiles/sasfit_spline.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/spline/CMakeFiles/sasfit_spline.dir/depend

