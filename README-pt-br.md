<p align="center">
   <img alt="CienciaENaturaLogo" src="https://dl.dropboxusercontent.com/s/2y3obtp1dcg0h0ub3mab6/logo-ciencia-e-natura.jpg?rlkey=77vnaywv3t5oydoiqclnfu736&dl=0" width="70%">
    <br>
    <img alt="Issues" src="https://img.shields.io/github/issues/lobophf/conway-game-of-life.svg">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/centraldeperiodicos/template_tex_ciencia_e_natura">
    <img alt="License" src="https://img.shields.io/badge/license-CC%20BY--NC--SA%204.0%20Deed-brightgreen"><br>
    <a href="README.md">:us: English</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="README-pt-br.md">:brazil: Português</a>&nbsp;&nbsp;&nbsp;
    <br> 
    <a href="#sobre">Sobre</a>&nbsp;&nbsp;|&nbsp;
    <a href="#requirementos">Requerimentos</a>&nbsp;&nbsp;|&nbsp;
    <a href="#quick-start-guide">Quick Start Guide</a>&nbsp;&nbsp;|&nbsp;
    <a href="#submission">Submission</a>&nbsp;&nbsp;|&nbsp;
    <a href="#license">License</a>	
</p>
<h1 align="center">Ciência e Natura Repositório LaTeX</h1>
<h4 align="center">Universidade Federal de Santa Maria, Campus Sede, Editora Central de Periódicos da UFSM</h4>

## Sobre:
Este repositório contém arquivos essenciais para o processo de submissão ao [periódico Ciência e Natura](https://periodicos.ufsm.br/cienciaenatura/). Diretrizes completas para publicação estão disponíveis [aqui](https://periodicos.ufsm.br/cienciaenatura/about/submissions).

## Requerimentos:
- Este projeto foi projetado para funcionar apenas em máquinas com distros Linux.
- Certifique-se de ter o pdfTeX instalado.
- Você deve ter o pacote unzip instalado.

## Quick Start Guide:
Para aqueles que estão tendo primeiro contato, é necessário tornar o arquivo `script.sh` executável. Este script compila os arquivos LaTeX e gera a saída em PDF.

Para fazer isso, primeiro baixe os arquivos clicando [aqui](https://github.com/centraldeperiodicos/template_tex_ciencia_e_natura/archive/refs/heads/main.zip) e, em seguida, extraia tudo. Alternativamente, clone este repositório. Independentemente da opção escolhida, navegue até a pasta `cnc-paper` depois.

For first-time users, it's necessary to make the `script.sh` file executable. This script compiles the LaTeX files and generates the PDF output.


```sh
$ git clone git@github.com:centraldeperiodicos/template_tex_ciencia_e_natura.git
$ cd cnc-paper
```
For first-time use of the files in this project, making the `script.sh` executable is necessary.
```sh
$ chmod +x script.sh
```
Once you've done that, compile the PDF.
```sh
$ ./script.sh
```
If everything went well, the `paper.pdf` file will appear in the root directory.<br>

> [!NOTE]
>This script downloads a zipped file from a third-party platform, containing images essential to the journal, as well as others that are part of the paper for demonstration purposes. Feel free to change whatever is needed to create your own version. The `paper.tex` file provides additional instructions for this.

## Submission:
Before proceeding with submission, review our [Submission Preparation Checklist](https://periodicos.ufsm.br/cienciaenatura/about/submissions) and provide all necessary files on our platform, including the generated PDF.

## License:
This project is licensed under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/), as found in the [LICENSE](./LICENSE) file.

