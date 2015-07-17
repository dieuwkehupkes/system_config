# run to install plugins and configure vim with current vimrc file

# copy vimrc file to ./vimrc
cp .vimrc ~/.vimrc

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# clone Vundle to manage plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# solarized
git clone https://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/solarized
mv vim-colors-solarized ~/.vim/bundle

# vim-processing
git clone https://github.com/sophacles/vim-processing.git ~/.vim/bundle/vim-processing

# vim-latex
git clone https://github.com/jcf/vim-latex.git ~/.vim/bundle/vim-latex

# vim-airline
git clone https://github.com/bling/vim-airline.git ~/.vim/bundle/vim-airline

# syntastic
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
