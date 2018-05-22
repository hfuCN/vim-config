
" Plugin Settings
"---------------------------------------------------------

if dein#tap('tagbar')
	nnoremap <silent> <Leader>o   :<C-u>TagbarOpenAutoClose<CR>
	" sort by sourcefile
	let g:tagbar_sort = 0

	" Also use h/l to open/close folds
	let g:tagbar_map_closefold = ['h', '-', 'zc']
	let g:tagbar_map_openfold = ['l', '+', 'zo']
	" for Tagbarbar, sudo apt-get install ctags
	nnoremap <silent> <F8> :TagbarToggle<CR>
	nnoremap <leader>t :TagbarToggle<CR>
endif

if dein#tap('nerdtree')
	let g:NERDTreeMapOpenSplit = 'sv'
	let g:NERDTreeMapOpenVSplit = 'sg'
	let g:NERDTreeMapOpenInTab = 'st'
	let g:NERDTreeMapOpenInTabSilent = 'sT'
	let g:NERDTreeMapUpdirKeepOpen = '<BS>'
	let g:NERDTreeMapOpenRecursively = 't'
	let g:NERDTreeMapCloseChildren = 'T'
	let g:NERDTreeMapToggleHidden = '.'

	nmap ,v :NERDTreeFind<cr>
	nmap ,g :NERDTreeToggle<cr>

	nnoremap <silent> <LocalLeader>e :<C-u>NERDTreeToggle<CR>
	nnoremap <silent> <LocalLeader>a :<C-u>NERDTreeFind<CR>
endif

if dein#tap('neosnippet.vim')
	imap <expr><C-o> neosnippet#expandable_or_jumpable()
		\ ? "\<Plug>(neosnippet_expand_or_jump)" : "\<ESC>o"
	xmap <silent><C-s> <Plug>(neosnippet_register_oneshot_snippet)
	smap <silent>L     <Plug>(neosnippet_jump_or_expand)
	xmap <silent>L     <Plug>(neosnippet_expand_target)
endif

if dein#tap('vim-operator-surround')
	map <silent>sa <Plug>(operator-surround-append)
	map <silent>sd <Plug>(operator-surround-delete)
	map <silent>sr <Plug>(operator-surround-replace)
	nmap <silent>saa <Plug>(operator-surround-append)<Plug>(textobj-multiblock-i)
	nmap <silent>sdd <Plug>(operator-surround-delete)<Plug>(textobj-multiblock-a)
	nmap <silent>srr <Plug>(operator-surround-replace)<Plug>(textobj-multiblock-a)
endif

if dein#tap('vim-operator-replace')
	xmap p <Plug>(operator-replace)
endif

if dein#tap('vim-operator-flashy')
	map y <Plug>(operator-flashy)
	nmap Y <Plug>(operator-flashy)$
endif

if dein#tap('vim-niceblock')
	xmap I  <Plug>(niceblock-I)
	xmap A  <Plug>(niceblock-A)
endif

if dein#tap('accelerated-jk')
	nmap <silent>j <Plug>(accelerated_jk_gj)
	nmap <silent>k <Plug>(accelerated_jk_gk)
endif

if dein#tap('vim-edgemotion')
	map gj <Plug>(edgemotion-j)
	map gk <Plug>(edgemotion-k)
	xmap gj <Plug>(edgemotion-j)
	xmap gk <Plug>(edgemotion-k)
endif

if dein#tap('vim-quickhl')
	nmap <Leader>, <Plug>(quickhl-manual-this)
	xmap <Leader>, <Plug>(quickhl-manual-this)
endif

if dein#tap('vim-sidemenu')
	nmap <Leader>l <Plug>(sidemenu)
	xmap <Leader>l <Plug>(sidemenu-visual)
endif

if dein#tap('vim-indent-guides')
	nmap <silent><Leader>ti :<C-u>IndentGuidesToggle<CR>
endif

if dein#tap('committia.vim')
	let g:committia_hooks = {}
	function! g:committia_hooks.edit_open(info)
		imap <buffer><C-d> <Plug>(committia-scroll-diff-down-half)
		imap <buffer><C-u> <Plug>(committia-scroll-diff-up-half)

		setlocal winminheight=1 winheight=1
		resize 10
		startinsert
	endfunction
endif

if dein#tap('python_match.vim')
	nmap <buffer> {{ [%
	nmap <buffer> }} ]%
endif

if dein#tap('vim-peekaboo')
	nnoremap <buffer> <silent> " :<c-u>call peekaboo#peek(v:count1, 'quote',  0)<cr>
	xnoremap <buffer> <silent> " :<c-u>call peekaboo#peek(v:count1, 'quote',  1)<cr>
	nnoremap <buffer> <silent> @ :<c-u>call peekaboo#peek(v:count1, 'replay', 0)<cr>
	inoremap <buffer> <silent> <c-r> <c-o>:call peekaboo#peek(1, 'ctrl-r',  0)<cr>
