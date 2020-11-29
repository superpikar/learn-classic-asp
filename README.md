[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

# DEPRECATED
This repo is no longer supported since I'm no longer working with ASP in recent years.

# Learn Classic ASP 

Learn classic ASP, because sometimes you have a client with the legacy project. :relieved:


## How to use this project
1. Activate IIS on your Windows machine. [link](https://technet.microsoft.com/en-us/library/cc725762(v=ws.11).aspx)
2. Enable debugging [link](https://support.gearhost.com/hc/en-us/articles/203073104-Configure-IIS7-to-show-errors)
3. Clone the project in your webroot directory or other directory
4. Set the directory as new application [link](http://www.helpmasterpro.com/helpfile/Web%20Modules/html%20files/Virtual%20Directory%20-%20creating%20in%20iis7.htm) or [link](https://support.gearhost.com/hc/en-us/articles/200342055-Add-Virtual-Directory-as-Application-in-IIS7)
5. modify global configuration in the global.asa : 
    - `applicationURL` : match it with your application URL
    - `connectionString` : sql server connection string
6. create table and insert the content (optional) from `files/tb_countries.sql` and `files/tb_posts.sql`

## Reference : 
- [Creating ASP Pages](https://msdn.microsoft.com/en-us/library/ms524796(v=vs.90).aspx)
- [OOP in ASP classic](http://www.codeguru.com/csharp/.net/net_asp/tutorials/article.php/c19317/Object-Oriented-ASP-Using-Classes-in-Classic-ASP.htm)
- [25+ ASP Tips to Improve Performance and Style](https://msdn.microsoft.com/en-us/library/ms972335.aspx)
- [HTML.net ASP Tutorial](http://html.net/tutorials/asp)
- [4Guys from Rolla](http://www.4guysfromrolla.com/)
- [Include files in ASP classic](https://stackoverflow.com/questions/2837211/equivalent-to-master-pages-in-asp-classic)
- [ASP Classic](https://www.w3schools.com/asp/asp_introduction.asp)
