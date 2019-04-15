CXX := gawk
FLAGS= -f
FILE= cartasetiopia.csv

exec:
	$(CXX) $(FLAGS) src/anos.gawk $(FILE)
	$(CXX) $(FLAGS) src/cartas.gawk $(FILE)
	$(CXX) $(FLAGS) src/contaLocais.gawk $(FILE)
	$(CXX) $(FLAGS) src/contaAnos.gawk $(FILE)
	$(CXX) $(FLAGS) src/contaLocaisAno.gawk $(FILE)
	$(CXX) $(FLAGS) src/grafo.gawk $(FILE)

	dot -Tpng out/grafo/grafo.dot > out/grafo/grafo.png

	$(CXX) $(FLAGS) src/index.gawk $(FILE)
	open out/html/index.html

clean:
	rm out/html/anos/*.html
	rm out/html/*.html
	rm out/grafo/*
