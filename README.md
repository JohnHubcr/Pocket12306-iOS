Pocket12306-iOS
===============

iOS下的掌上12306订票软件

TODO:
* 考虑在右侧增加一个导航条，分离出登录、购票、订单操作
* 主界面的车站自动完成功能
* 主界面上选择车种（高铁，动车，普速车）；后期可能添加一个时段选择器，提升操作流畅度
* 检测到有未完成订单后，给用户提示，或者直接跳转到订单详情页，引导用户支付或取消
* 购票后排队功能的实现
* 长时间后台返回后判断session有效性，并提供Relink的功能
* 后期看看能不能绕过验证码
* __完善staion_name.js的缓存__
* __使用HTTPS安全链接__
* __增加一次性购买多张车票的功能__
* __已完成订单的退票功能__
* __车票改签__

Update 13-08-31:
* 在前往支付页前提供更详细的指导，提供剩余时间的显示
* 订单聚合页面显示各个订单编号，方便用户查看

Update 13-08-26:
* 购票时可选择“站名精确匹配”模式，过滤掉同城非目标车站的车次
* 日期选择器更换为日历样式
* 增加从12306拉取用户信息的功能，节省了输入购票人信息的时间，也降低了输入错误概率

Update 13-08-10:
* 增加显示经停站信息
* 增加自动保存用户帐号密码功能，方便登录

Update 13-08-04:
* 完善了对iOS 5.0以上系统的支持
* 增加了未完成订单的取消功能

Update 13-08-01:
* 对错误的身份证号码进行提示

Update 13-07-29:
* 增加了查看30天内各种订单的功能，以订票日期作为检索依据

Update 13-07-28:
* 增加了查看未完成订单的功能
* 现在可以对未完成订单进行支付了
* 细化了查询车次的出错反馈
* 车站数据的本地进行了缓存，减少每次启动消耗的流量

Update 13-07-27:
* 完成了主界面上购票日期的选择，现在可以购买合法时间内的车票了
* 调整了列车信息界面上的UI，颜色更为清爽
* 列车列表中的余票信息进行了展现，并且有横竖屏两种适配模式，查看起来更为方便
* 平滑了键盘弹出和关闭时的动画

拷贝到本地
---------

使用以下命令克隆工程到本地，并初始化依赖的子模块

```bash
$ git clone git@github.com:zwzmzd/Pocket12306-iOS.git
$ cd Pocket12306-iOS/
$ git submodule update --init --recursive
```

子模块修复
---------

有时工程会更改子模块地址，导致不能正常拉取，使用以下命令修复

```bash
$ cd Pocket12306-iOS/
$ git submodule sync
$ git submodule update
```
