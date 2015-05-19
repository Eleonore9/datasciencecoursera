## Install R, RStudio and Swirl on Linux (Ubuntu 14.04)


### Install R

``` bash
$ sudo apt-get update

$ sudo apt-get install r-base

```

Check your installation by running __R__ in the terminal.



### Install RStudio

* Go to [RStudio download page](http://www.rstudio.com/ide/download/).

* Choose RStudio Desktop and then Open Source edition.

* Install by double-clicking on the downloaded program or via Ubuntu Software Center.


### Install Swirl


* Install libcurl:

``` bash
$ sudo apt-get install libcurl4-openssl-dev
```

* Inside RStudio, run the following commands on the console:

``` R
> install.packages("swirl")
> library(swirl)
> swirl()
```

