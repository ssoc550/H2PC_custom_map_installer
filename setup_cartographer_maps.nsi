# define installer name
OutFile "Halo 2 Project Cartographer Custom Map Pack.exe"

# set desktop as install directory
InstallDir "$Documents\My Games\Halo 2\Maps"


!define MUI_ICON "h2pc_logo.ico"
!define MUI_HEADERIMAGE_BITMAP "h2pc_logo.png"

# default section start
Section

# define output path
SetOutPath $INSTDIR

# specify file to go in output path
File "aso.map"
File "beach_battle.map"
File "blastcastle.map"
File "blood_3.map"
File "boneyardv5.map"
File "construct.map"
File "corpsys.map"
File "crater.map"
File "crossroads.map"
File "deepfreeze.map"
File "desolation.map"
File "foundry.map"
File "frostbite.map"
File "grounded.map"
File hanghigher.map
File icefields.map
File nightfall.map
File octagon.map
File paintballx2_beta.map
File parallax.map
File SideWinder.map
File vangard.map
File wetworks2.map
File xf01.map


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
Delete $INSTDIR\aso.map
Delete $INSTDIR\beach_battle.map
Delete $INSTDIR\blastcastle.map
Delete $INSTDIR\blood_3.map
Delete $INSTDIR\boneyardv5.map
Delete $INSTDIR\construct.map
Delete $INSTDIR\corpsys.map
Delete $INSTDIR\crater.map
Delete $INSTDIR\crossroads.map
Delete $INSTDIR\deepfreeze.map
Delete $INSTDIR\desolation.map
Delete $INSTDIR\foundry.map
Delete $INSTDIR\frostbite.map
Delete $INSTDIR\grounded.map
Delete $INSTDIR\hanghigher.map
Delete $INSTDIR\icefields.map
Delete $INSTDIR\nightfall.map
Delete $INSTDIR\octagon.map
Delete $INSTDIR\paintballx2_beta.map
Delete $INSTDIR\parallax.map
Delete $INSTDIR\SideWinder.map
Delete $INSTDIR\wetworks2.map
Delete $INSTDIR\xf01.map

SectionEnd
