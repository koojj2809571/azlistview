Language: [English](https://github.com/flutterchina/azlistview) | 中文简体

# azlistview

Flutter 城市列表、联系人列表，索引&悬停。基于[scrollable_positioned_list](https://pub.flutter-io.cn/packages/scrollable_positioned_list).  
AzListView, SuspensionView, IndexBar.

## Features

* 轻松创建城市列表或联系人列表界面。
* 列表项按A-Z分组。
* 带有悬停效果Header。
* 支持自定义Header。
* 支持索引联动。
* IndexBar支持自定义样式。
* IndexBar支持本地图片。
* 允许滚动到列表中的特定项目。

## 使用此 fork
```yaml
dependencies:
  azlistview:
    git:
      url: https://github.com/koojj2809571/azlistview.git
      ref: master
```
此分支支持 Dart 3 与 `scrollable_positioned_list` 0.3.8；主应用无需再覆盖该依赖。

## Screenshots

|![](https://s1.ax1x.com/2020/09/09/w3DOZq.png)|![](https://s1.ax1x.com/2020/09/09/w3rZFK.png)|![](https://s1.ax1x.com/2020/09/09/w3rKQH.png)|
|:---:|:---:|:---:|
|![](https://s1.ax1x.com/2020/09/09/w3rJFf.png)|![](https://s1.ax1x.com/2020/09/09/w3rUSg.png)|![](https://s3.ax1x.com/2020/11/20/DQJCHs.jpg)|


## Changelog

请参阅本 fork 的 [变更日志](https://github.com/koojj2809571/azlistview/blob/master/CHANGELOG.md)。
v1.1.0  
itemBuilder不要包含Header，因为它是在内部自动合并的。fix [#38](https://github.com/flutterchina/azlistview/issues/38).

## App
[Moss App](https://github.com/Sky24n/Moss)

