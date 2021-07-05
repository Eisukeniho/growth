# growth

## 背景
プログラミング技術を向上させるためには，たくさんのプログラムを作成することが必要不可欠である．実際に大学のプログラミング演習の授業では，毎週プログラミング課題が出されている．学生はそれらの課題をこなすことでプログラミング技術を向上させることができる．ほとんどの学生がそれらの課題をこなす一方で，他人の作成したプログラムをコピペし，そのまま提出する学生も少なからず存在する．しかし，課題点を得るためだけならばコピペは有用なものであるが，コピペをすることでその学生のプログラミング技術は少しも向上しない．したがって，学生にとって他人のプログラムをコピペし提出することは有意義ではない．また，他の学生に自身が作成したプログラムをコピペさせる行為も，学生のプログラミング技術の向上を妨げる行為であるため，同様に有意義ではない．本研究では，そのような行為を発見するために，他人のプログラムの盗用の発見と，コピペ先とコピペ元の特定を目的としている．

## 概要
まず，全学生の成長曲線を作成する．そして，全学生の成長曲線から基準となる一つの成長曲線を作成する．
次に，演習課題の採点を行い，複数(2人以上)の学生が作成したプログラムが類似している場合，コピー元とコピー先を特定する．
最後に，コピー元とコピー先を特定するために，類似したプログラムの作成者のそれぞれの成長曲線と，基準の成長曲線を比較する．

## 準備
以下をインストール
1. java(ver.11.0.11)をインストール
2. maven(ver.3.8.1)をインストール
3. groovy(ver.3.0.8)をインストール
4. pochiをインストール
    > $ brew tap tamada/brew
  
    > $ brew install pochi
  
5. pochiをコンパイル
    > $ git clone https://github.com/tamada/pochi.git

    > $ cd pochi

    > $ mvn package
    
## 手順
1. pochiを使用して，全ての演習課題に対して教科書のプログラムと学生が作成したプログラムの類似度を求める
    > $　pochi extracting_birthmarks.groovy similarity1.jar
 
    > $　pochi comparing_birthmarks.groovy similarity1.jar
2. 求めた全ての演習課題での類似度から，その学生の成長曲線を作成

    ![スクリーンショット 2021-07-05 13 41 14](https://user-images.githubusercontent.com/72781211/124483080-ea698d00-dde4-11eb-99f1-ce6c49d89621.png)

3. 全学生の成長曲線から，基準となる成長曲線を求める
4. 複数の学生に対してプログラムの盗用の疑いがある場合，それぞれの学生の成長曲線と基準の成長曲線から，コピー元とコピー先を推測する
