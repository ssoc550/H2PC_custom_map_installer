RequestExecutionLevel user


!include "MUI.nsh"

!define MUI_ABORTWARNING # This will warn the user if he exits from the installer.

!insertmacro MUI_PAGE_WELCOME # Welcome to the installer page.
!insertmacro MUI_PAGE_DIRECTORY # In which folder install page.
!insertmacro MUI_PAGE_INSTFILES # Installing page.
!insertmacro MUI_PAGE_FINISH # Finished installation page.

!insertmacro MUI_LANGUAGE "English"

Name "hELLoo 2" # Name of the installer (usually the name of the application to install).
OutFile "hELLoo 2.exe" # Name of the installer's file.
InstallDir "$Documents\My Games\Halo 2\Maps" # Default installing folder
ShowInstDetails show # This will always show the installation details.

Section "hELLoo 2" # In this section add your files or your folders.
# Add your files with "File (Name of the file)", example: "File "$Documents\My Games\Halo 2\Maps\Halo 2 Project Cartographer Custom Map Pack.exe"" ($DESKTOP is Desktop folder); or add your folders always with "File (Name of the folder)\*", always add your folders with an asterisk, example: "File /r $DESKTOP\MyApp\*" (this will add its files and (with /r its subfolders)).
SectionEnd

# default section start
Section

# define output path
SetOutPath $INSTDIR

# specify file to go in output path
File /oname=$the pit v2.map
File "aso.map"


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


SectionEnd
