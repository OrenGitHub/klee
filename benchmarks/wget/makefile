###########
# PROGRAM #
###########
PROGRAM = wget
PROGRAM_PATH = ./build

#################
# PROGRAM INPUT #
#################
PROGRAM_INPUT = -I dummy --sub-file ./myInput/Input.srt

#############
# GDB STUFF #
#############
GDB_SCRIPT = ./myGdbScripts/gdbCommands.txt

##################
# DEFAULT TARGET #
##################
.PHONY: compile_and_run
compile_and_run:
	@clear
	@setterm -term linux -fore blue
	@echo "****************************************************************"
	@echo "*                                                              *"
	@echo "* Run program with specially crafted input that causes failure *"
	@echo "*                                                              *"
	@echo "****************************************************************"
	@setterm -term linux -fore white
	cp ./mySourceFiles/vlc.c ./vlc-2.2.0/bin/vlc.c
	make -C ./build
	@setterm -term linux -fore blue
	@echo "****************************************************************"
	@echo "*                                                              *"
	@echo "* Run program with specially crafted input that causes failure *"
	@echo "*                                                              *"
	@echo "****************************************************************"
	@setterm -term linux -fore white
	gdb -x ${GDB_SCRIPT} --args \
	${PROGRAM_PATH}/${PROGRAM}  \
	${PROGRAM_INPUT}
PHONY: build_everything_from_scratch
build_everything_from_scratch:
	@clear
	@setterm -term linux -fore blue
	@echo "*************************************"
	@echo "*                                   *"
	@echo "* Build everything from scratch ... *"
	@echo "*                                   *"
	@echo "*************************************"
	@setterm -term linux -fore white
	./myBuildingScripts/build-step0-${PROGRAM}

