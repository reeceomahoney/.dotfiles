if exists("b:current_syntax")
  finish
endif

" Include shell syntax as the base
runtime! syntax/sh.vim
unlet! b:current_syntax

" Section headers like %post, %environment, %runscript, %labels, %setup, %test, %help, %files, %startscript
syn match singularitySection "^%\w\+"

" Header directives like BootStrap:, From:, Stage:, MirrorURL:, etc.
syn match singularityDirective "^\s*\w\+:" contained
syn match singularityDirectiveLine "^\s*\w\+:.*$" contains=singularityDirective

hi def link singularitySection Keyword
hi def link singularityDirective Type

let b:current_syntax = "singularity"
