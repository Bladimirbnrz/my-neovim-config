# 🎨 My Neovim Config

📌 Mi configuración personalizada de Neovim, optimizada para productividad y personalización.

---

## 🚀 **Requisitos Previos**
Antes de clonar el repositorio, asegúrate de tener instalado:
- [vim-plug](https://github.com/junegunn/vim-plug) para gestionar plugins.
- Una fuente [Nerd Font](https://www.nerdfonts.com/) para símbolos y caracteres especiales.
- [Node.js](https://nodejs.org/) para coc.nvim

---

## 📦 **Instalación**
Clona este repositorio en tu configuración de Neovim:

```sh
git clone https://github.com/Bladimirbnrz/my-neovim-config.git ~/.config/nvim

Luego, abre Neovim y ejecuta:

:PlugInstall

Para cambiar de tema, edita init.vim y comenta o descomenta las líneas en la sección themes.
🎨 Temas recomendados: Gruvbox, TokyoNight, Nord, Nightfox.
⌨️ Atajos y Comandos Útiles
🔹 Comandos de Vim
Comando	Acción
y / yy	Copiar selección / Copiar línea
p / Shift+p	Pegar abajo / Pegar arriba
0 / $	Ir al inicio / fin de línea
gg / Shift+G	Ir al inicio / fin del archivo
numG	Ir a la línea especificada
dd	Eliminar y copiar línea
R	Modo reemplazo (poco útil)
🔹 Búsqueda y Reemplazo
Comando	Acción
/texto / ?texto	Buscar hacia adelante / atrás
n / N	Ir a la siguiente / anterior coincidencia
s/texto/nuevo/g	Reemplazar en la línea
%s/texto/nuevo/gc	Reemplazar en todo el documento (con confirmación)
🔹 Mapeos de Teclas
Acción	Tecla
Guardar archivo	<leader> + w
Cerrar archivo	<leader> + q
Forzar cierre	<leader> + Shift + q
Abrir árbol de archivos	<leader> + n + s
Cerrar árbol de archivos	<leader> + q
Moverse entre splits	Ctrl + h/j/k/l
Redimensionar splits	<leader> + > / <
🔹 Plugins y Funciones Especiales
🌳 NERDTree (Árbol de Archivos)
Acción	Tecla
Abrir árbol	<leader> + n + s
Cerrar árbol	<leader> + q
Abrir archivo en split vertical	i
Abrir archivo en split horizontal	s
🎯 EasyMotion
Acción	Tecla
Buscar caracteres	<leader> + s
🔍 FZF (Búsqueda Rápida)
Acción	Comando
Buscar archivos	:Files o <leader> + p
📝 Vim-Surround
Acción	Tecla
Rodear texto con un carácter	Seleccionar + <leader> + Shift + s
🛠 Configuraciones Especiales

Neovim permite configuraciones por tipo de archivo.
📂 Archivos específicos para LaTeX:
Ubicados en:

    ~/.config/nvim/ftplugin/tex/tex.vim
    ~/.config/nvim/ftplugin/tex/vimtex.vim

📌 Atajos para LaTeX:
Acción	Tecla
Guardar y compilar	F1
Abrir visor PDF	<leader> + v

Para más opciones, revisa la documentación oficial de VimTeX.
🎨 Temas y Sintaxis

Si el resaltado de sintaxis en LaTeX no es suficiente, puedes:

    Usar tu propio archivo en ~/.config/nvim/after/syntax/tex.vim
    Activar TreeSitter ejecutando:

    :TSInstall latex

    (Si eliges TreeSitter, elimina ~/.config/nvim/after/ para evitar conflictos).

📌 Temas recomendados: Nord, One Dark Pro, TokyoNight, Mine.
--Recomendaciones a priori:

--Instalar vim-plug para evitar problemas
--Instalar un nerd font (hay mucha información sobre cómo hacerlo)
--Asegurarte de tener instalado nodejs en tu sistema
--Leer este documento

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
