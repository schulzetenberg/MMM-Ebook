This is a fork of [beege/MMM-Ebook](https://github.com/beege/MMM-Ebook) updated to use Python3 and generate ebooks so you do not need to manually generate ebooks in Calibre, and to include images hosted at mrmoneymustache.com.

This utility scrapes [Mr. Money Mustache's blog](http://www.mrmoneymustache.com/) and outputs HTML pages to import through a tool such as Calibre to create into an EBook of the desired format.

## Download the Ebooks
The ebook files are found in [Releases](https://github.com/schulzetenberg/MMM-Ebook/releases)

## Use
You can either:
* Use docker to auto generate the ebooks
* Install the required dependencies directly on your machine and run the python script to generate the ebooks
### Docker


To build the docker image, run the following command from the root of the repo:

```docker build -t mmm-ebook .```

To run the docker image, run the following command from the root of the repo:

```docker run -it --rm  -v $PWD:/data --name mmm-ebook-app mmm-ebook```

The ebooks will be generated in the Ebooks directory on your host machine.

### Direct

This project depends on:

- **Calibre**. You will need to install this [manually](https://calibre-ebook.com/download) or via package manager. If this is not installed on your computer the script should still generate an HTML copy of the MMM blog but will not update the ebooks included in the repo.

In the repo root run ```pip3 install -r requirements.txt``` to install python dependencies via pip, then run `generate-ebooks.py Ebooks` in the repo root. When the script completes pdf, mobi, epub, and azw3 ebooks in the Ebooks dir will be updated with the latest posts. If you would like to generate ebooks yourself in Calibre you can import the file ```import_index.html_in_this_folder_in_calibre_to_create_ebook/index.html```, which will let you convert it to the format of your choice. Note: You will want to set Calibre to import HTML files in breadth-first order by going to Preferences → Advanced → Plugins → File type → HTML to ZIP and checking **Add linked files in breadth first order**.

## MMM Approved!

You can see Mr Money Mustache's endorsement of this project [here](https://forum.mrmoneymustache.com/welcome-to-the-forum/making-a-mr-money-mustache-ebook/).

"Awesome work!! You hereby have my full approval to share this book (and work together to improve it if you like). As long as you give it away for free!"