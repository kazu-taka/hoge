野口　倫

・Authorの画像などをテンプレートから自分の好きなものに変更
・その他日本語の調整


gem　deviseを入れたらエラーが出てしまい、その対応で途中で終わってしまいました。

Gemfileに入れたあとbundle installし、rails g devise:installを実行しました。
その後rails g devise Author　→　rake db:migrateを行ったのですがサーバーエラーが出たため
rake db:rollback で戻し、今度はrails g devise User　→　rake db:migrateを行ったのですが
再度サーバーエラーが出てしまいました。

routes.rbnに出来たevise_for :Author　を消し、migrateも消したのですが変わらなかったです。


その先の作業で、できるところまで作業はさせて頂きました。