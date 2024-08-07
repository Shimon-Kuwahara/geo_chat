require File.expand_path(File.dirname(__FILE__) + '/environment') # Rails.root(Railsメソッド)を使用するために必要
rails_env = ENV['RAILS_ENV'] || :development # cronを実行する環境変数(:development, :product, :test)
set :environment, :production, rails_env # cronを実行する環境変数をセット
ENV.each { |k, v| env(k, v) }
set :output, "#{Rails.root}/log/development.log" # cronのログ出力用ファイル

every 1.hours do
  rake 'create_matches:test'
end
