if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(neocomplcache_start_omni_complete) 
inoremap <silent> <Plug>(neocomplcache_start_auto_complete) =neocomplcache#popup_post()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_quick_match) unite#sources#neocomplcache#start_quick_match()
inoremap <silent> <expr> <Plug>(neocomplcache_start_unite_complete) unite#sources#neocomplcache#start_complete()
inoremap <expr> <BS> neocomplcache#smart_close_popup() . "\"
inoremap <F7> :set nopaste! | set nopaste?
inoremap <F6> :set scrollbind! | set scrollbind?
inoremap <silent> <expr> <Plug>(neosnippet_start_unite_snippet) unite#sources#snippet#start_complete()
imap <silent> <Plug>(neocomplcache_start_unite_snippet) <Plug>(neosnippet_start_unite_snippet)
inoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#jump_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#jump_or_expand_impl()
inoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#expand_or_jump_impl()
imap <silent> <Plug>(neocomplcache_snippets_force_jump) <Plug>(neosnippet_jump)
imap <silent> <Plug>(neocomplcache_snippets_force_expand) <Plug>(neosnippet_expand)
imap <silent> <Plug>(neocomplcache_snippets_jump) <Plug>(neosnippet_jump_or_expand)
imap <silent> <Plug>(neocomplcache_snippets_expand) <Plug>(neosnippet_expand_or_jump)
inoremap <silent> <SNR>23_AutoPairsReturn =AutoPairsReturn()
snoremap  a<BS>
xmap  y:!~/ydict-read-only/ydict -w """
nmap  viwy:!~/ydict-read-only/ydict -w"
snoremap  a<BS>
nnoremap <silent>  :CtrlP
nmap  :edit :echom "Update File"G
nmap d :vert scs find d =expand("<cword>")
nmap i :vert scs find i ^=expand("<cfile>")$
nmap e :vert scs find e =expand("<cword>")
nmap t :vert scs find t =expand("<cword>")
nmap c :vert scs find c =expand("<cword>")
nmap g :vert scs find g =expand("<cword>")
nmap s :vert scs find s =expand("<cword>")
nmap Q gq
xmap Q gq
omap Q gq
xmap S <Plug>VSurround
xmap [% [%m'gv``
xnoremap <silent> \\w :call EasyMotion#WB(1, 0)
onoremap <silent> \\w :call EasyMotion#WB(0, 0)
nnoremap <silent> \\w :call EasyMotion#WB(0, 0)
xnoremap <silent> \\t :call EasyMotion#T(1, 0)
onoremap <silent> \\t :call EasyMotion#T(0, 0)
nnoremap <silent> \\t :call EasyMotion#T(0, 0)
xnoremap <silent> \\n :call EasyMotion#Search(1, 0)
onoremap <silent> \\n :call EasyMotion#Search(0, 0)
nnoremap <silent> \\n :call EasyMotion#Search(0, 0)
xnoremap <silent> \\k :call EasyMotion#JK(1, 1)
onoremap <silent> \\k :call EasyMotion#JK(0, 1)
nnoremap <silent> \\k :call EasyMotion#JK(0, 1)
xnoremap <silent> \\j :call EasyMotion#JK(1, 0)
onoremap <silent> \\j :call EasyMotion#JK(0, 0)
nnoremap <silent> \\j :call EasyMotion#JK(0, 0)
xnoremap <silent> \\gE :call EasyMotion#EW(1, 1)
onoremap <silent> \\gE :call EasyMotion#EW(0, 1)
nnoremap <silent> \\gE :call EasyMotion#EW(0, 1)
xnoremap <silent> \\f :call EasyMotion#F(1, 0)
onoremap <silent> \\f :call EasyMotion#F(0, 0)
nnoremap <silent> \\f :call EasyMotion#F(0, 0)
xnoremap <silent> \\e :call EasyMotion#E(1, 0)
onoremap <silent> \\e :call EasyMotion#E(0, 0)
nnoremap <silent> \\e :call EasyMotion#E(0, 0)
xnoremap <silent> \\b :call EasyMotion#WB(1, 1)
onoremap <silent> \\b :call EasyMotion#WB(0, 1)
nnoremap <silent> \\b :call EasyMotion#WB(0, 1)
xnoremap <silent> \\W :call EasyMotion#WBW(1, 0)
onoremap <silent> \\W :call EasyMotion#WBW(0, 0)
nnoremap <silent> \\W :call EasyMotion#WBW(0, 0)
xnoremap <silent> \\T :call EasyMotion#T(1, 1)
onoremap <silent> \\T :call EasyMotion#T(0, 1)
nnoremap <silent> \\T :call EasyMotion#T(0, 1)
xnoremap <silent> \\N :call EasyMotion#Search(1, 1)
onoremap <silent> \\N :call EasyMotion#Search(0, 1)
nnoremap <silent> \\N :call EasyMotion#Search(0, 1)
xnoremap <silent> \\ge :call EasyMotion#E(1, 1)
onoremap <silent> \\ge :call EasyMotion#E(0, 1)
nnoremap <silent> \\ge :call EasyMotion#E(0, 1)
xnoremap <silent> \\F :call EasyMotion#F(1, 1)
onoremap <silent> \\F :call EasyMotion#F(0, 1)
nnoremap <silent> \\F :call EasyMotion#F(0, 1)
xnoremap <silent> \\E :call EasyMotion#EW(1, 0)
onoremap <silent> \\E :call EasyMotion#EW(0, 0)
nnoremap <silent> \\E :call EasyMotion#EW(0, 0)
xnoremap <silent> \\B :call EasyMotion#WBW(1, 1)
onoremap <silent> \\B :call EasyMotion#WBW(0, 1)
nnoremap <silent> \\B :call EasyMotion#WBW(0, 1)
nmap \t <Plug>TaskList
xmap \t <Plug>TaskList
omap \t <Plug>TaskList
nnoremap \q :QFix
nmap \r :NERDTree %
nmap <silent> \cc <Plug>CRV_CRefVimInvoke
xmap <silent> \cc <Plug>CRV_CRefVimInvoke
omap <silent> \cc <Plug>CRV_CRefVimInvoke
nmap <silent> \cw <Plug>CRV_CRefVimAsk
xmap <silent> \cw <Plug>CRV_CRefVimAsk
omap <silent> \cw <Plug>CRV_CRefVimAsk
nmap <silent> \cr <Plug>CRV_CRefVimNormal
xmap <silent> \cr <Plug>CRV_CRefVimVisual
xmap ]% ]%m'gv``
xmap a% [%v]%
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap gs j:call g:SrcExpl_Jump() 
nmap gmT :call MoveToPrevTab() 
nmap gmt :call MoveToNextTab() 
nmap gW :wincmd W
nmap gw :wincmd w
xmap s <Plug>Vsurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Left> bi
snoremap <Right> a
snoremap <Del> a<BS>
snoremap <BS> a<BS>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nnoremap <F7> :set nopaste! | set nopaste?
nnoremap <F6> :set scrollbind! | set scrollbind?
nmap <F5> :edit :echom "Update File"
nmap <F4> :TagbarToggle
nmap <F3> :Tlist
nmap <F2> :NERDTreeToggle
snoremap <silent> <expr> <Plug>(neosnippet_jump) neosnippet#jump_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand) neosnippet#expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_jump_or_expand) neosnippet#jump_or_expand_impl()
snoremap <silent> <expr> <Plug>(neosnippet_expand_or_jump) neosnippet#expand_or_jump_impl()
smap <silent> <Plug>(neocomplcache_snippets_force_jump) <Plug>(neosnippet_jump)
smap <silent> <Plug>(neocomplcache_snippets_force_expand) <Plug>(neosnippet_expand)
smap <silent> <Plug>(neocomplcache_snippets_jump) <Plug>(neosnippet_jump_or_expand)
smap <silent> <Plug>(neocomplcache_snippets_expand) <Plug>(neosnippet_expand_or_jump)
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <expr>  neocomplcache#complete_common_string()
imap <expr>  neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? neocomplcache#smart_close_popup() : "\"
imap  <Plug>Isurround
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set cindent
set completefunc=neocomplcache#manual_complete
set completeopt=preview,menuone
set cscopeprg=/usr/bin/cscope
set cscopetag
set cscopetagorder=1
set cscopeverbose
set expandtab
set fileencodings=utf-8,big5,gbk,euc-jp,utf-16le
set history=1000
set hlsearch
set keywordprg=~/ydict-read-only/ydict
set laststatus=2
set listchars=tab:>-
set ruler
set runtimepath=~/.vim,~/.vim/bundle/LanguageTool,~/.vim/bundle/auto-pairs,~/.vim/bundle/crefvim,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/debug,~/.vim/bundle/doxygentoolkit,~/.vim/bundle/matchit,~/.vim/bundle/neocomplcache,~/.vim/bundle/neosnippet,~/.vim/bundle/nerdtree,~/.vim/bundle/samuelololol,~/.vim/bundle/srcexpl-local,~/.vim/bundle/sudo,~/.vim/bundle/surround,~/.vim/bundle/tagbar,~/.vim/bundle/taglist-local,~/.vim/bundle/tasklist,~/.vim/bundle/trinity-local,~/.vim/bundle/valgrind,~/.vim/bundle/vim-easymotion,~/.vim/bundle/vim-pathogen,/usr/share/vim/vimfiles,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,~/.vim/bundle/crefvim/after,~/.vim/after
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set statusline=%6*%<\ %1*[%F]\ %5*[%{&encoding},%{&fileformat}]%m%6*%=\ %6*%y%6*\ %3*%l%6*/%L,\ %3*%c%6*\ <%2*%P%6*>
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.info,.aux,.log,.dvi,.bbl,.out,.o,.lo
set noswapfile
set tabstop=4
set termencoding=utf-8
set title
set visualbell
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o,*/tmp/*,*.so,*.swp,*.zip,*\\tmp\\*,*.swp,*.zip,*.exe
" vim: set ft=vim :
