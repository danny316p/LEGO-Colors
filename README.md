LEGO-Colors
===========

A go at organizing LEGO colors in a variety of useful ways. Blatently stolen from Brick Colorstream: https://www.flickr.com/photos/126975831@N07/


Method so far:
* Visit the Brick Colorstream Flickr Photostream: https://www.flickr.com/photos/126975831@N07/
* Go to the main Color Chart: https://www.flickr.com/photos/126975831@N07/15188260567/
* Visit this Google Spreadsheet, and download it as .XLSX https://docs.google.com/spreadsheets/d/1rtj-nFKPUn7x0r2hj5jV5fyZIhW_45LLnqt-qoRqMcc/edit?pli=1#gid=1748857698
* Use http://www.zamzar.com - Free online file conversion to convert the XLSX file's first worksheet to XML. That will create the file in LegoColors.xlsx.xml
* Go to http://ryanhowerter.com/Colors.html and download that page. That will give you the files Color List.html and the scripts/CSS in Color List_files
* I wrote the XSLT file clean_color_html.xslt based on that info to create meaningful HTML output
* From the command line, enter:
```
xsltproc clean_color_html.xslt LegoColors.xlsx.xml > output.html
```

...that will generate output.html for you, although I've also included that in this repository for the sake of convenience. If you're really lazy, here's a version of that hosted by GitHub: http://danny316p.github.io/LEGO-Colors/output.html