endif

if dein#tap('vim-choosewin')
	nmap -         <Plug>(choosewin)
	nmap <Leader>- :<C-u>ChooseWinSwapStay<CR>
endif

if dein#tap('jedi-vim')
	let g:jedi#completions_command = ''
	let g:jedi#documentation_command = 'K'
	let g:jedi#goto_command = '<C-]>'
	let g:jedi#goto_assignments_command = '<leader>g'
	let g:jedi#rename_command = '<Leader>r'
	let g:jedi#usages_command = '<Leader>n'
endif

if dein#tap('vim-gitgutter')
	nmap <Leader>hj <Plug>GitGutterNextHunk
	nmap <Leader>hk <Plug>GitGutterPrevHunk
	nmap <Leader>hs <Plug>GitGutterStageHunk
	nmap <Leader>hr <Plug>GitGutterUndoHunk
	nmap <Leader>hp <Plug>GitGutterPreviewHunk
endif

if dein#tap('vimagit')
	nnoremap <silent> mg :Magit<CR>

	" autocmd MyAutoCmd FileType magit
	" 	\ nnoremap <silent><buffer> <CR> za
endif

if dein#tap('vim-easygit')
	nnoremap <silent> <leader>gd :Gdiff<CR>
	nnoremap <silent> <leader>gD :Gdiffoff<CR>
	nnoremap <silent> <leader>gc :Gcommit<CR>
	nnoremap <silent> <leader>gb :Gblame<CR>
	nnoremap <silent> <leader>gB :Gbrowse<CR>
	nnoremap <silent> <leader>gS :Gstatus<CR>
	nnoremap <silent> <leader>gp :Gpush<CR>
endif

if dein#tap('undotree')
	nnoremap <Leader>gu :UndotreeToggle<CR>
endif

if dein#tap('vim-asterisk')
	map *   <Plug>(asterisk-g*)
	map g*  <Plug>(asterisk-*)
	map #   <Plug>(asterisk-g#)
	map g#  <Plug>(asterisk-#)

	map z*  <Plug>(asterisk-z*)
	map gz* <Plug>(asterisk-gz*)
	map z#  <Plug>(asterisk-z#)
	map gz# <Plug>(asterisk-gz#)
endif

if dein#tap('vim-expand-region')
	xmap v <Plug>(expand_region_expand)
	xmap V <Plug>(expand_region_shrink)
endif

if dein#tap('sideways.vim')
	nnoremap <silent> m" :SidewaysJumpLeft<CR>
	nnoremap <silent> m' :SidewaysJumpRight<CR>
	omap <silent> a, <Plug>SidewaysArgumentTextobjA
	xmap <silent> a, <Plug>SidewaysArgumentTextobjA
	omap <silent> i, <Plug>SidewaysArgumentTextobjI
	xmap <silent> i, <Plug>SidewaysArgumentTextobjI
endif

if dein#tap('splitjoin.vim')
	let g:splitjoin_join_mapping = ''
	let g:splitjoin_split_mapping = ''
	nmap sj :SplitjoinJoin<CR>
	nmap sk :SplitjoinSplit<CR>
endif

if dein#tap('linediff.vim')
	vnoremap ,df :Linediff<CR>
	vnoremap ,da :LinediffAdd<CR>
	nnoremap ,ds :<C-u>LinediffShow<CR>
	nnoremap ,dr :<C-u>LinediffReset<CR>
endif

if dein#tap('dsf.vim')
	nmap dsf <Plug>DsfDelete
	nmap csf <Plug>DsfChange
endif

if dein#tap('vim-commentary')
	xmap <Leader>c  <Plug>Commentary
	nmap <Leader>c  <Plug>CommentaryLine
	xmap gc  <Plug>Commentary
	nmap gc  <Plug>Commentary
	omap gc  <Plug>Commentary
	nmap gcc <Plug>CommentaryLine
	nmap cgc <Plug>ChangeCommentary
	nmap gcu <Plug>Commentary<Plug>Commentary
endif

if dein#tap('vim-easymotion')
	map <Leader><Leader>w <Plug>(easymotion-w)
	map <Leader><Leader>f <Plug>(easymotion-f)
	map <Leader><Leader>b <Plug>(easymotion-b)
	" nmap ss <Plug>(easymotion-s2)
	" nmap sd <Plug>(easymotion-s)
	" nmap sf <Plug>(easymotion-overwin-f)
	" map  sh <Plug>(easymotion-linebackward)
	" map  sl <Plug>(easymotion-lineforward)
	" " map  sj <Plug>(easymotion-j)
	" " map  sk <Plug>(easymotion-k)
	" map  s/ <Plug>(easymotion-sn)
	" omap s/ <Plug>(easymotion-tn)
	" map  sn <Plug>(easymotion-next)
	" map  sp <Plug>(easymotion-prev)
