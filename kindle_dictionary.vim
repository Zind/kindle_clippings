" kindle_dictionary.vim
" The New Oxford American Dictionary


" 替换时行内的所有匹配都被替换，而不是只有第一个匹配被替换
set gdefault

" 中文‘’替换成英文 '
%s/[‘’]/'/e

" 中文“”替换成英文 "
%s/[“”]/"/e

" 去掉单词各个音节单元之间的 ·
" 该单词在行的开头时，预先换行
" if search('^\(\w\+\)·\(\w\+\) \(\w\+\)\.', 'w')>0
" 	%s/\(\w\+\)·\(\w\+\)/\1\2\r\3/
" endif
" %s/^\(\w\+\)·\(\w\+\) \(\w\+\..\+\)/\1\2\r\3/e
%s/^\(\w\+\)·\([·a-zA-Z]\+\) \(\w\+\..\+\)/\1\2\r\3/e
" 该单词不在行的开头时
while search('\(\w\+\)·\(\w\+\)', 'w')>0
	%s/\(\w\+\)·\(\w\+\)/\1\2/
endwhile

" abbreviation for the characteristic or property of a certain word
" n.
" v.
" [trans.]
" [intrans.]
" adj.
" adv.
" 同一单词，有不同词性，各种词性之间换行换行
" %s/ n\|adj\|adv\. /\r&/e
" %s/ \(n\|v\|adj\|adv\)\. /\r\1\. /e
%s/\. ■ /\.\r/e

" 对 <SPECIAL USAGE> 换行
" 特征：. <SPECIAL USAGE> 
%s/\. \(<SPECIAL USAGE>\) /\.\r\1 /e

" 对 <DERIVATIVES> 换行，且该行 <DERIVATIVES> 后面的内容不应该再被处理
" 特征：. <DERIVATIVES> 
%s/\. \(<DERIVATIVES>\) /\.\r\1 /e


