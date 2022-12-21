# my_twitter_ui
これはTwitterのUIを模したFlutterアプリです。

# 以下、開発時のメモ・参考サイト
## エラー対応・機能の実装方法時めも
### CircleAvatarでassets imageを使用する
```
  CircleAvatar(
      child: Image.asset('assets/horse.png'),
   );
```

or

```
CircleAvatar(
  backgroundImage: AssetImage('assets/horse.png'),
);
```
[StackOverflow](https://stackoverflow.com/questions/54298886/how-to-give-a-circleavatar-an-image-from-assets)

## 便利サイト
[Iconの一覧](https://api.flutter.dev/flutter/material/Icons-class.html)