endif

if dein#tap('vim-textobj-multiblock')
	omap <silent> ab <Plug>(textobj-multiblock-a)
	omap <silent> ib <Plug>(textobj-multiblock-i)
	xmap <silent> ab <Plug>(textobj-multiblock-a)
	xmap <silent> ib <Plug>(textobj-multiblock-i)
endif

if dein#tap('vim-textobj-function')
	omap <silent> af <Plug>(textobj-function-a)
	omap <silent> if <Plug>(textobj-function-i)
	xmap <silent> af <Plug>(textobj-function-a)
	xmap <silent> if <Plug>(textobj-function-i)
endif

if dein#tap('incsearch.vim')
	" 模糊搜索，使用z/支持模糊搜索
	map z/ <Plug>(incsearch-fuzzy-/)
	map z? <Plug>(incsearch-fuzzy-?)
	map zg/ <Plug>(incsearch-fuzzy-stay)
endif

if dein#tap('vim-pydocstring')
	nmap <silent> <C-d> <Plug>(pydocstring)
endif

if dein#tap('python-mode')
	let g:pymode_python = 'python'  " Values are `python`, `python3`, `disable`.
	let g:pymode_paths = reverse(split(globpath(getcwd().'/eggs', '*'), '\n'))    " support zc.buildout
	let g:pymode_trim_whitespaces = 1
	let g:pymode_quickfix_maxheight = 3
	let g:pymode_indent = 1
	let g:pymode_folding = 1
	let g:pymode_breakpoint = 1
	let g:pymode_breakpoint_bind = "<C-k>"
	let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()  # BREAKPOINT TODO REMOVE; from nose.tools import set_trace; set_trace()'

	let g:pymode_run = 1
	let g:pymode_run_bind = "<C-e>"
	let g:pymode_virtualenv = 1
	let g:pymode_virtualenv_path = $VIRTUAL_ENV

	" Override view python doc key shortcut to Ctrl-Shift-d
	let g:pymode_doc=1
	let g:pymode_doc_bind = 'K'

	autocmd CompleteDone * pclose
	autocmd FileType python setlocal omnifunc=RopeCompleteFunc
	let g:pymode_rope = 1
	let g:pymode_rope_autoimport = 0
	let g:pymode_rope_complete_on_dot = 0
	let g:pymode_rope_lookup_project = 0
	let g:pymode_rope_goto_definition_bind = "<C-j>"
	let g:pymode_rope_goto_definition_cmd = 'vnew'
	let g:pymode_rope_regenerate_on_write = 0
	command PR PymodeRopeRegenerate

	let g:pymode_lint = 1
	let g:pymode_lint_on_write = 1
	let g:pymode_lint_on_fly = 0
	let g:pymode_lint_message = 1
	let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint']
	let g:pymode_lint_ignore = ["C0103, C0111, C0301, C0304, C0325, E0702, E1120, R0201, R0903, R0911, R0912, R0913, R1705, W0105, W0108, W0110, W0201, W0221, W0223, W0235, W0403, W0511, W0622, W0703, W1202"]
	let g:pymode_lint_options_mccabe = { 'complexity': 15 }
	let g:pymode_lint_signs = 1
	let g:pymode_lint_todo_symbol = '😡' 
	" let g:pymode_lint_error_symbol = '❌'
	" let g:pymode_lint_comment_symbol = '😢'
	" let g:pymode_lint_comment_symbol = "❗"
	let g:pymode_lint_error_symbol = "\U2717"
	let g:pymode_lint_comment_symbol = "\u2757"
	let g:pymode_lint_visual_symbol = "\u0021"

	" 修改默认的红线为浅色，solorized黑色主题
	highlight ColorColumn ctermbg=233
	let g:pymode_lint_cwindow = 0
	let g:pymode_options_max_line_length = 120
	let g:pymode_options_colorcolumn = 1
	" 指定UltiSnips python的docstring风格, sphinx, google, numpy
	let g:ultisnips_python_style = 'sphinx'
	" http://stackoverflow.com/questions/16021297/how-to-map-alias-a-command-in-vim, PymodeLint映射成PL
	command PL PymodeLint
	" command PA PymodeLintAuto    " auto fix pep8
	command PA Autoformat  " auto pep8   pip install autopep8
	noremap <leader>p :Autoformat<cr>
endif

if dein#tap('InstantRst')
	" rst书写插件
	let proj1 = { 'path': '~/Program/doc/python-web-guide',}
	let g:riv_projects = [proj1]
endif

