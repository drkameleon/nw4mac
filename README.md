# NW4Mac Builder

#### Easily build and deploy NW.js-based OSX apps

![Screenshot](http://s8.postimg.org/rurqjrn0l/Screen_Shot_2015_07_04_at_14_18_05.png)

**The package includes:**

- An easy compiler & runner
- Nw.js
- AngularJS
- Twitter Bootstrap
- Handlebars


**How to use it:**

- Download the .zip archive with all sources
- Go into /app and edit any files you need (index.html and core/main.coffee are your entry points)
- Run `./compile.sh` *(to compile)* or `./run.sh` *(to build and execute)*, on the root directory

**Prerequisites:**

- Before trying to compile/run any project, you must first download Nw.js from [here](http://dl.nwjs.io/v0.12.2/nwjs-v0.12.2-osx-x64.zip), unzip the archive and copy all of its contents (mainly `nwjs.app`) in here (in the `/bin` folder).

- Install CoffeeScript (`sudo npm install -g coffee-script`)

- Install LESS (`sudo npm install -g less`)

-----

##### Issue Tracker

Bug reports about all aspects of the tool are welcome. To let me know about anything, just use the Issues page here on GitHub.

##### Copyright and License Information

Copyright (c) 2015 Ioannis Zafeiropoulos (aka Dr.Kameleon). 
All rights reserved. 

See the file "LICENSE" for information on the history of this software, terms &
conditions for usage, and a DISCLAIMER OF ALL WARRANTIES.

All trademarks referenced herein are property of their respective holders.

