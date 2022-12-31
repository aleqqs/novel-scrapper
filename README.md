# novel-scrapper

This bash script is used to scrape and format web novel content from a specific website and save it to individual text files, one file per chapter.

# Requirements

Please note that this script is designed to work specifically with websites that use a specific WordPress CMS. 
If you are attempting to use this script on a website that does not use a specific WordPress, it is likely that it will not function as intended. 

Additionally, it is not appropriate for me to disclose specific websites on which this script may work, as websites are constantly changing and may disappear or reappear at any time.

To run the script, make sure you have the required libraries installed:

 -  curl
 -  awk
 -  sed

# Installation

Clone the repo in the folder you want and add execution right for the script : 

```bash
chmod +x novel_scrapper.sh
```

You can now run the script using with the following command:


```bash
./novel_scrapper.sh [URL] [INT]
```
Replace [URL] with the URL of the web novel you want to scrape and [INT] which is the number of chapters you want to download all the way from chapter 1.

```bash
# Example scrapping from chapter 1 to chapter 265 of the "Novel I want to scrape"
./novel_scrapper https://mysite.site/novel/novel-i-want-to-scrape/ 265
```

# Improvements

If you encounter any issues while using this script or if you have any ideas for new functionalities or improvements for the script, 
feel free to create a ticket.

Your feedback is greatly appreciated and will help improve the script for everyone.


# Responsability

I do not hold any responsibility for the use of this script and it is up to you to determine if the use of it is in accordance with the terms of use of the website and the applicable laws. 
Be mindful of the potential impact on the website and its servers, as excessive scraping can place a strain on the resources and potentially lead to negative consequences.
