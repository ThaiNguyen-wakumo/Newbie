# TestCase

First, a simple class:

```
class Blog
  def title
    "Wakumo Company"
  end
end
```

## minitest

```
require 'minitest/autorun'
require './blog'

class TestBlog < Minitest::Test

  def setup
    @blog = Blog.new
  end

  def test_title_is_wakumo
    assert_equal "Wakumo Company", @blog.title
  end
end
```

## rspec

```
require 'rspec/autorun'
require './blog'

describe Blog do
  before do
    @blog = Blog.new
  end

  describe "#title" do
    it "returns the title of the blog" do
      @blog.title.must_equal "Wakumo Company"
    end
  end
end
```

