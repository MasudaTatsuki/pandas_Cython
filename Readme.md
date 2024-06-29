### 1. docker-compose.ymlが存在するディレクトリ直下で以下コマンドを実行
    $ docker-compose up -d
### 2. 以下コマンドでコンテナに入る
    $ docker-comose exec app bash
<br>
    ※又はdockerDesktopのコンテナのExecタブに移動

### 3. 以下コマンドでjupyter notebookを起動
    jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root --NotebookApp.token=''
<br>
<br>
・Dockerfileにモジュールなどを追加した場合はコンテナを削除後以下コマンドを実行

    docker-compose up --build
<br>
・Pythonコマンドを実行する場合、pip installする場合3を付けるようにする

    python3 hoge.py
    pip3 install hoge
