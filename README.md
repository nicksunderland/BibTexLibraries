# BibTexLibraries

### Installation guide
Auto-sync setup described at https://retorque.re/zotero-better-bibtex/exporting/index.html  

* Download Zotero  
* Enable Safari (or other) extension  
* Download 'Better BibTex for Zotero' extension and add to desktop Zotero application  
* On the Zotero folder of interest, right click, 'Export collection...'  
* Chose the file location for the .bib file (add to this package's inst/extdata folder)  
* Add auto git pushing when a .bib file is updated by running 'git config zotero.betterbibtex.push true'  

Now any time that a file is added to the Zotero folder it will also be pushed to git.

This package can then be a dependency in any other package requiring references.
