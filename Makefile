samples:
	./verify.sh > RESULTS.md

samples-leaked:
	./verify.sh samples/leaked/*.txt > LEAKED.md

samples-leaked-1k-italy:
	./verify.sh samples/leaked/1k-italy/*.txt > LEAKED_1K_ITALY.md
