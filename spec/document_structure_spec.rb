
  context 'within <head>' do
    it 'contains a <meta> tag for the character set' do
      head = parsed_html.search('html > head')
      meta = head.children.select {|ch|
        ch.name == "meta" &&
        ch.attributes["charset"]
      }.first
      expect(meta).to_not be_nil, "No <meta> tag with a 'charset' attribute found"
      expect(meta.attributes["charset"].value).to eq("UTF-8"), "The 'charset' attribute does not equal 'UTF-8'"
    end

    it 'contains a <meta> tag for the description' do
      head = parsed_html.search('html > head')
      meta = head.children.select {|ch|
        ch.name == "meta" &&
        ch.attributes["name"] &&
        ch.attributes["name"].value == "description"
      }.first
      expect(meta).to_not be_nil, "No <meta> tag with a 'name' attribute set to 'description' was found"
      expect(meta.attributes["content"]).to_not be_nil, "No 'content' attribute found for the description meta tag"
      expect(meta.attributes["content"].value).to_not eq(""), "The content attribute needs a text value"
    end

    it 'contains a <meta> tag for keywords' do
      head = parsed_html.search('html > head')
      meta = head.children.select {|ch|
        ch.name == "meta" &&
        ch.attributes["name"] &&
        ch.attributes["name"].value == "keywords"
      }.first
      expect(meta).to_not be_nil, "No <meta> tag with a 'name' attribute set to 'keywords' was found"
      expect(meta.attributes["content"]).to_not be_nil, "No 'content' attribute found for the keywords meta tag"
      expect(meta.attributes["content"].value).to_not eq(""), "The content attribute needs a text value"
    end

    it 'contains a <meta> tag for the author' do
      head = parsed_html.search('html > head')
      meta = head.children.select {|ch|
        ch.name == "meta" &&
        ch.attributes["name"] &&
        ch.attributes["name"].value == "author"
      }.first
      expect(meta).to_not be_nil, "No <meta> tag with a 'name' attribute set to 'author' was found"
      expect(meta.attributes["content"]).to_not be_nil, "No 'content' attribute found for the author meta tag"
      expect(meta.attributes["content"].value).to_not eq(""), "The content attribute needs a text value"
    end

    it 'contains a <meta> tag for the viewport' do
      head = parsed_html.search('html > head')
      meta = head.children.select {|ch|
        ch.name == "meta" &&
        ch.attributes["name"] &&
        ch.attributes["name"].value == "viewport"
      }.first
      expect(meta).to_not be_nil, "No <meta> tag with a 'name' attribute set to 'viewport' was found"
      expect(meta.attributes["content"]).to_not be_nil, "No 'content' attribute found for the viewport meta tag"
      expect(meta.attributes["content"].value).to eq("width=device-width, initial-scale=1.0"), "The content attribute for the viewport meta tag should equal 'width=device-width, initial-scale=1.0'"
    end

    it 'contains a <link> tag to an external stylesheet' do
      link = parsed_html.search('html > head > link').first
      expect(link).to_not be_nil, "No <link> tag found in the <head>"
end

