QPROP_SRC = $(QPROP_HOME)/src
QPROP_BIN = $(QPROP_HOME)/bin

common_flags = -std=c++0x
common_inc = -I$(QPROP_SRC)/base 
common_lib = -L$(QPROP_SRC)/../lib/x86_64 -lqprop

targets = print-imagpot print-scalarpot

all: install

#print-imagpot: libqprop.a print-imagpot.cc print-imagpot-main.cc print-imagpot.hh
print-imagpot: print-imagpot-main.cc libqprop.a
	$(CXX) $(common_flags) -o $@ $< $(common_inc) $(common_lib)

print-scalarpot: print-scalarpot-main.cc libqprop.a
	$(CXX) $(common_flags) -o $@ $< $(common_inc) $(common_lib)

install: $(targets)
	if [ ! -d "$(QPROP_BIN)" ]; then mkdir $(QPROP_BIN); fi
	mv $^ $(QPROP_BIN)

libqprop.a:
	+$(MAKE) -C $(QPROP_SRC)/base/ 

clean:
	$(RM) $(targets)
	$(MAKE) clean -C $(QPROP_SRC)/base/

