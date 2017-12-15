# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'
# 別レイアウトを一括指定
page '/contents/*', layout: 'contents_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

activate :livereload

# Build-specific configuration
configure :build do
  activate :minify_html
  activate :minify_css
  activate :minify_javascript

  # リポジトリ名を host に設定しておく
  # こうすることで stylesheet_link_tag などで展開されるパスが
  # /test-middleman/stylesheets/normalize.css
  # のようになる
  # activate :asset_host, :host => "/your_repository_name"
  # これは必要か不明
  # set :relative_links, true
end


# デプロイの設定
# 今回は gh-pages を使用するので branch に 'gh-pages' を設定する
# activate :deploy do |deploy|
#   deploy.build_before = true
#   deploy.deploy_method = :git
#   deploy.branch = 'gh-pages'
# end
