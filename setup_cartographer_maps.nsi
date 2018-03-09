# define installer name
OutFile "Halo 2 Project Cartographer Custom Map Pack.exe"

# set desktop as install directory
InstallDir "$Documents\My Games\Halo 2\Maps"

# default section start
Section

# define output path
SetOutPath $INSTDIR

# specify file to go in output path
File octagon.map
File grounded.map
File blastcastle.map
File construct.map
File corpsys.map

# define uninstaller name
WriteUninstaller $INSTDIR\uninstaller.exe


#-------
# default section end
SectionEnd

# create a section to define what the uninstaller does.
# the section will always be named "Uninstall"
Section "Uninstall"

# Always delete uninstaller first
Delete $INSTDIR\uninstaller.exe

# now delete installed file
Delete $INSTDIR\octagon.map
Delete $INSTDIR\grounded.map
Delete $INSTDIR\blastcastle.map
Delete $INSTDIR\construct.map
Delete $INSTDIR\corpsys.map

SectionEnd
