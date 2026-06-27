menu(type='*' where=(sel.count or wnd.is_taskbar or wnd.is_edit) title="终端" sep='top' image=icon.run_with_powershell)
{
	$tip_run_admin=["\xE1A7 按住 SHIFT 键以管理员身份运行 " + this.title, tip.warning, 1.0]
	$has_admin=key.shift() or key.rbutton()
	
	item(where=package.exists("WindowsTerminal") title="Windows 终端" tip=tip_run_admin admin=has_admin image='@package.path("WindowsTerminal")\WindowsTerminal.exe' cmd='wt.exe' arg='-d "@sel.path\."')
	item(title="命令提示符" tip=tip_run_admin admin=has_admin image cmd='cmd.exe' args='/K TITLE Command Prompt &ver& PUSHD "@sel.dir"')
	item(title="Windows PowerShell" admin=has_admin tip=tip_run_admin image cmd='powershell.exe' args='-noexit -command Set-Location -Path "@sel.dir\."')
}