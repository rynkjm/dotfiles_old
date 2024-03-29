DOT_FILES = .vimrc .vim .vimrc.color .vimrc.apperance .vimrc.basic .vimrc.bundle .vimrc.editing .vimrc.encoding .vimrc.indent .vimrc.moving .vimrc.plugins_setting .bashrc .bash_profile .gitconfig Brewfile .gvimrc .brew_api_token .gitconfig .gist-vim

all: vim bash git brewfile gvim brew gitconfig gist

vim: $(foreach f, $(filter .vim%, $(DOT_FILES)), link-dot-file-$(f))
bash: $(foreach f, $(filter .bash%, $(DOT_FILES)), link-dot-file-$(f))
git: $(foreach f, $(filter .gitconfig, $(DOT_FILES)), link-dot-file-$(f))
brewfile: $(foreach f, $(filter Brewfile, $(DOT_FILES)), link-dot-file-$(f))
brew: $(foreach f, $(filter .brew%, $(DOT_FILES)), link-dot-file-$(f))
gvim: $(foreach f, $(filter .gvim%, $(DOT_FILES)), link-dot-file-$(f))
gitconfig: $(foreach f, $(filter .gitconfig, $(DOT_FILES)), link-dot-file-$(f))
gist: $(foreach f, $(filter .gist-vim, $(DOT_FILES)), link-dot-file-$(f))

.PHONY: clean
	clean: $(foreach f, $(DOT_FILES), unlink-dot-file-$(f))


link-dot-file-%: %
	  @echo "Create Symlink $< => $(HOME)/$<"
	    @ln -snf $(CURDIR)/$< $(HOME)/$<

unlink-dot-file-%: %
	  @echo "Remove Symlink $(HOME)/$<"
	    @$(RM) $(HOME)/$<
