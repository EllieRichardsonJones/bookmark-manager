require 'pg'

class Bookmark
  def initialize(bookmarks)
    @bookmarks = bookmarks
  end

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
    # bookmarks = [
    #   "http://makers.tech",
    #   "http://www.destroyallsoftware.com",
    #   "http://www.google.com"
    # ]
  end
end
