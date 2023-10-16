#!/bin/bash
modules=(
  breadcrumb content-panel doc-nav disqus featured-image giscus heading-sign staticman
  toc-scrollspy twikoo utterances
)
for module in ${modules[@]}; do
  echo "Updating modules for modules/$module"
  cd "modules/$module"
  hugo mod get -u
  hugo mod tidy
  cd -
done 
