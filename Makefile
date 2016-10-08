.PHONY: all data clean

all: report.pdf regression.RData eda-output.txt

report.pdf: report.Rmd regression.Rdata scatterplot-tv-sales.png
    pandoc report.Rmd regression.Rdata scatterplot-tv-sales.png -s -o report.pdf

regression.RData: regression-script.R Advertising.csv
    Rscript regression-script.R Advertising.csv

eda-output.txt: eda-script.R Advertising.csv
    pandoc eda-script.R Advertising.csv -t rst -s -o eda-output.txt


clean:
	rm -f report.pdf

