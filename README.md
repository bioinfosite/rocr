# クラスタリング

## 環境構築

- python: 3.10

## git clone

git clone する。できなければ、リポジトリからダウンロードする

```bash
git clone https://github.com/bioinfosite/rocr.git
```

## 仮想環境を作成する

```bash
python -m venv .venv
```

## ライブラリインストール

```bash
pip install -r requirements.txt
```

## 実行
cluster.ipynbを実行する.  
jupyterカーネルが入っていない場合は入れる.  
numpy関連でエラー出る場合は、ダウングレードする

```bash
pip install numpy==1.23.4
```
