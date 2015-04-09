#!/bin/bash
#
# A script to semi-automate the manual build process for NUnit tests
# NOT using make

#Compile files into a library
dmcs *.cs -reference:/Users/markbrown/Documents/Kevin/Libraries/NUnit-2.6.4/bin/nunit.framework.dll -target:library -out:output/tests.dll

#Link
# -a includes assembly files
monolinker -a /Users/markbrown/Documents/Kevin/Libraries/NUnit-2.6.4/bin/nunit.framework.dll -a output/tests.dll

#Use mono to run the nunit-console executable (a Windows file!) and the dll
mono /Users/markbrown/Documents/Kevin/Libraries/NUnit-2.6.4/bin/nunit-console.exe output/tests.dll
