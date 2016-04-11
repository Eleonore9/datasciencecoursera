## Setting up R on Linux (Ubuntu 14.04)


### Content

* [Install R](#install-r)
* [Install RStudio](#install-rstudio)
* [Install Swirl](#install-swirl)
* [Update R](#update-r)


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

Note: [Swirl](http://swirlstats.com/) is a tool to learn R inside RStudio.

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

### Update R

To update my version of R to a version > 2.2 I followed instruction from [this](https://pythonandr.wordpress.com/2015/04/27/upgrading-to-r-3-2-0-on-ubuntu/) blogpost.
I used the R archive (refered as CRAN for Comprehensive R Archive network) mirror located at Imperial College London (as I'm based in London).

```
$ codename=$(lsb_release -c -s)

$ echo "deb http://cran.ma.imperial.ac.uk/bin/linux/ubuntu $codename/" | sudo tee -a /etc/apt/sources.list > /dev/null

$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9

$ sudo apt-get update

$ sudo apt-get upgrade
```
