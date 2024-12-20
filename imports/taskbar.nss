﻿// $title.task_manager='任务管理器'
// $title.taskbar_Settings='任务栏设置'
// $title.exit_explorer='重启资源管理器'

menu(type="taskbar" pos=0 title=app.name image=\uE249)
{
	item(title="config" image=\uE10A cmd='"@app.cfg"')
	item(title="manager" image=\uE0F3 admin cmd='"@app.exe"')
	item(title="directory" image=\uE0E8 cmd='"@app.dir"')
	item(title="version\t"+@app.ver vis=label col=1)
	item(title="docs" image=\uE1C4 cmd='https://nilesoft.org/docs')
	item(title="donate" image=\uE1A7 cmd='https://nilesoft.org/donate')
}
menu(where=@(this.count == 0) type='taskbar' image=icon.settings expanded=true)
{
	menu(title="Apps" image=\uE254)
	{
		item(title='画布' image=\uE116 cmd='mspaint')
		item(title='Edge' image cmd='@sys.prog32\Microsoft\Edge\Application\msedge.exe')
		item(title='计算器' image=\ue1e7 cmd='calc.exe')
		item(title=str.res('regedit.exe,-16') image cmd='regedit.exe')
	}
	// menu(title=title.windows image=\uE1FB)
	// {
	// 	item(title=title.cascade_windows cmd=command.cascade_windows)
	// 	item(title=title.Show_windows_stacked cmd=command.Show_windows_stacked)
	// 	item(title=title.Show_windows_side_by_side cmd=command.Show_windows_side_by_side)
	// 	sep
	// 	item(title=title.minimize_all_windows cmd=command.minimize_all_windows)
	// 	item(title=title.restore_all_windows cmd=command.restore_all_windows)
	// }
	item(title=title.desktop image=icon.desktop cmd=command.toggle_desktop)
	item(title=title.settings image=icon.settings(auto, image.color1) cmd='ms-settings:')
	// item(title=title.task_manager sep=both image=icon.task_manager cmd='taskmgr.exe')
	// item(title=title.taskbar_Settings sep=both image=inherit cmd='ms-settings:taskbar')
	item(title='任务管理器' sep=both image=icon.task_manager cmd='taskmgr.exe')
	item(title='任务栏设置' sep=both image=inherit cmd='ms-settings:taskbar')
	// item(vis=key.shift() title=title.exit_explorer cmd=command.restart_explorer)
	item(title='重启资源管理器' cmd=command.restart_explorer)
}
