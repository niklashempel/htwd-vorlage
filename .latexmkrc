# All files go to build/
$out_dir = 'build';
$aux_dir = 'build';

# Always produce PDF
$pdf_mode = 1;

# Proper pdflatex invocation
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -shell-escape %O %S';

# BibTeX (latexmk handles paths internally)
$bibtex = 'bibtex %B';

# Glossaries
add_cus_dep('glo', 'gls', 0, 'makeglossaries');
sub makeglossaries {
    system("makeglossaries \"$_[0]\"");
}

# Avoid latexmk stopping early
$bibtex_use = 2;