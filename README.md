# hugo_test

整体体验下来，就是一个用 markdown 编写静态文件的一个工具而已，速度比`vitepress`相比，快了一点

## win

* 安装hugo

1. 创建一个目录存放hugo
2. 下载hugo release
3. 解压
4. 将hugo.exe 添加到环境变量
5. 尝试使用hugo

如果命令显示

```shell
C:\Users\xx>hugo version
hugo v0.101.0-466fa43c16709b4483689930a4f9ac8add5c9f66 windows/amd64 BuildDate=2022-06-16T07:09:16Z VendorInfo=gohugoio
```

则表示成功。

* 使用hugo 创建一个网站

1. 查看有什么命令用

```shell
D:\code\hugo_test\win\site>hugo help
hugo is the main command, used to build your Hugo site.

Hugo is a Fast and Flexible Static Site Generator
built with love by spf13 and friends in Go.

Complete documentation is available at https://gohugo.io/.

Usage:
  hugo [flags]
  hugo [command]

Available Commands:
  completion  Generate the autocompletion script for the specified shell
  config      Print the site configuration
  convert     Convert your content to different formats
  deploy      Deploy your site to a Cloud provider.
  env         Print Hugo version and environment info
  gen         A collection of several useful generators.
  help        Help about any command
  import      Import your site from others.
  list        Listing out various types of content
  mod         Various Hugo Modules helpers.
  new         Create new content for your site
  server      A high performance webserver
  version     Print the version number of Hugo

Flags:
  -b, --baseURL string             hostname (and path) to the root, e.g. https://spf13.com/
  -D, --buildDrafts                include content marked as draft
  -E, --buildExpired               include expired content
  -F, --buildFuture                include content with publishdate in the future
      --cacheDir string            filesystem path to cache directory. Defaults: $TMPDIR/hugo_cache/
      --cleanDestinationDir        remove files from destination not found in static directories
      --clock string               set the clock used by Hugo, e.g. --clock 2021-11-06T22:30:00.00+09:00
      --config string              config file (default is path/config.yaml|json|toml)
      --configDir string           config dir (default "config")
  -c, --contentDir string          filesystem path to content directory
      --debug                      debug output
  -d, --destination string         filesystem path to write files to
      --disableKinds strings       disable different kind of pages (home, RSS etc.)
      --enableGitInfo              add Git revision, date, author, and CODEOWNERS info to the pages
  -e, --environment string         build environment
      --forceSyncStatic            copy all files when static is changed.
      --gc                         enable to run some cleanup tasks (remove unused cache files) after the build
  -h, --help                       help for hugo
      --ignoreCache                ignores the cache directory
      --ignoreVendorPaths string   ignores any _vendor for module paths matching the given Glob pattern
  -l, --layoutDir string           filesystem path to layout directory
      --log                        enable Logging
      --logFile string             log File path (if set, logging enabled automatically)
      --minify                     minify any supported output format (HTML, XML etc.)
      --noBuildLock                don't create .hugo_build.lock file
      --noChmod                    don't sync permission mode of files
      --noTimes                    don't sync modification time of files
      --panicOnWarning             panic on first WARNING log
      --poll string                set this to a poll interval, e.g --poll 700ms, to use a poll based approach to watch for file system changes
      --printI18nWarnings          print missing translations
      --printMemoryUsage           print memory usage to screen at intervals
      --printPathWarnings          print warnings on duplicate target paths etc.
      --printUnusedTemplates       print warnings on unused templates.
      --quiet                      build in quiet mode
      --renderToMemory             render to memory (only useful for benchmark testing)
  -s, --source string              filesystem path to read files relative from
      --templateMetrics            display metrics about template executions
      --templateMetricsHints       calculate some improvement hints when combined with --templateMetrics
  -t, --theme strings              themes to use (located in /themes/THEMENAME/)
      --themesDir string           filesystem path to themes directory
      --trace file                 write trace to file (not useful in general)
  -v, --verbose                    verbose output
      --verboseLog                 verbose logging
  -w, --watch                      watch filesystem for changes and recreate as needed

Use "hugo [command] --help" for more information about a command.

```

2. 创建一个站点

看帮助命令

```shell
D:\code\hugo_test\win\site>hugo new --help
Create a new content file and automatically set the date and title.
It will guess which kind of file to create based on the path provided.

You can also specify the kind with `-k KIND`.

If archetypes are provided in your theme or site, they will be used.

Ensure you run this within the root directory of your site.

Usage:
  hugo new [path] [flags]
  hugo new [command]

Available Commands:
  site        Create a new site (skeleton)
  theme       Create a new theme


Use "hugo new [command] --help" for more information about a command.
```

创建

```shell
D:\code\hugo_test\win\site>hugo new site helloapp
Congratulations! Your new Hugo site is created in D:\code\hugo_test\win\site\helloapp.

Just a few more steps and you're ready to go:

1. Download a theme into the same-named folder.
   Choose a theme from https://themes.gohugo.io/ or
   create your own with the "hugo new theme <THEMENAME>" command.
2. Perhaps you want to add some content. You can add single files
   with "hugo new <SECTIONNAME>\<FILENAME>.<FORMAT>".
3. Start the built-in live server via "hugo server".

Visit https://gohugo.io/ for quickstart guide and full documentation.
```

3. 进入站点目录，查看结果

```shell
D:\code\hugo_test\win\site>cd ./helloapp

D:\code\hugo_test\win\site\helloapp>dir
 驱动器 D 中的卷是 NewDisk
 卷的序列号是 7C6F-F812

 D:\code\hugo_test\win\site\helloapp 的目录

2022/07/15  11:38    <DIR>          .
2022/07/15  11:38    <DIR>          ..
2022/07/15  11:38    <DIR>          archetypes
2022/07/15  11:38                82 config.toml
2022/07/15  11:38    <DIR>          content
2022/07/15  11:38    <DIR>          data
2022/07/15  11:38    <DIR>          layouts
2022/07/15  11:38    <DIR>          public
2022/07/15  11:38    <DIR>          static
2022/07/15  11:38    <DIR>          themes
               1 个文件             82 字节
               9 个目录 244,624,875,520 可用字节

```







