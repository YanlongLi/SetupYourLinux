#!/usr/bin/env bash

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

plugindir=~/.oh-my-zsh/plugins
baseuri=https://github.com
plugins=(zsh-users/zsh-autosuggestions zsh-users/zsh-syntax-highlighting)
profiles=(zshrc zprofile)

cur=`pwd`
# gitdir=${1-`realpath ./`}
gitdir="`dirname \"$0\"`"

if [ ! -d $plugindir ]; then
  echo "$plugindir not exist, create it"
  mkdir -p $plugindir
fi

echo "change directory to $plugindir ..."
cd $plugindir
for path in ${plugins[@]}; do
  echo "clone plugin $path begin ..."
  git clone $baseuri/$path.git >/dev/null 2>&1
done

cd $cur

echo "copy zsh profiles"
for fname in ${profiles[@]}; do
  if [ -f ~/zshrc ]; then
    mv -f ~/.zshrc ~/.zshrc.back
  fi
  cp -f $gitdir/zsh/$fname ~/.$fname
done
echo "use command below to change your default shell:"
echo "sudo chsh -s $(which zsh) \$USER"
echo "~~~~~~~~~~~~ done ~~~~~~~~~~~~~"