if dein#tap('vim-instant-markdown')
	let g:instant_markdown_autostart = 0
	let g:vim_markdown_conceal = 0
	" quote code use `
	nnoremap <leader>" <esc>I`<esc>A`<esc>`
endif

if dein#tap('ctrlp.vim')
	" ctrlp, 在~/.agignore添加一行node_modules
	set wildignore+=*/tmp/*,*.so,*.swp,*.zip
	let g:ctrlp_custom_ignore = {
		\ 'dir':  '\v[\/]\.(git|hg|svn)$',
		\ 'file': '\v\.(exe|so|dll|swp|pyc|pyo)$',
		\ }
	let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
	if executable('ag')
		" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
		set grepprg=ag\ --nogroup\ --nocolor
		" Use ag in CtrlP for listing files. Lightning fast, respects .gitignore
		" and .agignore. Ignores hidden files by default.
  let g:ctrlp_user_command = 'ag %s -l --nocolor -f -g ""'
	else
		"ctrl+p ignore files in .gitignore
		let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
	endif
endif

if dein#tap('rainbow_parentheses.vim')
	"http://vimawesome.com/plugin/rainbow-parentheses-vim   花里胡哨的彩虹括号^_^
	"http://www.wklken.me/posts/2015/06/07/vim-plugin-rainbowparentheses.html
	let g:rbpt_colorpairs = [
			\ ['brown',       'RoyalBlue3'],
			\ ['Darkblue',    'SeaGreen3'],
			\ ['darkgray',    'DarkOrchid3'],
			\ ['darkgreen',   'firebrick3'],
			\ ['darkcyan',    'RoyalBlue3'],
			\ ['darkred',     'SeaGreen3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['brown',       'firebrick3'],
			\ ['gray',        'RoyalBlue3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['Darkblue',    'firebrick3'],
			\ ['darkgreen',   'RoyalBlue3'],
			\ ['darkcyan',    'SeaGreen3'],
			\ ['darkred',     'DarkOrchid3'],
			\ ['red',         'firebrick3'],
			\ ]

	" 不加入这行, 防止黑色括号出现, 很难识别
	" \ ['black',       'SeaGreen3'],

	let g:rbpt_max = 16
	let g:rbpt_loadcmd_toggle = 0
	au VimEnter * RainbowParenthesesToggle
	au Syntax * RainbowParenthesesLoadRound
	au Syntax * RainbowParenthesesLoadSquare
	au Syntax * RainbowParenthesesLoadBraces
endif

if dein#tap('vim-interestingwords')
	" https://github.com/lfv89/vim-interestingwords 高亮感兴趣的 word
	nnoremap <silent> <leader>f :call InterestingWords('n')<cr>
	nnoremap <silent> <leader>F :call UncolorAllWords()<cr>
endif

if dein#tap('vim-startify')
	" 禁止 startify 自动切换目录
	let g:startify_change_to_dir = 0
endif

if dein#tap('toggle-numbers.vim')
	" Plugin 'fullybaked/toggle-numbers.vim'
	nmap ,n :LineNumberToggle<cr>
	nnoremap <C-m> :LineNumberToggle<cr>
endif


if dein#tap('vim-airline')
	" for airline
	let g:airline_powerline_fonts=0
	let g:airline_theme = 'hybrid'
	let g:airline#extensions#tabline#enabled = 1
	function! ArilineInit()
		let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
		let g:airline_section_b = airline#section#create_left(['ffenc', 'hunks', '%F'])
	  "let g:airline_section_c = airline#section#create(['filetype'])
		let g:airline_section_x = airline#section#create(['%P'])
		let g:airline_section_y = airline#section#create(['%B'])
		let g:airline_section_z = airline#section#create_right(['%l', '%c'])
	endfunction
	"autocmd VimEnter * call ArilineInit()
endif


if dein#tap('Yggdroot/indentLine')
	let g:indentLine_enabled = 1
	" autocmd FileType * IndentLinesEnable
	" autocmd VimEnter,BufEnter,BufRead,BufWinEnter,WinEnter,BufNewFile,TabEnter * IndentLinesEnable
endif


if dein#tap('Chiel92/vim-autoformat')
	" pip install --upgrade autopep8
	let g:formatdef_autopep8 = '"autopep8 --max-line-length 120"'
	let g:formatters_python = ['autopep8']
endif


if dein#tap('editorconfig/editorconfig-vim')
	let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
endif


if dein#tap('vim-multiple-cursors')
	" https://github.com/Shougo/deoplete.nvim/blob/master/doc/deoplete.txt
	function g:Multiple_cursors_before()
		let g:deoplete#disable_auto_complete = 1
	endfunction
	function g:Multiple_cursors_after()
		let g:deoplete#disable_auto_complete = 0
	endfunction
endif

" vim: set ts=2 sw=2 tw=80 noet :
