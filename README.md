# novel-scrapper

This bash script is used to scrape and format web novel content from wordpress-based websites and save it to individual text files, one file per chapter.

# :warning: Disclaimer :warning:

I cannot guarantee that it will work on every website, especially those that are protected by advanced security measures such as Cloudflare. 

Please note that this script is designed to work specifically with websites that use a specific WordPress CMS. 

If you are attempting to use this script on a website that does not use this specific WordPress CMS, it is likely that it will not function as intended. 

I am not responsible for the use of this script. Please use this script responsibly and at your own risk.

# Requirements

To run the script, make sure you have the required libraries installed:

 -  curl
 -  awk
 -  sed
 -  libxml2-utils

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
