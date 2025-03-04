"=================
"syntax clear

"================
"DELIMITADORES
"================
syntax match Delims "[{}()[\]]" containedin=@MathInLine, texMath, texMathEnv
syntax region DelimEnv start="\[" end="\]" 
syntax region DelimEnv start="(" end=")" 
syntax region DelimEnv start="{" end="}" 

"================
"COMANDOS
"================
syntax match Cmd "\\[a-zA-Z]\+" containedin=DelimEnv

"================
"ENTORNOS
"================
syntax match Envs "\\begin{[a-zA-Z]*}"
syntax match Envs "\\end{[a-zA-Z]*}"

"================
"SECTIONS
"================
syntax match SpCmd "\\\(section\|subsection\|subsubsection\)\*\{0,1\}\s*{.*}"

"================
"ENTORNOS MATH
"================
syntax region MathInLine start="\$" end="\$"
syntax region texMathEnv matchgroup=DelimsMath start="\\begin{equation}" end="\\end{equation}" contains=@Delims
syntax region texMathEnv matchgroup=DelimsMath start="\\begin{equation\*}" end="\\end{equation\*}" contains=@Delims
syntax region texMathEnv matchgroup=DelimsMath start="\\begin{align}" end="\\end{align}" contains=@Delims
syntax region texMathEnv matchgroup=DelimsMath start="\\begin{align\*}" end="\\end{align\*}" contains=@Delims
syntax region texMath matchgroup=DelimsMathEnv start="\\\[" end="\\\]" 
syntax region texMath matchgroup=DelimsMathEnv start="\\(" end="\\)" 
"================
"OPERADORES MATH
"================
syntax match MathOper "[+\-*/=^&]" containedin=ALL

"================
"COMENTARIOS
"================
syntax match Comment "%.*$" 


"=========================================
"STYLES
"=========================================


"==============
"MINE STYLE                                       "======>   Función   <=======
"==============                                      
highlight Normal   guifg=#EBDBB2 guibg=#192330    "======> Texto / Fondo
highlight Delims   guifg=#8BC4BA                  "======> Delimitadores {}, [], ()  
highlight MathOper guifg=#8BC4BA                  "======> Operadores =, +, -, / 
highlight Cmd      guifg=#86ABDC                  "======> Comandos Generales
highlight SpCmd    guifg=#BD93F6 gui=bold         "======> Sections ... \section, \subsection, etc   
highlight Envs     guifg=#C94F6D gui=bold         "======> \begin{} ... \end{}   
highlight Comment  guifg=#A5A8C0                  "======> Comentarios 
highlight texMath  guifg=#7DAC81                  "======> Texto matemático 
highlight link MathInLine texMath
highlight link texMathEnv texMath
highlight link DelimsMathEnv texMath
highlight link DelimsMath Envs
highlight link DelimEnv Delims
"#C94F6D"
 "#1E1E2E
"#81b281"
"#326C64"
"#326C44"
"#7DAC81"
"#5EAD9F
"#8BD5DA"
"highlight Normal   guifg=#CDD6F4 guibg=#192330
"highlight Delims   guifg=#F28FAD
"highlight MathOper guifg=#F28FAD
"highlight Cmd      guifg=#ABE9B3
"highlight SpCmd    guifg=#FAE3B0
"highlight Envs     guifg=#F5C2E7
"highlight Comment  guifg=#585B70
"highlight texMath  guifg=#8BD5CA
"highlight link MathInLine texMath
"highlight link texMathEnv texMath
"highlight link DelimsMathEnv texMath
"highlight link DelimsMath Envs
"highlight link DelimEnv Delims
"================
"GRUV STYLE
"================
"highlight Normal   guifg=#EBDBB2 guibg=#282828
"highlight Delims   guifg=#458588
"highlight MathOper guifg=#458588
"highlight Cmd      guifg=#D3869B
"highlight SpCmd    guifg=#FE8019
"highlight Envs     guifg=#B8BB26
"highlight Comment  guifg=#928374
"highlight texMath  guifg=#B16286
"highlight link MathInLine texMath
"highlight link texMathEnv texMath
"highlight link DelimsMathEnv texMath
"highlight link DelimsMath Envs
"highlight link DelimEnv Delims

"==============
"NORD STYLE
"==============
"highlight Normal   guifg=#D8DEE9 guibg=#2E3440
"highlight Delims   guifg=#5E81AC
"highlight MathOper guifg=#5E81AC
"highlight Cmd      guifg=#B48EAD
"highlight SpCmd    guifg=#88C0D0
"highlight Envs     guifg=#8FBCBB
"highlight Comment  guifg=#616E88
"highlight texMath  guifg=#BF616A
"highlight link MathInLine texMath
"highlight link texMathEnv texMath
"highlight link DelimsMathEnv texMath
"highlight link DelimsMath Envs
"highlight link DelimEnv Delims

