# Linux Config

## Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> /home/palmex/.bashrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/palmex/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

## LAZYVIM

Requerimientos para instalar Lazyvim

Neovim

```bash
brew install neovim
```

Git

```bash
brew install git
```

Lazygit

```bash
brew install lazygit
```

Instalar la NerdFont ubicada en `./fonts/DankMono Nerd Font/`

## MEJORAR TERMINAL

El archivo de configuracion de es `.bashrc`

Crear un enlace simbolico con el siguiente comando

```bash
ln -s /d/dots/gitbash/.bashrc ~/.bashrc
```

Zoxide
Mejora la navegacion a directorios usando z y el nombre del directorio

```bash
winget install zoxide
```

Starship
mejora el aspecto de la terminal

```bash
brew install starship
eval "$(starship init bash)"
```

FZF
Es un buscador interactivo para la terminal
history | fzf para buscar en el historial de comandos

```bash
brew install fzf
```

FD
se usa para buscar archivos es mas rapido
fd nombreArchivo

```bash
brew install fd
```

LSD
Para listar archivos de mejor manera

```bash
brew install lsd
```

## Vscode

El archivo de configuracion esta en `dots/vscode`

crear el link simbolico de las settings

```bash
mklink C:\Users\luisp\AppData\Roaming\Code\User\settings.json D:\dots\vscode\settings.json
```
