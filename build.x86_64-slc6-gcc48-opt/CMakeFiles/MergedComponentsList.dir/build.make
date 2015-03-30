# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /afs/cern.ch/sw/lcg/contrib/CMake/2.8.12.2/Linux-i386/bin/cmake

# The command to remove a file.
RM = /afs/cern.ch/sw/lcg/contrib/CMake/2.8.12.2/Linux-i386/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /afs/cern.ch/sw/lcg/contrib/CMake/2.8.12.2/Linux-i386/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt

# Utility rule file for MergedComponentsList.

# Include the progress variables for this target.
include CMakeFiles/MergedComponentsList.dir/progress.make

CMakeFiles/MergedComponentsList: lib/FCCSW.components

lib/FCCSW.components: FWCore/FWCorePlugins.components
lib/FCCSW.components: Examples/Examples.components
lib/FCCSW.components: Generation/Generation.components
lib/FCCSW.components: Reconstruction/Reconstruction.components
lib/FCCSW.components: Simulation/Simulation.components
	$(CMAKE_COMMAND) -E cmake_progress_report /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating lib/FCCSW.components"
	/afs/cern.ch/sw/lcg/releases/LCG_68/Python/2.7.6/x86_64-slc6-gcc48-opt/bin/python /afs/cern.ch/user/j/jhrdinka/FCC/GAUDI/GAUDI_v25r2/InstallArea/x86_64-slc6-gcc48-opt/scripts/merge_files.py --no-stamp /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/FWCore/FWCorePlugins.components /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/Examples/Examples.components /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/Generation/Generation.components /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/Reconstruction/Reconstruction.components /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/Simulation/Simulation.components /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/lib/FCCSW.components

MergedComponentsList: CMakeFiles/MergedComponentsList
MergedComponentsList: lib/FCCSW.components
MergedComponentsList: CMakeFiles/MergedComponentsList.dir/build.make
.PHONY : MergedComponentsList

# Rule to build all files generated by this target.
CMakeFiles/MergedComponentsList.dir/build: MergedComponentsList
.PHONY : CMakeFiles/MergedComponentsList.dir/build

CMakeFiles/MergedComponentsList.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MergedComponentsList.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MergedComponentsList.dir/clean

CMakeFiles/MergedComponentsList.dir/depend:
	cd /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt /afs/cern.ch/user/j/jhrdinka/FCC/FCCSW/build.x86_64-slc6-gcc48-opt/CMakeFiles/MergedComponentsList.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MergedComponentsList.dir/depend

