" kindle_dictionary.vim
" The New Oxford American Dictionary


" 替换时行内的所有匹配都被替换，而不是只有第一个匹配被替换
set gdefault

" 中文 ‘ 替换成英文 '
%s/‘/'/e

" 中文 ’ 替换成英文 '
%s/’/'/e

" 中文 “ 替换成英文 "
%s/“/"/e

" 中文 ” 替换成英文 "
%s/”/"/e

" 同一单词，有多个不同词性，换行
%s/ ■ /\n/e


" 去掉单词各个音节单元之间的 ·
while search('\(\w\+\)·\(\w\+\)', 'w')>0
	%s/\(\w\+\)·\(\w\+\)/\1\2/
endwhile


