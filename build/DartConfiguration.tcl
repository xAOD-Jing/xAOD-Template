# This file is configured by CMake automatically as DartConfiguration.tcl
# If you choose not to use CMake, this file may be hand configured, by
# filling in the required variables.


# Configuration directories and files
SourceDirectory: /afs/ihep.ac.cn/users/j/jingli/private/xAOD-Template/source
BuildDirectory: /afs/ihep.ac.cn/users/j/jingli/private/xAOD-Template/build

# Where to place the cost data store
CostDataFile: 

# Site is something like machine.domain, i.e. pragmatic.crd
Site: lxslc604.ihep.ac.cn

# Build name is osname-revision-compiler, i.e. Linux-2.4.2-2smp-c++
BuildName: Linux-g++

# Submission information
IsCDash: 
CDashVersion: 
QueryCDashVersion: 
DropSite: 
DropLocation: 
DropSiteUser: 
DropSitePassword: 
DropSiteMode: 
DropMethod: http
TriggerSite: 
ScpCommand: /afs/ihep.ac.cn/soft/common/gcc/v01-17-05/mysql/usr/bin/scp

# Dashboard start time
NightlyStartTime: 00:00:00 EDT

# Commands for the build/test/submit cycle
ConfigureCommand: "/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/Cmake/3.8.1/Linux-x86_64/bin/cmake" "/afs/ihep.ac.cn/users/j/jingli/private/xAOD-Template/source"
MakeCommand: /cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/x86_64/Cmake/3.8.1/Linux-x86_64/bin/cmake --build . --config "${CTEST_CONFIGURATION_TYPE}"
DefaultCTestConfigurationType: Release

# version control
UpdateVersionOnly: 

# CVS options
# Default is "-d -P -A"
CVSCommand: /afs/ihep.ac.cn/soft/common/gcc/v01-17-05/mysql/usr/bin/cvs
CVSUpdateOptions: -d -A -P

# Subversion options
SVNCommand: /afs/ihep.ac.cn/soft/common/gcc/v01-17-05/mysql/usr/bin/svn
SVNOptions: 
SVNUpdateOptions: 

# Git options
GITCommand: /afs/ihep.ac.cn/soft/common/gcc/v01-17-05/mysql/usr/bin/git
GITInitSubmodules: 
GITUpdateOptions: 
GITUpdateCustom: 

# Perforce options
P4Command: P4COMMAND-NOTFOUND
P4Client: 
P4Options: 
P4UpdateOptions: 
P4UpdateCustom: 

# Generic update command
UpdateCommand: 
UpdateOptions: 
UpdateType: 

# Compiler info
Compiler: /cvmfs/atlas.cern.ch/repo/sw/software/21.2/sw/lcg/releases/gcc/6.2.0/x86_64-slc6/bin/g++
CompilerVersion: 6.2.0

# Dynamic analysis (MemCheck)
PurifyCommand: 
ValgrindCommand: 
ValgrindCommandOptions: 
MemoryCheckType: 
MemoryCheckSanitizerOptions: 
MemoryCheckCommand: /afs/ihep.ac.cn/soft/common/gcc/v01-17-05/mysql/usr/bin/valgrind
MemoryCheckCommandOptions: 
MemoryCheckSuppressionFile: 

# Coverage
CoverageCommand: /cvmfs/atlas.cern.ch/repo/sw/software/21.2/sw/lcg/releases/gcc/6.2.0/x86_64-slc6/bin/gcov
CoverageExtraFlags: -l

# Cluster commands
SlurmBatchCommand: /afs/ihep.ac.cn/soft/common/gcc/v01-17-05/mysql/usr/bin/sbatch
SlurmRunCommand: /afs/ihep.ac.cn/soft/common/gcc/v01-17-05/mysql/usr/bin/srun

# Testing options
# TimeOut is the amount of time in seconds to wait for processes
# to complete during testing.  After TimeOut seconds, the
# process will be summarily terminated.
# Currently set to 25 minutes
TimeOut: 1500

# During parallel testing CTest will not start a new test if doing
# so would cause the system load to exceed this value.
TestLoad: 

UseLaunchers: 
CurlOptions: 
# warning, if you add new options here that have to do with submit,
# you have to update cmCTestSubmitCommand.cxx

# For CTest submissions that timeout, these options
# specify behavior for retrying the submission
CTestSubmitRetryDelay: 5
CTestSubmitRetryCount: 3
