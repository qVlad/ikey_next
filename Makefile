#############################################################################
# Makefile for building: ikey_next
# Generated by qmake (2.01a) (Qt 4.7.4) on: ?? 15. ??? 19:47:29 2011
# Project:  ikey_next.pro
# Template: subdirs
# Command: d:\qtsdk\desktop\qt\4.7.4\mingw\bin\qmake.exe -spec d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\win32-g++ -o Makefile ikey_next.pro
#############################################################################

first: make_default
MAKEFILE      = Makefile
QMAKE         = d:\qtsdk\desktop\qt\4.7.4\mingw\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = $(COPY)
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = $(COPY_FILE)
INSTALL_PROGRAM = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = del
SYMLINK       = 
DEL_DIR       = rmdir
MOVE          = move
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
SUBTARGETS    =  \
		sub-gui

gui\$(MAKEFILE): 
	@$(CHK_DIR_EXISTS) gui\ $(MKDIR) gui\ 
	cd gui\ && $(QMAKE) c:\workspace\ikey_next\gui\gui.pro -spec d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\win32-g++ -o $(MAKEFILE)
sub-gui-qmake_all:  FORCE
	@$(CHK_DIR_EXISTS) gui\ $(MKDIR) gui\ 
	cd gui\ && $(QMAKE) c:\workspace\ikey_next\gui\gui.pro -spec d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\win32-g++ -o $(MAKEFILE)
sub-gui: gui\$(MAKEFILE) FORCE
	cd gui\ && $(MAKE) -f $(MAKEFILE)
sub-gui-make_default: gui\$(MAKEFILE) FORCE
	cd gui\ && $(MAKE) -f $(MAKEFILE) 
sub-gui-make_first: gui\$(MAKEFILE) FORCE
	cd gui\ && $(MAKE) -f $(MAKEFILE) first
sub-gui-all: gui\$(MAKEFILE) FORCE
	cd gui\ && $(MAKE) -f $(MAKEFILE) all
sub-gui-clean: gui\$(MAKEFILE) FORCE
	cd gui\ && $(MAKE) -f $(MAKEFILE) clean
sub-gui-distclean: gui\$(MAKEFILE) FORCE
	cd gui\ && $(MAKE) -f $(MAKEFILE) distclean
sub-gui-install_subtargets: gui\$(MAKEFILE) FORCE
	cd gui\ && $(MAKE) -f $(MAKEFILE) install
sub-gui-uninstall_subtargets: gui\$(MAKEFILE) FORCE
	cd gui\ && $(MAKE) -f $(MAKEFILE) uninstall

Makefile: ikey_next.pro  d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/win32-g++/qmake.conf d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/qconfig.pri \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/modules/qt_webkit_version.pri \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/qt_functions.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/qt_config.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/exclusive_builds.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/default_pre.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/win32/default_pre.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/debug.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/debug_and_release.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/default_post.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/win32/default_post.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/win32/rtti.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/win32/exceptions.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/win32/stl.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/shared.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/warn_on.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/qt.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/win32/thread.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/moc.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/win32/windows.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/resources.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/uic.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/yacc.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/lex.prf \
		d:/QtSDK/Desktop/Qt/4.7.4/mingw/mkspecs/features/include_source_dir.prf
	$(QMAKE) -spec d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\win32-g++ -o Makefile ikey_next.pro
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\qconfig.pri:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\modules\qt_webkit_version.pri:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\qt_functions.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\qt_config.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\exclusive_builds.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\default_pre.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\win32\default_pre.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\debug.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\debug_and_release.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\default_post.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\win32\default_post.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\win32\rtti.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\win32\exceptions.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\win32\stl.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\shared.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\warn_on.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\qt.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\win32\thread.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\moc.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\win32\windows.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\resources.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\uic.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\yacc.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\lex.prf:
d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\features\include_source_dir.prf:
qmake: qmake_all FORCE
	@$(QMAKE) -spec d:\QtSDK\Desktop\Qt\4.7.4\mingw\mkspecs\win32-g++ -o Makefile ikey_next.pro

qmake_all: sub-gui-qmake_all FORCE

make_default: sub-gui-make_default FORCE
make_first: sub-gui-make_first FORCE
all: sub-gui-all FORCE
clean: sub-gui-clean FORCE
distclean: sub-gui-distclean FORCE
	-$(DEL_FILE) Makefile
install_subtargets: sub-gui-install_subtargets FORCE
uninstall_subtargets: sub-gui-uninstall_subtargets FORCE

sub-gui-sub_Debug: gui\$(MAKEFILE)
	cd gui\ && $(MAKE) debug
debug: sub-gui-sub_Debug

sub-gui-sub_Release: gui\$(MAKEFILE)
	cd gui\ && $(MAKE) release
release: sub-gui-sub_Release

sub-gui-check: gui\$(MAKEFILE)
	cd gui\ && $(MAKE) check
check: sub-gui-check

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all
install: install_subtargets  FORCE

uninstall:  uninstall_subtargets FORCE

FORCE:

