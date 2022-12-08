
一、git安装

	linux ubuntu:  sudo apt install git

二、git基础配置

	git config --global user.name [username]

	git config --global user.email [email]

三、git基础操作

	3.1基础概念：workspace 工作区、staging area 暂存区、local repository 本地仓库、remote repository远程仓库
	workspace-工作区：本地文件目录

	staging area-暂存区：.git目录下的stage文件夹

	local repository本地仓库：.git目录下的版本库

	remote repository远程仓库：github服务器上的版本库

	关系图：
	  git pull 远程仓库名(下载)	   git fetch/clone(克隆远程仓库)	
	--------------------------远程仓库--------------------------------------
	|				   git push [远程仓库名] [主分支]上传  |
	|								       |
	|								       |
	V				git checkout 			       |
     工作区<----------------------------------------------------------------本地仓库
	|			     					       |	
	|			      					       |		
	|			     					       |
	|git add [filename]	     	git commit -m mask[提交本地库]	       |
	|------------------------>暂存区---------------------------------------|

	3.2基础操作:git add,git commit,git checkout,git pull,git push,git clone

		创建仓库命令
		
			git init  在当前目录创建Git仓库

			git clone [url]  拷贝一个Git仓库到本地目录

		提交与修改

			git add [file1][dir] 添加指定文件/目录到暂存区

			git status 用于查看上次提交后是否有对文件进行再次修改

			git commit -m [message] 提交暂存区到本地仓库 -m后面跟着提示信息
				   -a 在设置参数后修改文件不需要再执行git add命令

			git reset --hard [HEAD] 回退版本到某次提交的版本
						参数撤销工作区中未提交的修改内容，将暂存与工作区都回到上次版本，并删除之前的所有信息的提交

		远程操作

			git remote add [shortname] [url] 添加远程仓库 shortname是远程仓库的别名 url是远程仓库的链接
			git remote rm [shortname] 删除远程仓库
			git remote rename [old_name] [new_name] 修改仓库名

			git pull 命令用于远程获取代码并合并本地版本
			git pull [shortname] [target_brand]:[local_brand]  将目的远程仓库中的目标分支合并到本地分支
			例：
				git pull origin master:brantest   将origin远程仓库中master合并到本地brantest分支

				git pull origin master  如果远程分支是与当前分支合并，则可以省略冒号

			git push [shortname] [target_brand]:[local_brand]