"==============
"DRACULA STYLE
"==============
"highlight Normal   guifg=#F8F8F2 guibg=#282A36
"highlight Delims   guifg=#8BE9FD
"highlight MathOper guifg=#8BE9FD
"highlight Cmd      guifg=#FF79C6
"highlight SpCmd    guifg=#F1FA8C
"highlight Envs     guifg=#BD93F6
"highlight Comment  guifg=#6272A4
"highlight texMath  guifg=#FFB86C
"highlight link MathInLine texMath
"highlight link texMathEnv texMath
"highlight link DelimsMathEnv texMath
"highlight link DelimsMath Envs
"highlight link DelimEnv Delims

"==============
"SOLORIZED STYLE
"==============
"highlight Normal   guifg=#839496 guibg=#002B36
"highlight Delims   guifg=#268BD2
"highlight MathOper guifg=#268BD2
"highlight Cmd      guifg=#D33682
"highlight SpCmd    guifg=#CB4B16
"highlight Envs     guifg=#2AA198
"highlight Comment  guifg=#586E75
"highlight texMath  guifg=#B58900
"highlight link MathInLine texMath
"highlight link texMathEnv texMath
"highlight link DelimsMathEnv texMath
"highlight link DelimsMath Envs
"highlight link DelimEnv Delims

"==============
"TOKYO STYLE
"==============
"highlight Normal   guifg=#A9B1D6 guibg=#1A1B26
"highlight Delims   guifg=#7AA2F7
"highlight MathOper guifg=#7AA2F7
"highlight Cmd      guifg=#BB9AF7
"highlight SpCmd    guifg=#F7768E
"highlight Envs     guifg=#7DCFFF
"highlight Comment  guifg=#565F89
"highlight texMath  guifg=#9ECE6A
"highlight link MathInLine texMath
"highlight link texMathEnv texMath
"highlight link DelimsMathEnv texMath
"highlight link DelimsMath Envs
"highlight link DelimEnv Delims

"==============
"ONE PRO STYLE
"==============
"highlight Normal   guifg=#ABB2BF guibg=#282C34
"highlight Delims   guifg=#61AFEF
"highlight MathOper guifg=#61AFEF
"highlight Cmd      guifg=#C678DD
"highlight SpCmd    guifg=#E06C75
"highlight Envs     guifg=#61AFEF
"highlight Comment  guifg=#5C6370
"highlight texMath  guifg=#56B6C2
"highlight link MathInLine texMath
"highlight link texMathEnv texMath
"highlight link DelimsMathEnv texMath
"highlight link DelimsMath Envs
"highlight link DelimEnv Delims

"==============
"MATERIAL STYLE
"==============
"highlight Normal   guifg=#EEFFFF guibg=#263238
"highlight Delims   guifg=#82AAFF
"highlight MathOper guifg=#82AAFF
"highlight Cmd      guifg=#FF5370
"highlight SpCmd    guifg=#C3E88D
"highlight Envs     guifg=#82AAFF
"highlight Comment  guifg=#546E7A
"highlight texMath  guifg=#89DDFF
"highlight link MathInLine texMath
"highlight link texMathEnv texMath
"highlight link DelimsMathEnv texMath
"highlight link DelimsMath Envs
"highlight link DelimEnv Delims

"==============
"MONOKAI STYLE
"==============
"highlight Normal   guifg=#F8F8F2 guibg=#242424
"highlight Delims   guifg=#A6E22E
"highlight MathOper guifg=#A6E22E
"highlight Cmd      guifg=#66D9EF
"highlight SpCmd    guifg=#F92672
"highlight Envs     guifg=#A6E22E
"highlight Comment  guifg=#75715E
"highlight texMath  guifg=#AE81FF
"highlight link MathInLine texMath
"highlight link texMathEnv texMath
"highlight link DelimsMathEnv texMath
"highlight link DelimsMath Envs
"highlight link DelimEnv Delims

"==============
"PALENIGHT STYLE
"==============
"highlight Normal   guifg=#A6ACCD guibg=#292D3E
"highlight Delims   guifg=#C3E88D
"highlight MathOper guifg=#C3E88D
"highlight Cmd      guifg=#82AAFF
"highlight SpCmd    guifg=#FF5370
"highlight Envs     guifg=#C3E88D
"highlight Comment  guifg=#676E95
"highlight texMath  guifg=#FFCB6B
"highlight link MathInLine texMath
"highlight link texMathEnv texMath
"highlight link DelimsMathEnv texMath
"highlight link DelimsMath Envs
"highlight link DelimEnv Delims









