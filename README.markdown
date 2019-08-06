sudo apt install gvim  
git clone git@github.com:bjorntrondsen/vim.git ~/.vim  
ln -s ~/.vim/.vimrv ~/.vimrc  
cd .vim  
git submodule init  
git submodule update  
