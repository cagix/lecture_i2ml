all: qmdrender qmdclean

qmdrender:
	for file in *.qmd; do \
		quarto render $$file --profile=solution; \
	done

qmdclean:
	rm -rf *preview.html
	rm -rf *out.ipynb

# rule for single file ; e.g. make classification_1
%:
	quarto render $@.qmd --profile=solution
