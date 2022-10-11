#为了适配需要打指令的需要我们将tag标签和计分版准则进行了编号化，以下是变动后的准则和标签
#dpp-01 实体数量虚拟准则
#dpp-02 掉落物数量虚拟准则
#dpp-03 下落方块数量虚拟准则
#dpp-04 扫地工清扫时间虚拟准则
#dpp-05 控制天气指数虚拟准则
#dpp-06 控制时间指数虚拟准则
#dpp-07 控制存活时间指数虚拟准则
#dpp-08 控制菜单指数触发准则
#dpp-09 控制模式指数触发准则
#dpp-10 在线时间刻单位虚拟准则
#dpp-11 在线时间秒单位虚拟准则
#dpp-12 在线时间分单位虚拟准则
#dpp-13 在线时间时单位虚拟准则
#dpp-14 违反次数虚拟准则
scoreboard objectives add dpp-01 dummy
scoreboard objectives add dpp-02 dummy
scoreboard objectives add dpp-03 dummy
scoreboard objectives add dpp-04 dummy
scoreboard objectives add dpp-05 dummy
scoreboard objectives add dpp-06 dummy
scoreboard objectives add dpp-07 dummy
scoreboard objectives add dpp-08 trigger
scoreboard objectives add dpp-09 trigger
scoreboard objectives add dpp-10 dummy
scoreboard objectives add dpp-11 dummy
scoreboard objectives add dpp-12 dummy
scoreboard objectives add dpp-13 dummy
scoreboard objectives add dpp-14 dummy
scoreboard objectives add dpp-notice dummy [{"text": " | ","color": "aqua"},{"text": "公告","color": "red"},{"text": " | ","color": "aqua"}]
scoreboard players enable @a dpp-08
scoreboard players enable @a dpp-09