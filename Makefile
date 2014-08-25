DOT_FILES = .vimrc .vim .vimrc.apperance .vimrc.basic .vimrc.bundle .vimrc.editing .vimrc.encoding .vimrc.indent .vimrc.moving .bashrc .bash_profile .gitconfig

all: vim bash git

vim: $(foreach f, $(filter .vim%, $(DOT_FILES)), link-dot-file-$(f))
bash: $(foreach f, $(filter .bash%, $(DOT_FILES)), link-dot-file-$(f))
git: $(foreach f, $(filter .gitconfig, $(DOT_FILES)), link-dot-file-$(f))


.PHONY: clean
	clean: $(foreach f, $(DOT_FILES), unlink-dot-file-$(f))


link-dot-file-%: %
	  @echo "Create Symlink $< => $(HOME)/$<"
	    @ln -snf $(CURDIR)/$< $(HOME)/$<

unlink-dot-file-%: %
	  @echo "Remove Symlink $(HOME)/$<"
	    @$(RM) $(HOME)/$<
