# Setup
### Install zsh
```bash
sudo apt install zsh
```
### Change shell to zsh
```bash
chsh -s $(which zsh)
```
### Install rust
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
### Install apt packages
```bash
sudo apt install vim rofi starship zsh-autosuggestions zsh-syntax-highlighting
```
### Install uv
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```
### Install fnm and bun
```bash
curl -o- https://fnm.vercel.app/install | bash
fnm install --lts
```
```bash
curl -fsSL https://bun.sh/install | bash
```

## Rofi config
Set the following command as a shortcut in kde
```
rofi -normal-window -show drun
```

## List of all packages
rofi
vim
starship
zsh-autosuggestions
zsh-syntax-highlighting

deb packages to download from the web and apt install ./
code
cursor
chrome
edge
obsidian
via

## Font config
```bash
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/FiraCode/Regular/FiraCodeNerdFont-Regular.ttf
curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/FiraCode/Bold/FiraCodeNerdFont-Bold.ttf
```

Refresh font cache
```bash
fc-cache -fv
```