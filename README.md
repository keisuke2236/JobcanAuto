# jobcanの完全自動打刻

## clockwork
定期実行してくれるやつ

auto_jobcan.rbの中身は各員設定すること。

```
gem install clockwork
clockwork auto_jobcan.rb
```


バックグラウンド実行

```
nohup clockwork clockauto_jobcan.rb
```
