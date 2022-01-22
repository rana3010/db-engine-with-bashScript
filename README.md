
# DBMS with Bash Script
This is our DBMS project engine created using bash script files. These script files like SQL queries are run as commands from wherever you are using terminal.

## Table of contents
* [Setup](#setup)
* [Usage](#usage)
* [Demo](#demo)
* [Authors](#authors)
* [Documentations](#documentations)
***

## Setup

Install our project :

```bash
git clone https://github.com/ranawael1/DBMS_with_bash.git
```
Then enter the directory and take its path :
```bash
 cd DBMS_with_bash
 echo $PWD   
```
Then open .bashrc file :
```bash
vi ~/.bashrc
or
gedit ~/.bashrc
```
Then write on it :
```bash
PATH="[our project directory path you take above]:$PATH"
alias DBMS='db.sh'
```
Then close the terminal and re-open it.
Finally, you can use our DBMS easily.
## Usage
You can run our DBMS engine from anywhere you want to include a database system by runnig this command :
```bash
DBMS
or
db.sh
```
Then you can use selector app :

![Screenshot from 2022-01-21 23-39-43](https://user-images.githubusercontent.com/42323978/150604087-cc78bf7d-40b0-4391-94b4-011183f1d216.png)

Or you can run any of our scripts separately :
```bash
createDB
connectDB
dropDB
listDB
createTB
selectTB
insertTB
dropTB
listDB
deleteFromTB
```
## Demo
https://www.youtube.com/watch?v=efmwuCiqaVM
## Authors

- Created by [@ranawael1](https://github.com/ranawael1) & [@Nourhanibraheem](https://github.com/Nourhanibraheem).
- feel free to contact us :blush:

## Documentations
You can also check out some documentation to understand how SQL queries work and how bash scripts work on Linux.

- [MySQL](https://dev.mysql.com/doc/)
- [PostgreSQL](https://www.postgresql.org/docs/)
- [Linux Kernel](https://www.kernel.org/doc/html/latest/)
- [Bash](https://devdocs.io/bash/)

