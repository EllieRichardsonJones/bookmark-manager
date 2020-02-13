require 'pg'

class Bookmark
  def initialize(bookmarks)
    @bookmarks = bookmarks
  end

  def self.all
    # connection = PG.connect(dbname: 'bookmark_manager')
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec('SELECT * FROM bookmarks;')
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(url)
    # connection = PG.connect(dbname: 'bookmark_manager')
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks(url) VALUES ('#{url}')")
  end
end
