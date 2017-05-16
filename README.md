# docker-mariadb-utf8g


## 初期設定をUTF-8(utf8_general_ci)に設定

### 設定理由

> * utf8_bin  
キャラクターコードが完全に一致するもののみマッチする。
> * utf8_general_ci  
アルファベットの大文字・小文字は区別せずにマッチする。
ただし、区別しない文字は、半角は半角の大文字・小文字、全角は全角の大文字・小文字のみ。
半角小文字と全角小文字同士はマッチしない。
> * utf8_unicode_ci  
下記がマッチする。
アルファベットの大文字・小文字(全半角混合)
ひらがなの大文字・小文字とカタカナの大文字・小文字 (例えば、'あ'で検索すると、'ぁ', 'ア', 'ァ'もマッチする)

### 参考

[dev.mysql.com - 10.1.14.1 Unicode 文字セット](https://dev.mysql.com/doc/refman/5.6/ja/charset-unicode-sets.html)  
[Qiita MySQLの照合順序](http://qiita.com/Vit-Symty/items/159c27d7d62c78ee9ce7)  
[utf8_unicode_ci に対する日本の開発者の見解](http://blog.kamipo.net/entry/2015/03/08/145045)

## 日本時間設定(timezone)

docker for windowsで統合サービス-時刻の同期が無効化された？ためホストOSとの時差が生じるようになった  
docker for linuxでは/etc/localtimeをvolume指定すれば良いので開発用

### 参考

[Best way to set the timezone](https://github.com/moby/moby/issues/12084)