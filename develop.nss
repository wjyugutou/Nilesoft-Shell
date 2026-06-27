menu(mode="multiple" title='开发' vis=key.shift() sep=sep.bottom image=\uE26E)
{
	menu(mode="single" title='编辑器' image=\uE17A)
	{
		item(title='Visual Studio Code' image=[\uE272, #22A7F2] cmd='code' args='"@sel.path"')
		separator
		item(type='file' mode="single" title='记事本' image cmd='@sys.bin\notepad.exe' args='"@sel.path"')
	}

	menu(mode="multiple" title='.NET' image=\uE143)
	{
		item(title='运行' cmd-line='/K dotnet run' image=\uE149)
		item(title='监视' cmd-line='/K dotnet watch')
		item(title='清理' image=\uE0CE cmd-line='/K dotnet clean')
		separator
		item(title='调试生成' cmd-line='/K dotnet build')
		item(title='发布生成' cmd-line='/K dotnet build -c release /p:DebugType=None')

		menu(mode="multiple" sep="both" title='发布' image=\ue11f)
		{
			$publish='dotnet publish -r win-x64 -c release --output publish /*/p:CopyOutputSymbolsToPublishDirectory=false*/'
			item(title='发布单个文件' sep="after" cmd-line='/K @publish --no-self-contained /p:PublishSingleFile=true')
			item(title='框架依赖部署' cmd-line='/K @publish')
			item(title='框架依赖可执行文件' cmd-line='/K @publish --self-contained false')
			item(title='独立部署' cmd-line='/K @publish --self-contained true')
			item(title='单个文件' cmd-line='/K @publish /p:PublishSingleFile=true /p:PublishTrimmed=false')
			item(title='裁剪单个文件' cmd-line='/K @publish /p:PublishSingleFile=true /p:PublishTrimmed=true')
		}
		
		item(title='ef migrations add InitialCreate' cmd-line='/K dotnet ef migrations add InitialCreate')
		item(title='ef database update' cmd-line='/K dotnet ef database update')
		separator
		item(title='帮助' image=\uE136 cmd-line='/k dotnet -h')
		item(title='版本' cmd-line='/k dotnet --info')
	}
}
