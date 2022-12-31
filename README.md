# novel-scrapper

This bash script is used to scrape and format web novel content from a specific website and save it to individual text files, one file per chapter.

# Requirements

To run the script, make sure you have the required dependencies installed:

 -  curl
 -  awk
 -  sed

# Installation

Then, navigate to the directory where the script is located and run it with the following command:
```sh
./novel_scraper.sh [URL] [output_directory]
```

Replace [URL] with the URL of the web novel you want to scrape and [output_directory] with the desired directory to save the output files.

The script will scrape the web novel, remove unwanted elements and patterns, and format the text for easier reading. The formatted text will then be saved to individual text files in the specified output directory, with the file names corresponding to the chapter numbers.
