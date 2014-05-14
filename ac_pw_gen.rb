#
# This is a program that can auto-generate random account and password
#
rand_obj = Random.new()
#
# random number to decide the number of account (default : 8 ~ 12)
#
ac_num = rand_obj.rand(8..12)
pw_num = rand_obj.rand(8..12)
#
# generate the ac and pw letter
#
ac = ac_num.times.map{
	rand_class = rand_obj.rand(1..3)
	if rand_class == 1 
		rand_obj.rand(48..57).chr
	elsif rand_class == 2
		rand_obj.rand(65..90).chr
	elsif rand_class == 3
		rand_obj.rand(97..122).chr
	end		
}
pw = pw_num.times.map{
	rand_class = rand_obj.rand(1..3)
	if rand_class == 1 
		rand_obj.rand(48..57).chr
	elsif rand_class == 2
		rand_obj.rand(65..90).chr
	elsif rand_class == 3
		rand_obj.rand(97..122).chr
	end		
}
#
# show the account and password
#
puts ac.join
puts pw.join
#
# @_larrywhy
#