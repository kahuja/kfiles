


rem setup vim
SET VIMDIR=%ProgramFiles(x86)%\Vim\
dir "%VIMDIR%_vimrc" | find "<SYMLINK>" && (
	del "%VIMDIR%_vimrc"
)
IF EXIST "%VIMDIR%_vimrc" ren "%VIMDIR%_vimrc" "_vimrc.bak"
mklink "%VIMDIR%_vimrc" "%~dp0_vimrc"

mklink /D "c:\Program Files (x86)\Vim\vimfiles\autoload" c:\Users\kanwal\dev\kfiles\_vim\autoload
mklink /D "c:\Program Files (x86)\Vim\vimfiles\bundle" c:\Users\kanwal\dev\kfiles\_vim\bundle
mklink /D "c:\Program Files (x86)\Vim\vimfiles\colors" c:\Users\kanwal\dev\kfiles\_vim\colors
mklink /D "c:\Program Files (x86)\Vim\vimfiles\snippets" c:\Users\kanwal\dev\kfiles\_vim\snippets
rem for /D %%G in ("%~dp0%_vim\*")  do echo "%VIMDIR%vimfiles\%G%" "%~dp0%_vim\%G%"
rem mklink /D "%VIMDIR%vimfiles\%G%" "%~dp0%_vim\%G%" 
