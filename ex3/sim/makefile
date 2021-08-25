#=========================================
# Declarations
#=========================================
TOP = sim_top.v
RTL = file_list.f

#------ Define verilog ------
DUMPFSDB = ON

#------ Tools ------
SIMTOOL = ncverilog
DBYTOOL = verdi

#------ Modes -----
ADD       = ON
SUBSTRACT = OFF

#----- RTL -----
ifeq ($(ADD), ON)
	RTL = ./file_list/file_list1.f
else
	RTL = ./file_list/file_list2.f
endif

#------ Options ------
ifeq ($(DUMPFSDB), ON)
	OPT = +access+rwc
else
	OPT =
endif

#------ Define verilog ------
DEF = +define+DUMPFSDB_$(DUMPFSDB) \
      +define+ADD_$(ADD)           \
      +define+SUBSTRACT_$(SUBSTRACT)

.PHONY: all

nc:
	$(SIMTOOL) $(TOP) -f $(RTL) $(OPT) $(DEF) -l system.log
	@mv *.fsdb fsdb
dby:
	$(DBYTOOL) $(TOP) -f $(RTL) $(DEF) &

clean:
	@rm -rf *.log *.conf *.history verdiLog INCA_libs

