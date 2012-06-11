
addToPath () {
	for DIR in $1
	do
		if [ -d "$DIR" ]; then
			PATH=$PATH:$DIR
		fi
	done
}


#test -r /sw/bin/init.sh && . /sw/bin/init.sh
export TERM=xterm-color
export PS1='\[\033[01;40m\]\u@\h\[\033[01;40m\] \W \$\[\033[00m\] '
export CLICOLOR=1
export LSCOLORS=Hxfxcxdxbxegedabagacad
alias ls='ls -GF'
alias ll='ls -hl'
alias rm='rm -i'
alias cp='cp -i'

#Directory bookmarks
alias m1='alias g1="cd `pwd`"'
alias m2='alias g2="cd `pwd`"'
alias m3='alias g3="cd `pwd`"'
alias m4='alias g4="cd `pwd`"'
alias m5='alias g5="cd `pwd`"'
alias m6='alias g6="cd `pwd`"'
alias m7='alias g7="cd `pwd`"'
alias m8='alias g8="cd `pwd`"'
alias m9='alias g9="cd `pwd`"'
alias mdump='alias|grep -e "alias g[0-9]"|grep -v "alias m" > ~/.bookmarks'
alias lma='alias | grep -e "alias g[0-9]"|grep -v "alias m"|sed "s/alias //"'


#test -r /sw/bin/init.sh && . /sw/bin/init.sh
export TERM=xterm-color
export PS1='\[\033[01;40m\]\u@\h\[\033[01;40m\] \W \$\[\033[00m\] '
export CLICOLOR=1
export LSCOLORS=Hxfxcxdxbxegedabagacad
alias ls='ls -GF'
alias ll='ls -hl'
alias rm='rm -i'
alias cp='cp -i'

#Directory bookmarks
alias m1='alias g1="cd `pwd`"'
alias m2='alias g2="cd `pwd`"'
alias m3='alias g3="cd `pwd`"'
alias m4='alias g4="cd `pwd`"'
alias m5='alias g5="cd `pwd`"'
alias m6='alias g6="cd `pwd`"'
alias m7='alias g7="cd `pwd`"'
alias m8='alias g8="cd `pwd`"'
alias m9='alias g9="cd `pwd`"'
alias mdump='alias|grep -e "alias g[0-9]"|grep -v "alias m" > ~/.bookmarks'
alias lma='alias | grep -e "alias g[0-9]"|grep -v "alias m"|sed "s/alias //"'

bind "set completion-ignore-case On"
set -o vi


OS=`uname -s`
if [ $OS == "Darwin" ]; then
	# Setting PATH for MacPython 2.5
	# The orginal version is saved in .bash_profile.pysave
	PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
	export PATH

	# python - homebrew style
	export PATH=/usr/local/share/python:$PATH
	export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH

	# Set the path. Had this in .bash_login, but when i added bashrc it isn't run anymore....
	export PATH="/Users/$USER/Library/Android/android-sdk-mac_86/platform-tools:/Users/$USER/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/usr/local/mysql/bin:/Applications:$PATH"

	# Set the path for WireShark
	export PATH="/Users/$USER/bin/WireShark:$PATH"

	# Set the path for Android SDK
	export PATH="/Users/$USER/Library/Android/android-sdk-mac_86/tools:$PATH"

	bind "set completion-ignore-case On"
	set -o vi

	#Mono Settings
	export PKG_CONFIG_PATH=/Library/Frameworks/Mono.framework/Versions/Current/lib/pkgconfig
	export MONO_PATH=/Library/Frameworks/Mono.framework/Versions/Current/share/NAnt/bin

	##
	# Your previous /Users/$USER/.bash_profile file was backed up as /Users/$USER/.bash_profile.macports-saved_2010-07-22_at_16:05:11
	##

	# Homebrew
	export PATH=/usr/local/bin:$PATH


	#Perl Settings
	export VERSIONER_PERL_PREFER_32_BIT=yes
	export VERSIONER_PERL_VERSION=5.8.9

	#Python Settings
	export PYTHONSTARTUP=$HOME/.pythonrc.py
elif [ $OS == "Linux" ]; then
	echo "No Linux Settings"
fi
