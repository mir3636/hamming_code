# ハミング符号を実装してみる
- ハミング符号とは、データの送受信において誤りを検知、訂正する符号である。

# ハミング符号の分解
- ハミング符号はあるデータに対しての誤りの検知訂正を行うことができる符号である
- ある4ビットのデータを送るとすると3ビットのハミング符号でこれを検知する。
  - この検知するビットをパリティビットという
  - つまり4つのデータビットと3つのパリティビット、合わせて7ビットを送信して誤りの検知を行う

- 1つ目のパリティビットは、0011, 0101, 0111, 1001, ... 番目のビットの検知を行う
  - つまりここでは 3, 5, 7 番目のビットの検知を行う
- 2つ目のパリティビットは、0011, 0110, 0111, 1010, ... 番目のビットの検知を行う
  - つまりここでは 3, 6, 7 番目のビットの検知を行う
- 3つ目のパリティビットは、0101, 0110, 0111, 1100, ... 番目のビットの検知を行う
  - つまりここでは 5, 6, 7 番目のビットの検知を行う

- つまり、n つ目のパリティビットは nビット目が1になる数番目のビットの検知を行う  
-  パリティビット自身は 2^(n-1) 番目のビットである

- { P1, P2, D1, P3, D2, D3, D4 } D=データビット、P=パリティビット

# 更新中
```sh
$ ruby hamming.rb "1001"
```

4桁のデータを入れるとパリティビットを含めたデータが返ってくる

```sh
> 0011001
```
