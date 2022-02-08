if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
augroup AutoCmd
    autocmd!
    autocmd BufEnter * source $MYVIMRC
    autocmd BufWritePost *.vim source $MYVIMRC
    \|if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \| PlugInstall --sync
    \| endif
    autocmd BufWritePost ~/.config/sxhkd/sxhkdrc silent execute '!pkill-USR1 -x sxhkd'
augroup END 
