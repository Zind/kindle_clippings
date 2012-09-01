" kindle_clippings.vim


" 定义全局变量 os_type，用来判断 OS 类型
if has('gui_running') && (has("win32") || has("win64") || has("win95") || has("win16"))
	let g:os_type=0						" Windows gVim
elseif has('gui_gtk2')
	let g:os_type=1						" Linux gVim
endif

" set VimScript path
if (g:os_type==0)
	let $vim_script_path="$HOME/______Z/Dropbox/TemporaryNotes/Vim/VimScript"
elseif (g:os_type==1)
	let $vim_script_path="$HOME/______Z/Dropbox/TemporaryNotes/Vim/VimScript"
endif


" Kindle
if (g:os_type==1)
	command! KindleClippings	:tabf /media/Kindle/documents/My\ Clippings.txt
	command! KindleUmount		:!sudo umount /media/Kindle
endif
command! KindleGeneral			:source $vim_script_path/kindle_clippings/kindle_general.vim
command! KindleDictionary		:source $vim_script_path/kindle_clippings/kindle_dictionary.vim


