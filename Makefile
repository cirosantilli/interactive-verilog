.POSIX:

.PHONY: clean

./obj_dir/Vmain: main.v main.cpp
	verilator -Wall --cc main.v --exe main.cpp
	make -C obj_dir -f Vmain.mk Vmain LIBS='-lSDL2'
	./obj_dir/Vmain

clean:
	rm -rf obj_dir
