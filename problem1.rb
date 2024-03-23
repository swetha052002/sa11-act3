def extract_urls(text)
  # Improved regular expression to match URLs and exclude trailing punctuation such as periods
  url_regex = /(?:http|https|ftp):\/\/[a-zA-Z0-9\-_]+(?:\.[a-zA-Z0-9\-_]+)+(?:\/[^\s\.\,]*)?/

  # Scan for URLs in the text
  urls = text.scan(url_regex)

  # Print each URL found
  urls.each do |url|
    puts url
  end
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."
extract_urls(sample_text)
