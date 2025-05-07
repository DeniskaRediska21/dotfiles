.bashrc and .tmux.conf go to $HOME
other folders go to $HOME/.config

### Install bat
```
sudo apt install bat
```

### Install fzf
```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### Install rofi
```
sudo apt install rofi
```

### Install Rustup
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### Install alacritty
```
cargo install alacritty
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $(which alacritty) 50
```

### Install go
```
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.24.2.linux-amd64.tar.gz
wget https://go.dev/dl/go1.24.2.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.24.2.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
```

### Install lf
```
env CGO_ENABLED=0 go install -ldflags="-s -w" github.com/gokcehan/lf@latest
```

### Install helix
```
git clone https://github.com/helix-editor/helix
```

try:
```
cd helix
cargo install --path helix-term --locked
```
if fails:
```
HELIX_DISABLE_AUTO_GRAMMAR_BUILD = 1
cargo install --path helix-term --locked
```

```
cp -r helix/runtime ~/.config/helix
```
