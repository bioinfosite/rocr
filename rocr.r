# tesseractパッケージのインストール
install.packages("tesseract")

# パッケージの読み込み
library("tesseract")

# 日本語のトレーニングデータのダウンロード
tesseract_download(lang = "jpn")

# 画像ファイルからテキストを抽出
folder <- "C:/hogehogehogehoge" # フォルダのパスを指定
files <- list.files(path = folder, pattern = "png|jpg|jpeg", full.names = TRUE) # 画像ファイルの拡張子を指定
# 結果を格納するリストの作成
result <- list()

# for文で画像ファイルを1つずつOCR処理
for (i in 1:length(files)) {

  # OCRでテキストを抽出
    text <- ocr(image = files[i], engine = tesseract("jpn"))
  # ファイル名とテキストをリストに追加
    result[[i]] <- list(file = basename(files[i]), text = text)
}

# テキストの表示
cat(text)

# 結果の表示
result
