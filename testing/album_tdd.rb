require "minitest/autorun"
require "minitest/rg"

require_relative "../models/album"

class TestAlbum < MiniTest::Test

    def setup()
        @album1 = Album.new({"name" => "Thriller", "quantity" => 40, "genre" => "Pop", "buy_price" => 5, "sell_price" => 10, "sold" => 10})
    end

    def test_stock_level()
        assert_equal("High", @album1.stock_level())
    end

    def test_margin()
        assert_equal(95, @album1.margin())
    end

end
