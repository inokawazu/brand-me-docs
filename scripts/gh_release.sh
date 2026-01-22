#!/bin/env sh

gh release create "v$(date +%Y%m%d)" --latest=true --generate-notes build/publications.pdf build/cv.pdf 
