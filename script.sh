#!/bin/bash

authorFolder='author_files'
authorFiles='https://uc4bc22013f2e02170fc540cb27a.dl.dropboxusercontent.com/zip_download_get/Bgk8QvqHfg6w99eXtgMeCJmsYNf1iOd0ImeP8glrC_0bNyIM0zsO70wjMwTAb4QvtOjWCBJOCwy40-wLSbgMDoIYlMxeiwjsVmHxVME3TW9LZA?_download_id=135192709297668253731150706657263684373260784521026549034371754102&_notify_domain=www.dropbox.com&dl=1'

CENFolder='ciencia_e_natura_images'
CENFiles='https://uc9ab9be8c1e8cd4d69d374244e2.dl.dropboxusercontent.com/zip_download_get/BgoKQfIIFM07Mp6FRe2SZJqwEaAcZKcRMS3dFFySpgnWauvyCXMeaQ5vfFBGi89CWE-uWmFCZ8zJu8tbfR3y4l7agbzb4pMAQJNnNtg2k-VQpw?_download_id=367960099149058364319372568591795028356855159465298846611692907312&_notify_domain=www.dropbox.com&dl=1'

CENCoverPage='https://dl.dropboxusercontent.com/s/sa0nmq0xnrf6yeu/capa%202023.jpg?dl=0'

if  ! [ -d "${authorFolder}" ]; then
  mkdir "${authorFolder}"
  curl -o author_files.zip "${authorFiles}"
  unzip author_files.zip -d "${authorFolder}"
  rm author_files.zip
fi

if ! [ -d "${CENFolder}" ]; then
  mkdir ciencia_e_natura_images
  curl -o journal_images.zip "${CENFiles}"
  unzip journal_images.zip -d ciencia_e_natura_images
  curl -o ciencia_e_natura_images/revista.jpg "${CENCoverPage}"
  rm journal_images.zip
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
