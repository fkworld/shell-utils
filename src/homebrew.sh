echo homebrew

echo 修改为中科大源
# Homebrew 源
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git
# Homebrew Bottles 源
# echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
# source ~/.zshrc
# Homebrew Core 源
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
# Homebrew Cask 源
cd "$(brew --repo)"/Library/Taps/homebrew/homebrew-cask
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-cask.git

echo 当前 homebrew 源
git -C "$(brew --repo)" remote -v
git -C "$(brew --repo homebrew/core)" remote -v
git -C "$(brew --repo homebrew/cask)" remote -v