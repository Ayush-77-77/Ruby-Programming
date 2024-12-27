def test_block()
  puts "I am gonna call block"
  yield
end
test_block{puts "I am inside the block"}

BEGIN{
  puts 'I am in begin'
}
END{
  puts "I am inside 1st END"
}
END{
  puts "I am inside 2st END"
}
