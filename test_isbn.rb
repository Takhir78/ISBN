require "minitest/autorun"
require_relative "isbn.rb"
 
 class TestIsbnCheck < Minitest::Test
 
 	def test_1_output_raw_number_source_with_hyphens_isbn10
 		isbn = "0-321-14653-0"
 		results = output_raw_number(isbn)
 		assert_equal("0321146530", results)
 	end
 
 	def test_2_output_raw_number_source_with_spaces_isbn10
 		isbn = "877 1 95 869x"
 		results = output_raw_number(isbn)
 		assert_equal("877195869x", results)
 	end
 
 	def test_3_no_change_in_ouput_if_raw_isbn_number_isbn10
 		isbn = "0471958697"
 		results = output_raw_number(isbn)
 		assert_equal("0471958697", results)
 	end
 
 	def test_4_output_raw_number_source_with_hyphens_isbn13
 		isbn = "978-0-13-149505-0"
 		results = output_raw_number(isbn)
 		assert_equal("9780131495050", results)
 	end
 
 	def test_5_output_raw_number_source_with_spaces_isbn13
 		isbn = "978 0 471 48648 0"
 		results = output_raw_number(isbn)
 		assert_equal("9780471486480", results)
 	end
 
 	def test_6_no_change_in_ouput_if_raw_isbn_number_isbn13
 		isbn = "9780470059029"
 		results = output_raw_number(isbn)
 		assert_equal("9780470059029", results)
 	end
 
 	def test_7_return_all_but_last_isbn10_hyphens
 		isbn = "0-321-14653-0"
 		results = all_but_last(isbn)
 		assert_equal("032114653", results)
 	end
 
 	def test_8_return_all_but_last_isbn10_spaces
 		isbn = "877 1 95 869x"
 		results = all_but_last(isbn)
 		assert_equal("877195869", results)
 	end
 
 		def test_9_return_all_but_last_isbn10_raw
 		isbn = "0471958697"
 		results = all_but_last(isbn)
 		assert_equal("047195869", results)
 	end
 
 	def test_10_return_all_but_last_isbn13_hyphens
 		isbn = "978-0-13-149505-0"
 		results = all_but_last(isbn)
 		assert_equal("978013149505", results)
 	end
 
 	def test_11_return_all_but_last_isbn13_spaces
 		isbn = "978 0 471 48648 0"
 		results = all_but_last(isbn)
 		assert_equal("978047148648", results)
 	end
 
 	def test_12_return_all_but_last_isbn13_raw
 		isbn = "9780470059029"
 		results = all_but_last(isbn)
 		assert_equal("978047005902", results)
 	end
 
 	def test_13_create_multipliers_array_isbn_10
 		isbn = "7421394761"
 		multipliers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
 		results = create_multipliers(isbn)
 		assert_equal(multipliers, results)
 	end
 
 	def test_14_create_multipliers_array_isbn_13
 		multipliers = [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3]
 		isbn = "9780470059029"
 		results = create_multipliers(isbn)
 		assert_equal(multipliers, results)
 	end
 
 	def test_15_create_sum_isbn10_hyphen
 		isbn = "0-321-14653-0"
 		results = create_sum(isbn)
 		assert_equal(154, results)
 	end
 
 	def test_16_create_sum_isbn10_spaces
 		isbn = "877 1 95 869x"
 		results = create_sum(isbn)
 		assert_equal(307, results)
 	end
 
 	def test_17_create_sum_isbn10_raw
 		isbn = "0471958697"
 		results = create_sum(isbn)
 		assert_equal(293, results)
 	end
 
 	def test_18_create_sum_isbn13_hyphen
 		isbn = "978-0-13-149505-0"
 		results = create_sum(isbn)
 		assert_equal(100, results)
 	end
 
 	def test_19_create_sum_isbn13_spaces
 		isbn = "978 0 471 48648 0"
 		results = create_sum(isbn)
 		assert_equal(130, results)
 	end
 
 	def test_20_create_sum_isbn13_raw
 		isbn = "9780470059029"
 		results = create_sum(isbn)
 		assert_equal(101, results)
 	end
 
 	def test_21_create_checksum_isbn10_hyphen
 		isbn = "0-321-14653-0"
 		results = create_checksum(isbn)
 		assert_equal(0, results)
 	end
 
 	def test_22_create_checksum_isbn10_spaces
 		isbn = "877 1 95 869x"
 		results = create_checksum(isbn)
 		assert_equal(10, results)
 	end
 
 	def test_23_create_checksum_isbn10_raw
 		isbn = "0471958697"
 		results = create_checksum(isbn)
 		assert_equal(7, results)
 	end
 
 	def test_24_create_checksum_isbn13_hyphen
 		isbn = "978-0-13-149505-0"
 		results = create_checksum(isbn)
 		assert_equal(0, results)
 	end
 
 	def test_25_create_checksum_isbn13_spaces
 		isbn = "978 0 471 48648 0"
 		results = create_checksum(isbn)
 		assert_equal(0, results)
 	end
 
 	def test_26_create_checksum_isbn13_raw
 		isbn = "9780470059029"
 		results = create_checksum(isbn)
 		assert_equal(9, results)
 	end
 
 	def test_27_validate_checksum_isbn10_with_hyphens
 		isbn = "0-321-14653-0"
 		results = valid_checksum?(isbn)
 		assert_equal(true, results)
 	end
 
 	def test_28_validate_checksum_isbn10_with_spaces
 		isbn = "877 1 95 869x"
 		results = valid_checksum?(isbn)
 		assert_equal(true, results)
 	end
 
 	def test_29_validate_checksum_isbn10_raw
 		isbn = "7421394761"
 		results = valid_checksum?(isbn)
 		assert_equal(true, results)
 	end
 
 	def test_30_validate_checksum_isbn13_with_hyphens
 		isbn = "978-0-13-149505-0"
 		results = valid_checksum?(isbn)
 		assert_equal(true, results)
 	end
 
 	def test_31_validate_checksum_isbn13_with_spaces
 		isbn = "978 0 471 48648 0"
 		results = valid_checksum?(isbn)
 		assert_equal(true, results)
 	end
 
 	def test_32_validate_checksum_isbn13_raw
 		isbn = "9780470059029"
 		results = valid_checksum?(isbn)
  		assert_equal(true, results)
  	end
  
 	def test_33_return_false_if_invalid_characters_in_isbn_number
 		isbn = "0-321-14f53-0"
 	def test_33_return_false_if_invalid_isbn_number_bad_checksum
 		isbn = "4780470059029"
 		results = valid_characters?(isbn)
		assert_equal(false, results)
	end
 
 	def test_34_return_false_if_invalid_isbn_number_invalid_character
 		isbn = "0-321@14653-0"
 		results = valid_characters?(isbn)
 		assert_equal(false, results)
 	end
 
 	def test_35_return_false_if_invalid_isbn_number_x_in_the_wrong_position
 		isbn = "877195x869"
 		results = valid_characters?(isbn)
 		assert_equal(false, results)
 	end
 
 	def test_36_return_false_if_invalid_isbn_number_empty_string
 		isbn = ""
 		results = valid_characters?(isbn)
 		assert_equal(false, results)
 	end
 
 	def test_37_return_false_if_invalid_isbn_number_space
 		isbn = " "
 		results = valid_characters?(isbn)
 		assert_equal(false, results)
 	end
 
 	def test_38_return_false_if_invalid_isbn_number_hypen
 		isbn = "-"
  		results = valid_characters?(isbn)
  		assert_equal(false, results)
  	end
end

end

# require "minitest/autorun"
# require_relative "isbn.rb"

# class Test_ISBN < Minitest::Test
# 	 def test_1_output_raw_number_source_with_spaces
# 	   isbn = "877 1 95 869x"
# 	   results = output_raw_number(isbn)
# 	   assert_equal("877195869x", results)
# 	 end	

# 	def test_2_output_raw_number_source_with_hyphens
# 	   isbn = "0-321-14653-0"
# 	   results = output_raw_number(isbn)
# 	   assert_equal("0321146530", results)
	 
# 	 end	

# 	# def test_1_output_raw_number_source_with_hyphens
# 	#    isbn = "978-0-13-149505-0"
# 	#    results = output_raw_number(isbn)
# 	#    assert_equal(9780131495050, results)
# 	#  end

# end
