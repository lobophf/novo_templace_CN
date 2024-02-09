<p align="center">
    <img alt="Ciência e Natura Logo" src="https://periodicos.ufsm.br/public/journals/31/pageHeaderLogoImage_en_US.png" width="70%">
    <br>
    <img alt="Issues" src="https://img.shields.io/github/issues/lobophf/conway-game-of-life.svg">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/lobophf/conway-game-of-life">
    <img alt="License" src="https://img.shields.io/badge/license-CC%20BY--NC--SA%204.0%20Deed-brightgreen"><br>
    <a href="README.md">:us: English</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="README-pt-br.md">:brazil: Português</a>&nbsp;&nbsp;&nbsp;
    <br> 
    <a href="#about">About</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="#quick-start-guide">Quick Start Guide</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="requirements">Requirements</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="#submission">Submission</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="#license">License</a>	
</p>
<h1 align="center">Ciência e Natura Repository</h1>
<h4 align="center">Federal University of Santa Maria, Main Campus Central Publisher of UFSM Journals</h4>


## About:
This repository holds essential files of the submission process to the [Ciência e Natura journal](https://periodicos.ufsm.br/cienciaenatura/). The complete guidelines to publish are available [here](https://periodicos.ufsm.br/cienciaenatura/about/submissions).

## Requirements:
- This project is designed to work only on Linux-like machines.
- Ensure you have pdfTeX installed.


## Quick Start Guide:
First, clone this repository and jump into the `cnc-paper` folder.

```sh
$ git clone git@github.com:lobophf/conway-game-of-life.git 
$ cd cnc-paper
```
For first timming using the files on this project, turning the `script.sh` executable is need.
```sh
$ chmod +x script.sh
```
Once you've done it, compile the pdf.
```sh
$ ./script.sh
```
If everything went well, the `paper.pdf` file appeared in the root directory.

> [!NOTE]
>This script downloads a zipped file from a third-party platform, containing images essential to the journal, as well as others that are part of the paper for demonstration purposes. Feel free to change whatever is needed to create your own version. The `paper.tex` file provides additional instructions for this.

## Submission:
Before proceed by submitting, review our [Submission Preparation Checklist](https://periodicos.ufsm.br/cienciaenatura/about/submissions) and provide all necessary files on our platform, including the generated pdf.

## License:
This application is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/), as found in the [LICENSE](./LICENSE) file.

