module BooksHelper

	#与えられたユーザーのGravatarを返す
	def book_gravatar_for(book, options = { size: 50 })
		gravatar_id_book = Digest::MD5::hexdigest(book.number)
		size = options[:size]
		gravatar_url_book = "https://secure.gravatar.com/avatar/#{gravatar_id_book}?s=#{size}"
		image_tag(gravatar_url_book, alt: book.name, class: "gravatar")
	end
end
