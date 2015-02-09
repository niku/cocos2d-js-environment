# これは何？

[cocos2d-js](http://www.cocos2d-x.org/wiki/Cocos2d-JS) を使ったゲームが簡単に遊べるようになる環境です．

# 動作環境

OSX で確認しました．
たぶん Windows でも Linux でも動くんじゃないかなあ．

ダブルクリックで使えるコマンドについては，まだ OSX 版しか用意していません．

# 必要なもの

- [VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/)

# 使い方

## OSX

### ダウンロード&解凍

まず必要なものをインストールしましょう．
どちらもコマンドを使わない，普通のアプリと同じようにインストールできます．

次に [releases](https://github.com/niku/cocos2d-js-environment/releases) から最新の zip ファイルをダウンロードしましょう．

ダウンロードしたファイルを解凍しましょう．普通は Downloads に入っているはずです．

### ゲームの名前をつける

ゲームの名前をつけましょう，解凍したディレクトリの中に `game_name.txt` というものがあり，そこにゲームの名前を書いておきます．
空白や記号，日本語名は避けた方がいいです．(試していないからどうなるか知らない)
何も思いつかなければ，そのまま `MyGame` でも動きます．

### ゲームの雛形を作る

`create_game.command` をダブルクリックすると，`game_name.txt` に書いたゲーム名でゲームの雛形ができます．

最初の一回だけは，このアプリケーション全体のセットアップをするために結構時間がかかります．
そのため，最初の一回だけは通信速度が速いところで行いましょう．

ゲームの雛形は，解凍したディレクトリと同じところに `cocos-2d-js-games` というディレクトリが作られて，その中に用意されています．
例えば `MyGame` の場合だと `cocos-2d-js-games/MyGame` です．

### ゲームを起動する

`run_game.command` をダブルクリックすると， `game_name.txt` に書いたゲーム名のゲームが起動します．
`http://0.0.0.0:8000/` という内容が表示されたら，起動に成功しています．

http://localhost:3939/ へとアクセスしてみましょう．cocos-2d-js のデモが表示されれば成功です．
あとは，起動したままゲームの内容を書き変えて，ブラウザをリロードすれば，ゲームの内容も書き変わっているはずです．
もし書き変わっていなければ，ブラウザキャッシュのクリアを試しましょう．(詳しい人に聞いてください)

起動したゲームを終わらせたいときは，起動したターミナルにフォーカスを合わせて *一度だけ* `Ctrl` キーを押しながら `C` キーを押します．
しばらくすると `[プロセスが完了しました]` というメッセージが出て，http://localhost:3939/ にアクセスしても繋らなくなるはずです．

もし誤って `Ctrl` キーと `C` キーを 2 回押してしまうなどして，http://localhost:3939/ にアクセスしてもゲームができる状態が続いていた場合でも心配ありません．
そのときは `stop_server.command` をダブルクリックしましょう．すると，しばらくすると http://localhost:3939/ にアクセスできなくなるはずです．

### ゲームを共有する

`run_game.command` をダブルクリックして，http://localhost:3939/ へアクセスできる状態で，
`share_game.command` をダブルクリックすると

`URL: http://steaming-muskrat-4561.vagrantshare.com`

のような URL がターミナルに表示されるはずです．
その URL へアクセスすると，インターネット越しにゲームを共有できます．

開発をPCで，動作確認をスマートフォンで行う場合などにも便利でしょう．

共有を止めたいときは，起動したターミナルにフォーカスを合わせて *一度だけ* `Ctrl` キーを押しながら `C` キーを押します．
もし複数回押してしまっても，ゲームを止めると共有も止まるので心配ありません．

共有は一定時間で切れるようになっているそうなので，もし切れたら再度実行しましょう．

### ゲームを消す

ゲームを消したくなったら，ゲームの雛形を作った場所のファイルを消すだけでよいです．
例えば `MyGame` の場合だと `cocos-2d-js-games/MyGame` を消すだけでよいです．
