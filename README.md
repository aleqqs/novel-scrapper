# novel-scrapper

The script will scrape the web novel, remove unwanted elements and patterns, and format the text for easier reading. The formatted text will then be saved to individual text files in a specified output directory corresponding to the given URL, with the file names corresponding to the chapter numbers.

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
./novel_scraper.sh [URL] [INT]
```

Replace [URL] with the URL of the web novel you want to scrape (e.g. : "mysite.site/novel/my-novel-is-the-best" ) and [INT] which is the number of chapters you want to download all the way from chapter 1.

# Responsability

I do not hold any responsibility for the use of this script and it is up to you to determine if the use of it is in accordance with the terms of use of the website and the applicable laws. Be mindful of the potential impact on the website and its servers, as excessive scraping can place a strain on the resources and potentially lead to negative consequences.
