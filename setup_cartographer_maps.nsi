RequestExecutionLevel user

!include "MUI.nsh"

!define MUI_ABORTWARNING # This will warn the user if he exits from the installer.

!insertmacro MUI_PAGE_WELCOME # Welcome to the installer page.
!insertmacro MUI_PAGE_DIRECTORY # In which folder install page.
!insertmacro MUI_PAGE_INSTFILES # Installing page.
!insertmacro MUI_PAGE_FINISH # Finished installation page.

!insertmacro MUI_LANGUAGE "English"

Name "H2PC Custom Map Pack" # Name of the installer (usually the name of the application to install).
OutFile "H2PC Custom Map Pack.exe" # Name of the installer's file.
InstallDir "$Documents\My Games\Halo 2\Maps" # Default installing folder
ShowInstDetails show # This will always show the installation details.

Section "H2PC Custom Map Pack" # In this section add your files or your folders.
# Add your files with "File (Name of the file)", example: "File "$Documents\My Games\Halo 2\Maps\Halo 2 Project Cartographer Custom Map Pack.exe"" ($DESKTOP is Desktop folder); or add your folders always with "File (Name of the folder)\*", always add your folders with an asterisk, example: "File /r $DESKTOP\MyApp\*" (this will add its files and (with /r its subfolders)).
SectionEnd

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
Delete $INSTDIR\vangard.map
Delete $INSTDIR\wetworks2.map
Delete $INSTDIR\xf01.map

SectionEnd
