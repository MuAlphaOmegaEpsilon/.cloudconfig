" Lightline

" Colors		 FOREGROUND BACKGROUND
let s:mode_rpl = [['', 00], ['', 01]] " Black on red
let s:mode_nrm = [['', 00], ['', 02]] " Black on orange
let s:mode_cmd = [['', 00], ['', 03]] " Black on yellow
let s:mode_ins = [['', 00], ['', 04]] " Black on green
let s:mode_vsl = [['', 00], ['', 07]] " Black on light grey
let s:mode_tab = [['', 00], ['', 05]] " Black on light blue
let s:mode_ict = [['', 15], ['', 06]] " White on dark grey
let s:file_inf = [['', 07], ['', 06]] " Light grey on dark grey 
let s:middle   = [['', 07], ['', 06]] " Light grey on dark grey
let s:percent  = [['', 05], ['', 06]] " Blue on dark grey
let s:position = [['', 10], ['', 06]] " Pink on dark grey
let s:error    = [['', 01], ['', 06]] " Red on dark grey
let s:warning  = [['', 03], ['', 06]] " Yellow on dark grey

let s:p = {'normal': {}, 'command': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ s:mode_nrm, s:file_inf ]
let s:p.insert.left     = [ s:mode_ins, s:file_inf ]
let s:p.command.left    = [ s:mode_cmd, s:file_inf ]
let s:p.replace.left    = [ s:mode_rpl, s:file_inf ]
let s:p.visual.left     = [ s:mode_vsl, s:file_inf ]
let s:p.tabline.left    = [ s:mode_tab, s:file_inf ]
let s:p.inactive.left   = [ s:mode_ict, s:file_inf ]
let s:p.normal.middle   = [ s:middle ]
let s:p.tabline.middle  = [ s:middle ]
let s:p.inactive.middle = [ s:mode_ict ]
let s:p.normal.right    = [ s:position, s:percent ]
let s:p.tabline.right   = [ s:position, s:percent ]
let s:p.inactive.right  = [ s:mode_ict, s:mode_ict ]
let s:p.normal.error    = [ s:error ]
let s:p.normal.warning  = [ s:warning ]
let s:p.tabline.tabsel  = [ s:mode_vsl ]

let g:lightline#colorscheme#maze_lightline#palette = lightline#colorscheme#flatten(s:p)
let g:lightline = {
	\ 'colorscheme': 'maze_lightline',
	\ }
