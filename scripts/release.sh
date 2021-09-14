#!/usr/bin/env bash
date=$(date +'%Y-%m-%d')
for course in phys610 phys612 phys733; do
    tex_pdf="${course}/main.pdf"
    release_pdf="release/${date}_${course}_notes.pdf"
    if [ -f $input_pdf ]; then
        cp $tex_pdf $release_pdf
        echo "${release_pdf} created"
    else
        echo "${tex_pdf} missing, please recompile"
    fi
done
