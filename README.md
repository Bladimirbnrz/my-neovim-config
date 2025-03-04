==================================
README
==================================

--Recomendaciones a priori:

-Instalar vim-plug para evitar problemas
-Instalar un nerd font (hay mucha información sobre cómo hacerlo)
-Asegurarte de tener instalado nodejs en tu sistema
-Leer este documento

--Posterior a haber clonado el repositorio:

-En neovim ejecuta :PlugInstall
-Buscar el colorscheme que se mas tu agrado
		Recomendados: gruvbox, tokyonight, nord, nightfox
		Nota: para cambiar entre temas comenta o descomenta las líneas de "themes" en init.vim
-Lee la documentación
-Visita los repositorios oficiales de todos los plugins y lee la documentación

==================================
Comandos y mapeos de vim
==================================

--Utilidades Vim
	En modo normal:
	y = copiar lo seleccionado
	yy = copiar la línea
	p = print
	0 = Ir al inicio de la línea
	$ = ir al final de la línea
	gg = Ir al comienzo del archivo
  shift+g =Ir al final del archivo
	num de línea+G = ir a la línea
	dd = Eliminar y copiar línea	
	p = Pegar lo que esta en el clipboard (abajo)
	shift+p = Pegar lo que está en el clipboard (arriba)
	cd (change word) = Cambiar delante del cursor hasta terminar la palabra
	cir (change the inner word) = Cambia toda la palabra/@@@ = Buscar hacía delante |
	?@@@ = Buscar hacía tras 		| n ; N  = Moverse entre coicidencias
	% (sobre un paréntesis) = ir al paréntesi correspondiente
	R = Modo remplazar (Bastenate inútil si me lo preguntas)
	
	En modo comando:
	s/(texto a remplazar)/(texto nuevo)/g -> para todas las coicidencias(En línea)
	%s/(texto a remplazar)/(texto nuevo)/gc ->Para preguntar            (En todo)

--Más Utilidades
	leader + w = guardar
	leader + q = salir
	leader + shift + q = forzar salida


--Tree (Árbol de ficheros)
	Abrir Tree = leader+n+s
	Cerrar Tree =	 leader+q
	Abir split verical = i
	Abir split vertical = s

--Vim-surround
	Seleccinar texto, leader+shift+s, indcar el signo

--Ventanas y navegación
	:vsp = mismo split en verticar
	:sp = mismo split por debajo
	Moverse entre splits = Ctrl + h,j,k,l
  Ctrl + v = abrir split verical = Desde el árbol de ficheros
--Test
	leader+shift+T

--FZF
	Buscar archivos = :Files ; leader+p

--EasyMotion
	Ir a serie de caracteres = leades+s ->@@(Caracteres cualquiera) ->a,b,d,f... (presionar las letras anteriores te manda a la coicidencia)
	 "" = leader+s

--Comentarios
	Comentar/des = leader, c, leadera    

--Redimensionar splits
	Más = leader+ > (Uno a la vez)
	Menos = leader+ < (Uno a la vez)

--Moverse entre tabs
	leader + h,j,k,l



==================================
      Utilidades especiales
==================================

neovim tiene las virtud de poder tener configuraciones especiales para cada tipo de archivo
~/.cofig/ftplugin/...

Por comodidad, hay algunos comandos que sólo funcionan en docs LaTeX

F1 = Guarda y compila
leader + v = abre el visor PDF
Y otros muchos más que están definidos en ~/.config/nvim/ftplugin/tex/tex.vim y ~/.config/nvim/ftplugin/tex/vimtex.vim

Nota:
Puedes cambiar el visor PDF de tu preferencia

==========================================
IMPORTANTE: 
LEER LA DOCUMENTACIÓN OFICIAL EN EL REPOSITORIO DE VIMTEX PARA SABER QUE HACE CADA COMANDO
se encuentra en: https://github.com/lervag/vimtex
==========================================

Nota: 
El resaltado de documentos LaTeX suele ser bastante malo, así que mi propio archivo de sintaxis:
~/.config/nvim/after/syntax/tex.vim

En el documento se encuentran varios temas, los cuales se pueden activar comentando o descomentando las últimas líneas del archivo
Creo que es claro cómo funciona. 
Recomendados: nord, one dark pro, tokyonight, mine 

En el caso de no querer ninguna de las sintaxis que vienen en el documento puedes crear tu propia sintaxis!!
Es muy fácil, el documento viene cómo hacerlo.

O si lo prefieres, probar el resaltado TreSitter ejecutando en neovim
:TSIstall latex 

(Elimina la carpeta ~/.../after si eliges esta última opción)

# my-neovim-config
