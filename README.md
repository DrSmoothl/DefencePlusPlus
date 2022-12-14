# Defence++ - 更好的网易防熊系统

![avatar](https://s1.328888.xyz/2022/10/11/gWDaI.png)

#### 前言：

有一天，当你兴高采烈的打开了网易的创造联机服，想要大干一场，建个好建筑时，一个熊孩子来到了这个服务器。。。  
是的！本数据包就是为了避免以上熊孩子炸图的行为而出现的，我本身也是个网易创造服的腐竹，在被熊孩子祸害的那些天里，我明白了一个道理:只有封禁掉他们熊服的一切可能，才能让他们消停。。。  

## 特别致谢:

#### Easy_Peace(Island_Peace):

> 优化了整个数据包的判定结构，大大缩减了tick函数的内容，让那些电脑不那么好的童鞋也可以流畅运行本数据包。  

#### 友谊少年sss:

> 提供了基本的数据包框架和判定逻辑(虽然后面被推翻了awa)，让我们前期的编写省了一大部分力。  

#### mo清夏空寂mo:

> 找到了许多意想不到的bug，特有的bug体质，同时也提供了生物蛋封禁的想法。  

#### 杀神Dieam（guaguajun），Ichdich，Meme_Man，Kegan等群友们:

> 不辞辛苦(工具人)的一直在帮我们测试数据包。  



## 提出问题

当你在使用本项目时遇到了问题，可以提issue，但要遵循下面的规定

<details>

<summary>为节省版面作折叠处理，请展开查看</summary>

+ **不要提与本项目无关的issue**

+ **不要提关于熊孩子讨论的issue**
  
  + 想骂熊孩子可以去别的地方骂，别来我这里.
  
+ **不要发随意指导别人的issue**
  
  + 例如：“教你怎样安装...”等.
  
  + 牢记下面两句话：你寄吧谁啊。我寄吧谁啊.

+ **尽量不要提重复的issue**
  + 善用github的搜索功能，或许你遇到的问题别人已经提出过并已经有了解决方案。

</details>



## 注意事项

+ 建议安装`VS Code`或`notepad3`等程序来查看本函数文件(后缀名为.mcfunction)！！！！  

## 安装方法：

**<mark>注意！本数据包只能在网易存档加载！！国际版存档导入会有巨大bug！！！</mark>**

1. 首先进入房间，等待加载成功，版本1.18.1

2. 将数据包安装在  

```bash
C:\MCLDownload\Game\.minecraft\saves\Langame-(您的存档文件夹一般是save文件夹的第一个文件夹)\datapacks\  
```

> 如果不是，请查看文件的修改日期，离你创建房间最近的文件夹就是你自己房间的文件夹  

3. 打开datapacks中的[DPP]Defence++ 2.0.0文件夹内，再进入data文件夹中里面有几样需要修改:  

> 第一，进入data\dpp\functions\other\function.mcfunction，根据提示将其中的Fantasist改成自己在游戏的玩家名,其中有几个数值可以进行修改，若要修改请按照提示将下方的所有相同数值修改成指定数值  

> 第二，进入data\dpp\functions\other\notice.mcfunction，将第9行改为自己的群聊的群号

5. 修改完毕后在每个要求修改的文件里ctrl+s或点击保存

6. 最后在游戏里输入/reload加载数据包  

## 数据包构成:

- 本数据包由四部分构成:  
  
  + **主防熊**(防护TNT,末影水晶，重生锚，TNT矿车等大范围破坏性物品的防熊)
  
  + **生物蛋防熊**(防止各种生物蛋，防止苦力怕炸服，巨型史莱姆卡服等)
  
  + **红石防熊**(防止红石高频卡服，EMP卡服，盔甲架卡服等)
  
  + **其他功能**(添加了物品式游戏菜单，过多实体清除，过多经验球清除，过多掉落物清除，定时清理掉落物等)  

## 数据包原理:

+ 本数据包采用nbt判定+tag识别+function惩罚机制  
  采用白名单tag反选，房主也不用担心自己会被封禁

### Todo List

- [ ] 数据包音效以及actionbar显示

- [ ] 数据包粒子效果

- [ ] 数据包惩罚模块


