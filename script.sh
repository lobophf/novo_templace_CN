#!/bin/bash

authorFolder='author_files'
CENFolder='ciencia_e_natura_images'

#FROM MY PERSONAL REPO
CENCenterLogo='https://dl.dropboxusercontent.com/s/ryy8ak0xoeqk76u/logo-ciencia-e-natura.jpg?dl=0'
CENCreativeCommonsLogo='https://dl.dropboxusercontent.com/s/j33jzxl1cnllnsb/creativecommons.png?dl=0'

AuthorImage14Bis='https://dl.dropboxusercontent.com/s/i7zkrwncj0lxkbs/14-bis.jpeg?dl=0'
AuthorImageGraph='https://dl.dropboxusercontent.com/s/yqr1pqap1pgo7ob/graph.png?dl=0'
AuthorImageNimbodetector='https://dl.dropboxusercontent.com/s/aoi3tyu7qhkxjjr/nimbodetector.png?dl=0'
AuthorImageSensor='https://dl.dropboxusercontent.com/s/o4odbk9lqghke6j/sensor.png?dl=0'

#FROM CENREPO
CENCoverPage='https://dl.dropboxusercontent.com/s/sa0nmq0xnrf6yeu/capa%202023.jpg?dl=0'
CENOpenAccessImage='https://dl.dropboxusercontent.com/s/61nilkod018iqng/OPEN%20ACCESS.png?dl=0'
CENOAcessoAbertoImage='https://dl.dropboxusercontent.com/s/61nilkod018iqng/OPEN%20ACCESS.png?dl=0'
CENLeftLogo='https://dl.dropboxusercontent.com/s/yv4sqs7gjgcge2e/UFSM_brasao-monograma_v_solido.jpg?dl=0'

if ! [ -d "${CENFolder}" ]; then
  mkdir "${CENFolder}"
  curl -o "${CENFolder}/logo-ciencia-e-natura.jpg" "${CENCenterLogo}"
  curl -o "${CENFolder}/revista.jpg" "${CENCoverPage}"
  curl -o "${CENFolder}/open-access.png" "${CENOpenAccessImage}"
  curl -o "${CENFolder}/acesso-aberto.png" "${CENOAcessoAbertoImage}"
  curl -o "${CENFolder}/logo-ufsm.png" "${CENLeftLogo}"
  curl -o "${CENFolder}/creativecommons.png" "${CENCreativeCommonsLogo}"
fi

if  ! [ -d "${authorFolder}" ]; then
  mkdir "${authorFolder}"
  curl -o "${authorFolder}/14-bis.jpeg" "${AuthorImage14Bis}"
  curl -o "${authorFolder}/graph.png" "${AuthorImageGraph}"
  curl -o "${authorFolder}/nimbodetector.png" "${AuthorImageNimbodetector}"
  curl -o "${authorFolder}/sensor.png" "${AuthorImageSensor}"
fi

if ! [ -f "foobar.f90" ]; then
cat << EOF > foobar.f90
  PROGRAM FOOBAR
    IMPLICIT NONE
  
    INTEGER :: N, I
    CHARACTER(LEN=9) :: MESSAGE
  
    WRITE(*, *) 'Enter a positive integer:'
    READ(*, *) N
  
    DO I = 1, N
       IF (MOD(I, 3) == 0 .AND. MOD(I, 5) == 0) THEN
          MESSAGE = 'FOOBAR'
       ELSEIF (MOD(I, 3) == 0) THEN
          MESSAGE = 'FOO'
       ELSEIF (MOD(I, 5) == 0) THEN
          MESSAGE = 'BAR'
       ELSE
          WRITE(*, *) I
          CONTINUE
       ENDIF
  
       WRITE(*, *) MESSAGE
    END DO
  
  END PROGRAM FOOBAR
EOF
fi

cleanup_files() {
    rm -rf *.blg *.log *.spl *.aux *.out *.bbl
}

cleanup_files

pdflatex paper.tex
bibtex paper
pdflatex paper.tex
pdflatex paper.tex
