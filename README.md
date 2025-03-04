#  **My Neovim Config**❓

---

## 🚀 **Requisitos Previos**
Antes de clonar el repositorio, asegúrate de tener instalado:
- [vim-plug](https://github.com/junegunn/vim-plug) para gestionar plugins.
- Tener instalada una [Nerd Font](https://www.nerdfonts.com/) para símbolos y caracteres especiales.
- [Node.js](https://nodejs.org/) si usas **coc.nvim** y demás.

---

## 📦 **Instalación**
Clona este repositorio en tu configuración de Neovim:

```sh
git clone https://github.com/Bladimirbnrz/my-neovim-config.git ~/.config/nvim
```

Luego, abre Neovim y ejecuta:

```vim
:PlugInstall
```
## 📚 **Recomendaciones Post-Instalación**
- Revisa y lee la documentación de todos los plugins.
- Busca el colorscheme que sea de tu agrado. 

---
## 🎨 **Temas**
Para cambiar de tema, edita `init.vim` y comenta o descomenta las líneas en la sección `themes`.  
 **Temas recomendados:** *Gruvbox, TokyoNight, Nord, Nightfox*.

---

## ⌨️ **Utlidades Vim**
### 🔹 **Comandos de Vim**
| Comando | Acción |
|---------|--------|
| `y` / `yy` | Copiar selección / Copiar línea |
| `p` / `Shift+p` | Pegar abajo / Pegar arriba |
| `0` / `$` | Ir al inicio / fin de línea |
| `gg` / `Shift+G` | Ir al inicio / fin del archivo |
| `numG` | Ir a la línea especificada |
| `dd` | Eliminar y copiar línea |
| `R` | Modo reemplazo (inútil si me lo preguntas) |

### 🔹 **Búsqueda y Reemplazo**
| Comando | Acción |
|---------|--------|
| `/texto` / `?texto` | Buscar hacia adelante / atrás |
| `n` / `N` | Ir a la siguiente / anterior coincidencia |
| `s/texto/nuevo/g` | Reemplazar en la línea |
| `%s/texto/nuevo/gc` | Reemplazar de forma global (con confirmación) |

### 🔹 **Mapeos de Teclas**
| Acción | Tecla |
|--------|-------|
| **Guardar** | `<leader> + w` |
| **Cerrar ** | `<leader> + q` |
| **Forzar cierre** | `<leader> + Shift + q` |
| **Cerrar árbol de archivos** | `<leader> + q` |
| **Moverse entre splits** | `Ctrl + h/j/k/l` |
| **Redimensionar splits** | `<leader> + Ctrl +  > / <` |

#### 🌳 **NERDTree (Árbol de Archivos)**
| Acción | Tecla |
|--------|-------|
| Abrir árbol | `<leader> + n + s` |
| Cerrar árbol | `<leader> + q` |
| Abrir archivo en split vertical | `Ctrl + v` |

#### 🎯 **EasyMotion**
| Acción | Tecla |Post-Acción|
|--------|-------|-----------|
| Buscar caracteres | `<leader> + s + @@` | Presionar a/b/c/d... para ir a la palabra
>@@ son dos carácteres cualquiera

#### 🔍 **FZF (Búsqueda Rápida)**
| Acción | Comando |
|--------|---------|
| Buscar archivos | `:Files` o `<leader> + p` |

#### 📝 **Vim-Surround**
| Acción | Tecla | Post-Acción |
|--------|-------|-------------|
| Rodear texto con un carácter | Seleccionar + `<leader> + Shift + s` | Teclear el carácter |

#### 📌**Comentar Rápido**
| Acción | Tecla |
|--------|-------|
|Des/Comentar| `c +<leader> + c`
---

## 🛠 **Utlidades Especiales**
Neovim tiene las virtud de poder tener configuraciones especiales para cada tipo de archivo.

📂 **Archivos específicos para LaTeX:**  
Ubicados en:
- `~/.config/nvim/ftplugin/tex/tex.vim`
- `~/.config/nvim/ftplugin/tex/vimtex.vim`

Por comodidad, hay algunos comandos que sólo funcionan en archivos LaTeX (.tex).

 Atajos para LaTeX:
| Acción | Tecla |
|--------|-------|
| Guardar y compilar | `F1` |
| Abrir visor PDF | `<leader> + v` |


Y otros muchos más que están definidos en los archivos menciondados antes.
<br>❗❗IMPORTANTE: Revisa la documentación oficial de [VimTeX](https://github.com/lervag/vimtex) para saber qué hace cada comando.
>Nota: Puedes cambiar el PDFviewer si gustas comentando o descomntando las líneas relacionadas en los archivos menciondados arriba

---

## 🎨 **Temas y Sintaxis para LaTeX**
El resaltado de documentos LaTeX suele ser bastante malo, así que cree mi propio archivo de sintaxis:
- `~/.config/nvim/after/syntax/tex.vim`
En el documento se encuentran varios temas basados en paletas famosas. Estos se pueden activar comentando o descomentando las últimas líneas del archivo.
<br>Creo que es claro cómo funciona.
<br> **Temas recomendados:** *Nord, One Dark Pro, TokyoNight, Mine*.
<br> En el caso de no querer ninguna de las paletas que vienen en el documento puedes crear tu propia paleta de colores!!!
<br>Es muy fácil, en el documento viene cómo hacerlo.
<br> O, si lo prefieres, puedes probar el resaltado de TreeSitter ejecutando en Neovim:
   ```vim
   :TSInstall latex
   ```
   *(Elimina `~/.config/nvim/after/` si eliges la última opción).*
---
## 🐢 **Notas Finales**
Ahora tienes un Neovim con autompletado (no para LaTeX, pero es tu decisión utilizar snippets o una extensión de CoC), colores bonitos y un montoón de plugins que no sabes qué hacen. Y en regla general, si se siguen las instrucciones, Neovim está más que bien, aunque queda espaci para una personalización más personalizada.
