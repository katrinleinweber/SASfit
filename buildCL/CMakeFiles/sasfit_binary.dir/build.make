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
CMAKE_BINARY_DIR = C:/user/SASfitGit/buildCL

# Utility rule file for sasfit_binary.

# Include the progress variables for this target.
include CMakeFiles/sasfit_binary.dir/progress.make

CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/lib/libsasfit.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/anisotropic_objects/lib/libsasfit_anisotropic_objects.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/baba_ahmed/lib/libsasfit_baba_ahmed.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/boucherprofile/lib/libsasfit_boucherprofile.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/ferrofluid/lib/libsasfit_ferrofluid.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/fractal_series/lib/libsasfit_fractal_series.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/fuzzysphere/lib/libsasfit_fuzzysphere.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/helix/lib/libsasfit_helix.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/juelichcoreshell/lib/libsasfit_juelichcoreshell.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/kratky_sphere/lib/libsasfit_kratky_sphere.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/langevin_polaris/lib/libsasfit_langevin_polaris.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/local_planar_micelles/lib/libsasfit_local_planar_micelles.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/lognorm_fp/lib/libsasfit_lognorm_fp.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/magnetic_correlation/lib/libsasfit_magnetic_correlation.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/magneticfieldalignedvesicle/lib/libsasfit_magneticfieldalignedvesicle.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/non_particular/lib/libsasfit_non_particular.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/oientated_primitive_objects/lib/libsasfit_oientated_primitive_objects.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/ordered_particle_systems/lib/libsasfit_ordered_particle_systems.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/parallel_epiped/lib/libsasfit_parallel_epiped.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/peak/lib/libsasfit_peak.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/pearl_necklace/lib/libsasfit_pearl_necklace.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/rod_micelle_prism/lib/libsasfit_rod_micelle_prism.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/sesans/lib/libsasfit_sesans.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/simple_clusters/lib/libsasfit_simple_clusters.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/sphere_with_3_shells/lib/libsasfit_sphere_with_3_shells.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/spline/lib/libsasfit_spline.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/sq_of_oz_solver/lib/libsasfit_sq_of_oz_solver.dll
CMakeFiles/sasfit_binary: C:/user/SASfitGit/src/plugins/triax_ellip_shell/lib/libsasfit_triax_ellip_shell.dll
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:/user/SASfitGit/buildCL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Copying sasfit binary files to a separate directory ..."
	"c:/Program Files/CMake/bin/cmake.exe" -D SASFIT_ROOT_DIR:PATH=C:/user/SASfitGit -D SASKIT_FILENAME:STRING=saskit_windows_amd64.exe -D SASFIT_EXEC_FILENAME:STRING=sasfit.exe -D SASFIT_DEBUG:BOOL= -P C:/user/SASfitGit/src/cmake/create_starpack.cmake "c:/Program Files/CMake/bin/cmake.exe" -D SASFIT_ROOT_DIR:PATH=C:/user/SASfitGit -D SASFIT_PCKG_DIR_POSTFIX:STRING=windows_amd64 -D SASFIT_LIST_FILE:FILEPATH=C:/user/SASfitGit/src/cmake/create_bin_package.list.tmp -D "CM_GEN:STRING=Unix Makefiles" -D SASFIT_VERSION:STRING=0.94.10 -P C:/user/SASfitGit/src/cmake/create_package.cmake

sasfit_binary: CMakeFiles/sasfit_binary
sasfit_binary: CMakeFiles/sasfit_binary.dir/build.make

.PHONY : sasfit_binary

# Rule to build all files generated by this target.
CMakeFiles/sasfit_binary.dir/build: sasfit_binary

.PHONY : CMakeFiles/sasfit_binary.dir/build

CMakeFiles/sasfit_binary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sasfit_binary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sasfit_binary.dir/clean

CMakeFiles/sasfit_binary.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/user/SASfitGit/src C:/user/SASfitGit/src C:/user/SASfitGit/buildCL C:/user/SASfitGit/buildCL C:/user/SASfitGit/buildCL/CMakeFiles/sasfit_binary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sasfit_binary.dir/depend

