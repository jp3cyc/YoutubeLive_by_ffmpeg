# YoutubeLive_by_ffmpeg
Youtube live streaming from raspi-camera and uvc cam (webcam) by ffmpeg, raspi 3B+


# 用意するもの
- raspi 3B+（raspi zeroとかでも可、遅延発生する可能性あり）
- raspi-camera（Spi cameraなどでも可，ただし要変換アダプタ）
- Webcamera （Buffalo BSW200MBK https://amzn.to/2TCiuL0　で動作検証済み）

- インターネット回線（固定回線，LTE回線など（安定配信のためには5Mbps程度の速度はほしい））
- Raspi の電源（バッテリ，商用電源など）

# 使い方
## 初期設定
gitからCloneする
'''
git clone https://github.com/jp3cyc/YoutubeLive_by_ffmpeg.git
cd YoutubeLive_by_ffmpeg
'''
.shファイルに実行権限を追加
'''
chmod +x picam-youtubelive.sh webcam-youtuelive.sh
'''

## 配信
Raspberry Piのターミナル上で次のコマンドを実行

ラズパイカメラからの配信
'''
./picam-youtubestream.sh
'''
ウェブカメラ配信の実行
'''
./webcam-youtubestream.sh
'''

同時実行するときは別端末から実行すると便利
SSHが途切れると配信は停止するため，悪環境下ではtmuxを利用するとよい
