


rem setup vim
SET VIMDIR=%ProgramFiles(x86)%\Vim\
dir "%VIMDIR%_vimrc" | find "<SYMLINK>" && (
	del "%VIMDIR%_vimrc"
)
IF EXIST "%VIMDIR%_vimrc" ren "%VIMDIR%_vimrc" "_vimrc.bak"
mklink "%VIMDIR%_vimrc" "%~dp0_vimrc"

dir "%VIMDIR%vimfiles" | find "<SYMLINKD>" && (
	rmdir "%VIMDIR%vimfiles\autoload"
	rmdir "%VIMDIR%vimfiles\bundle"
	rmdir "%VIMDIR%vimfiles\colors"
	rmdir "%VIMDIR%vimfiles\snippets"
)
mklink /D "c:\Program Files (x86)\Vim\vimfiles\autoload" %~dp0_vim\autoload
mklink /D "c:\Program Files (x86)\Vim\vimfiles\bundle" %~dp0_vim\bundle
mklink /D "c:\Program Files (x86)\Vim\vimfiles\colors" %~dp0_vim\colors
mklink /D "c:\Program Files (x86)\Vim\vimfiles\snippets" %~dp0_vim\snippets
rem for /D %%G in ("%~dp0%_vim\*")  do echo "%VIMDIR%vimfiles\%G%" "%~dp0%_vim\%G%"
rem mklink /D "%VIMDIR%vimfiles\%G%" "%~dp0%_vim\%G%" 
