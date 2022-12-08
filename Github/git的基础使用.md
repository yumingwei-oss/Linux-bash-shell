
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
	|								       |
     工作区-------------------------   --------------------------------------本地仓库
	|			    | |					       |	
	|			    | |  				       |		
	|			    | |					       |
	|			    | |					       |
	|-------------------------暂存区---------------------------------------|
