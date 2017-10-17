require "minitest/autorun"
require "minitest/rg"

require_relative "../models/album"

class TestAlbum < MiniTest::Test

    def setup()
        album1 =@album1 = Album.new({"name" => "Thriller", "quantity" => 40, "genre" => "Pop", "buy_price" => 5, "sell_price" => 10, "sold" => 100})
    end

    def test_stock_level()
        assert_equal("High", @album1.stock_level())
    end

    def test_total_buying_price()
        assert_equal(200, @album1.total_buying_price())
    end

    def test_total_sell_amount()
        assert_equal(1000, @album1.total_sell_amount())
    end

    def test_margin()
        assert_equal(800, @album1.margin())
    end
end
