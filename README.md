# novel-scrapper

This bash script is used to scrape and format web novel content from a specific website and save it to individual text files, one file per chapter.

# Conditions

Please note that this script is designed to work specifically with websites that use a specific WordPress CMS. If you are attempting to use this script on a website that does not use a specific WordPress, it is likely that it will not function as intended. Additionally, it is not appropriate for me to disclose specific websites on which this script may work, as websites are constantly changing and may disappear or reappear at any time.

# Requirements

To run the script, make sure you have the required libraries installed:

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

# Responsability

I do not hold any responsibility for the use of this script and it is up to you to determine if the use of it is in accordance with the terms of use of the website and the applicable laws. Be mindful of the potential impact on the website and its servers, as excessive scraping can place a strain on the resources and potentially lead to negative consequences.
