namespace :create_matches do
  desc 'とりあえず文字列'

  task create: :environment do
    CreateMatchesService.call
  end

  task test: :environment do
    p 'call me now!!!'
  end
end
