# SwiftDIPattern
storyboardでDIやるよ！

## Injectable

依存先とmakeメソッドを持ったprotocol
storyboardを使うため
サンプルとは異なりstaticメソッドと化した

Selfを返すため具象クラスはfinalにする必要がある

## ViewController

DIされる側  
extentionで実装を分離している、割と好きな書き方

## AppDelegate

DIする側  
project設定でMainInterfaceを空にしないと  
デフォルトではViewControllerが生成されるため  
実行時にエラーが出るので注意

## その他

`associatedtype Dependency`が使いやすい気がした 
APIClient

javaのgenericだとHoge::classみたいになるのか？　　
DI_Mock_TestsはDIできているかのTestをしている？  
テストファイル内でViewControllerを作っているからそういうことなのだろう  
ViewControllerをTestするわけではないみたい