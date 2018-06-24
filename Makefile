### CXX
CXX := g++
CXXFLAGS := -std=c++14
# CXXFLAGS += -O3
# CXXFLAGS += -fopenmp

### LIB
CXXLIB := 
# CXXLIB += `pkg-config opencv --libs`

### INCLUDE
CXXINC +=
# CXXINC := `pkg-config opencv --cflags`

### output name
mainfile = main_out.exe


CXXFLAGS += $(CXXLIB) $(CXXINC)
# ============================================================
all: build
build: $(mainfile)
run: build
	./$(mainfile)
clear:
	rm -f *.o $(mainfile)

# ============================================================
$(mainfile):main.o
	$(CXX) *.o -o $(mainfile)
main.o: main.cpp
	$(CXX) -c main.cpp $(CXXFLAGS)

# ============================================================