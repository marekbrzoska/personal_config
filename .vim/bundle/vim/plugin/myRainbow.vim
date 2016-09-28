" This is a simple script. It extends the syntax highlighting to
" highlight each matching set of parens in different colors, to make
" it visually obvious what matches which.

" Obviously, most useful when working with lisp. But it's also nice othe
" times.

" I don't intend to maintain this script. I hacked it together for my
" own purposes, and it is sufficient to the day. If you want to improve it,
" knock yourself out.

" This file is public domain.

" define colors. Note that the one numbered '16' is the outermost pair,
" keep that in mind if you want to change the colors.
" Also, if this script doesn't work on your terminal, you may need to add
" guifg=xx or ever termfg=, though what good this script will do on a 
" black and white terminal I don't know.
hi lvl1c ctermfg=brown guifg=brown
hi lvl2c ctermfg=blue guifg=blue
hi lvl3c ctermfg=gray guifg=gray
hi lvl4c ctermfg=green guifg=green
hi lvl5c ctermfg=cyan guifg=cyan
hi lvl6c ctermfg=red guifg=red
hi lvl7c ctermfg=magenta guifg=magenta
hi lvl8c ctermfg=black guifg=black
hi lvl9c ctermfg=gray guifg=gray
hi lvl10c ctermfg=green guifg=green
hi lvl11c ctermfg=brown guifg=brown
hi lvl12c ctermfg=cyan guifg=cyan
hi lvl13c ctermfg=brown guifg=brown
hi lvl14c ctermfg=gray guifg=gray
hi lvl15c ctermfg=red guifg=red
hi lvl16c ctermfg=green guifg=green



" These are the regions for each pair.
" This could be improved, perhaps, by makeing them match [ and { also,
" but I'm not going to take the time to figure out haw to make the
" end pattern match only the proper type.
syn region lvl1 matchgroup=lvl1c start=/{/ end=/}/ contains=TOP,lvl1,lvl2,lvl3,lvl4,lvl5,lvl6,lvl7,lvl8,lvl9,lvl10,lvl11,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl2 matchgroup=lvl2c start=/{/ end=/}/ contains=TOP,lvl2,lvl3,lvl4,lvl5,lvl6,lvl7,lvl8,lvl9,lvl10,lvl11,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl3 matchgroup=lvl3c start=/{/ end=/}/ contains=TOP,lvl3,lvl4,lvl5,lvl6,lvl7,lvl8,lvl9,lvl10,lvl11,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl4 matchgroup=lvl4c start=/{/ end=/}/ contains=TOP,lvl4,lvl5,lvl6,lvl7,lvl8,lvl9,lvl10,lvl11,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl5 matchgroup=lvl5c start=/{/ end=/}/ contains=TOP,lvl5,lvl6,lvl7,lvl8,lvl9,lvl10,lvl11,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl6 matchgroup=lvl6c start=/{/ end=/}/ contains=TOP,lvl6,lvl7,lvl8,lvl9,lvl10,lvl11,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl7 matchgroup=lvl7c start=/{/ end=/}/ contains=TOP,lvl7,lvl8,lvl9,lvl10,lvl11,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl8 matchgroup=lvl8c start=/{/ end=/}/ contains=TOP,lvl8,lvl9,lvl10,lvl11,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl9 matchgroup=lvl9c start=/{/ end=/}/ contains=TOP,lvl9,lvl10,lvl11,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl10 matchgroup=lvl10c start=/{/ end=/}/ contains=TOP,lvl10,lvl11,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl11 matchgroup=lvl11c start=/{/ end=/}/ contains=TOP,lvl11,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl12 matchgroup=lvl12c start=/{/ end=/}/ contains=TOP,lvl12,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl13 matchgroup=lvl13c start=/{/ end=/}/ contains=TOP,lvl13,lvl14,lvl15, lvl16,NoInParens
syn region lvl14 matchgroup=lvl14c start=/{/ end=/}/ contains=TOP,lvl14,lvl15, lvl16,NoInParens
syn region lvl15 matchgroup=lvl15c start=/{/ end=/}/ contains=TOP,lvl15, lvl16,NoInParens
syn region lvl16 matchgroup=lvl16c start=/{/ end=/}/ contains=TOP,lvl16,NoInParens
