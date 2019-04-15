# HoneyTrap Docs

Documentation site for [HoneyTrap](https://github.com/honeytrap/honeytrap).




> This installation guide is for `macOS` and `Debian`.

> You also need [Git installed](https://git-scm.com/downloads) to run this installation.



## Step 1: Installation
### Install Hugo Mac

`Homebrew`, a package manager for `macOS`,  can be installed from [brew.sh](https://brew.sh/).  See [install](https://gohugo.io/getting-started/installing/) if you are running Windows etc.


```bash
brew install hugo
```

### Installation for Linux:
Find the file matching youre system archtecture and OS and download the package here:
[Hugo Github release page](https://github.com/gohugoio/hugo/releases)

Extract and install package according to your OS.

**Debian**
```bash
sudo dpkg -i hugo*.deb
```
## Finish step 1 all OS:

To verify your new install:

```bash
hugo version
```


## Step 2: Clone this repository

```bash
git clone git@gitlab.dutchsec.com:dutchsec/honeytrap/honeytrapdocs.git
```


## Step 3: Build this documentation

In the directory where you cloned the repository:

```bash
hugo server
```

Go to http://localhost:1313


## Step 4: Make a modification

Make a modification, save your file.

You don't need to reload `hugo server`.  
The modification will be automatically loaded.


## Step 5: Generate PDF document

Install [wkhtmltopdf](https://wkhtmltopdf.org/).

```bash
./generate_pdf.sh
```

##  Deploy on github pages ?

Create a `honeytrap-docs.github.io` repository.

Test you website like usually:

```bash
hugo server
```

Once everything is ok, kill the server `Ctrl + c`.

Then, build the "final" version with:

```bash
hugo --enableGitInfo
```
The `--enableGitInfo` flag should update the `“Quick Start” was last updated: October 31, 2018: ipp (6aa25a48)` at the bottom of each page.
The name of the commit - here `ipp` - is from the `commit history` of honeytrap-docs repository, not from the `commit history` of the public folder.

This will create a `public` repository. 

Go to the public repository. 

```bash
git init

git remote add origin git@github.com:honeytrap/honeytrap-docs.github.io.git

git push origin master

```
