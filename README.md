# nvim

**My Neovim Setup**

Neovim https://neovim.io/ <br/>
VSCode-Neovim https://github.com/asvetliakov/vscode-neovim <br/>

init.vim based https://github.com/craftzdog/dotfiles-public <br/>
init.lua based https://github.com/alpha2phi/dotfiles/tree/main/config/nvim <br/>

Why Lua? <br/>
https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/ <br/>
https://oroques.dev/notes/neovim-init/ <br/>
https://teukka.tech/luanvim.html <br/>

info <br/>
https://medium.com/swlh/neovim-lsp-dap-and-fuzzy-finder-60337ef08060 <br/>
https://alpha2phi.medium.com/neovim-init-lua-e80f4f136030 <br/>
https://bryankegley.me/posts/nvim-getting-started/ <br/>

**Prerequisite**
1. install Neovim https://github.com/neovim/neovim/wiki/Installing-Neovim
2. check path <br/>
   2.1 open nvim <br/>
   2.2 nvim cmd : <br/>
       :echo stdpath('config') *to get configuration path*  
       :echo stdpath('data') *to get data path*
3. create folder according to configuration path
4. create init.vim or init.lua or clone from this repo
5. install packer as package manager https://github.com/wbthomason/packer.nvim#compiling-lazy-loaders <br/>
   :*optional can include bootstrapping code in init.lua to automatic load packer*
7. plugin impatient https://github.com/lewis6991/impatient.nvim *for better start up (scope lua search within lua folder)*
