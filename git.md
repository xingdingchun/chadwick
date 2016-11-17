#Github上传代码菜鸟方法
> 2016年11月17日


最近初次接触Github，需要上传自己的东西到Github上，研究了半天，终于成功的把代码长传到Github上。

如下内容主要是正对windows系统下的方法。

## 创建Github账号

[登录Github网站](https://github.com)注册账号。需要注意的地方是需要一个唯一的没有被注册的**name**和一个可用的**email**确保email能够收到确认邮件，如果你不确认是无法使用Github的。

## 新建仓库

在Github网站上如图所示创建仓库：

![创建Githup仓库](http://lazynight.me/wp-content/uploads/2013/05/newgithub.png "Github网站界面")
## 创建项目需要填写的内容

Create a new repository 创建一个新的项目
Owner 是拥有者，是您创建的账号
Repository name **项目名称**，自动以的，**必须**填写。
Description 描述选择填写
选择的内容：
Public这个是默认选择的。
Initialize this repository with a README建议勾选，也可以不勾选后面创建。

完成后直接点击**Create repository**项目就创建成功。

## 安装Github shell程序
[下载地址](ttps://desktop.github.com)
## 打开Git shell，输入一下命令生成秘钥来验证身份

不是必须的，创建仓库的时候勾选了**Initialize this repository with a README**就可以不需要这一步骤。
<pre>
$ ssh-keygen -C 'xingdingchun@email.849231609@qq.com' -t rsa
</pre>

命令执行完成会生成**.ssh**文件，把这个文件复制到Github上。

## 在Git shell下输入测试是否正确命令
<pre>
ssh -T git@github.com
</pre>

返回warning警告，属于正常，不用理会。
## clone刚刚才新建的repository到本地，命令如下

<pre>
git clone https://github.com/username/reopsitoryname
</pre>

会生成**.git**文件
## Git shell命令行下，输入如下命令

<pre>
git init
git commit -m 'repositoryname'
git remote add origin https://github.com/username/reopsitoryname
git push origin master
</pre>

如果执行git remot add origin出现错误

<pre>
git remote add origin https://github.com/username/reopsitoryname
</pre>

执行如下语句：

<pre>
git remote rm  oringin
</pre>
在执行*git remote add origin https://github.com/username/reopsitoryname*

若果执行依然报错：

则执行以下语句：

<pre>
git pull origin master
</pre>

最后既可以看到代码上传成功的返回了。