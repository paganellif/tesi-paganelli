public interface BookmarkQueries : Transacter {

  public fun <T : Any> selectByIsbn(isbn: String, mapper: (
    id: Long, created_date: Long?, isbn: String, publication_id: String,
    resource_index: Long, resource_href: String, resource_type: String,
    resource_title: String, location: String, locator_text: String
  ) -> T): Query<T>

  public fun selectByIsbn(isbn: String): Query<Bookmark>
}