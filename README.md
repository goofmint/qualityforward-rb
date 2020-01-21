# Qualityforward

これはQualityforward APIを利用するためのRuby SDKです。

## インストール

Gemfileに追加します。

```ruby
gem 'qualityforward'
```

インストールします。

    $ bundle

またはCUIでインストールします。

    $ gem install qualityforward

## 使い方

### 初期化

```ruby
Qualityforward::Client.new 'YOUR_API_KEY'
```

### プロジェクトの取得

```ruby
p = Qualityforward::Project.get
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Qualityforward project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/goofmint/qualityforward/blob/master/CODE_OF_CONDUCT.md).
