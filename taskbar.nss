menu(type="taskbar" vis=key.shift() or key.lbutton() pos=0 title=app.name image=\uE249)
{
	item(title="配置" image=\uE10A cmd='"@app.cfg"')
	item(title="管理器" image=\uE0F3 admin cmd='"@app.exe"')
	item(title="目录" image=\uE0E8 cmd='"@app.dir"')
	item(title="版本\t"+@app.ver vis=label col=1)
	item(title="文档" image=\uE1C4 cmd='https://nilesoft.org/docs')
	item(title="赞助" image=\uE1A7 cmd='https://nilesoft.org/donate')
}
menu(where=@(this.count == 0) type='taskbar' image=icon.settings expanded=true)
{
	menu(title="应用" image=\uE254 vis=0)
	{
		item(title='画图' image=\uE116 cmd='mspaint')
		item(title='Edge' image cmd='@sys.prog32\Microsoft\Edge\Application\msedge.exe')
		item(title='计算器' image=\ue1e7 cmd='calc.exe')
		item(title=str.res('regedit.exe,-16') image cmd='regedit.exe')
	}
	menu(title="窗口" image=\uE1FB vis=0)
	{
		item(title="层叠窗口" cmd=command.cascade_windows)
		item(title="堆叠显示窗口" cmd=command.Show_windows_stacked)
		item(title="并排显示窗口" cmd=command.Show_windows_side_by_side)
		sep
		item(title="全部最小化" cmd=command.minimize_all_windows)
		item(title="全部还原" cmd=command.restore_all_windows)
	}
	item(title="显示桌面" image=icon.desktop cmd=command.toggle_desktop)
	item(title="设置" image=icon.settings(auto, image.color1) cmd='ms-settings:')
	item(title="任务管理器"  sep=both image=icon.task_manager cmd='taskmgr.exe')
	item(title="任务栏设置" sep=both image=inherit cmd='ms-settings:taskbar')
	item(vis=key.shift() title="退出资源管理器" cmd=command.restart_explorer)
}