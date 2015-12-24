#extra assignments 1 Ruby TV

	
#There is probably an easier way to do this..Here goes nothing!

class Tv

	def initialize (channel, volume, mute,button, power1, power2)
		@channel = 1
		@volumes = 5
		@mute = 1
		@power1 = power1
		@power2 = power2
		@button = button 
	end
#on
	def turn_on(power1)
		if @power1 == 'on'
			puts "Tv is #{power1} and function and at volume: #{@volumes}."
		end
	end
#off
	def turn_off(power2)
		if @power2 == 'off'
			puts "Tv is turned #{power2}"
		end
	end

#channel choice up
	def change_channel_up(button)
		if @channel > 1
		   @channel -= 1
		 puts "press #{button}! leaves cable channel station at channel#{@channel}."
		else 
		  puts " HDMI-1 play station channel" 
		end
	end

#down
	def change_channel_down(button)
		if @channel < 10
			@channel += 1
			puts "press #{button}! leaves cable channel station at channel#{@channel}."
		else 
			puts "Last cable channel"
        end
    end


#to reduce volume
#put in any arguement u want; 'up', increase, add, or whatever still would work.
	def volume_reduce(button)
		if @volumes > 0
			@volumes -= 1
			puts "press #{button}! leaves volumes bar level at: #{@volumes}."
		else
			puts " Volume bar level is at 0"
		end
	end

#increase
#put in any arguement u want; 'up', increase, add, or whatever it still would work.
	def volume_increase(button)
		 if @volumes < 10
			@volumes += 1
			puts "press #{button}! leaves volume bar level at: #{@volumes}."
		else
			puts "Volume Max!...Pls reduce Volume "
		end
	end

# In this advance tv u only have to push the mute button once to mute and twice to unmute
	#mute
	def silent_tv(button)
		if @mute > 0
           @mute -= 1
			puts "You pushed #{button}! tv is mute at bar : #{@mute}"
		else
			puts " Tv is unmuted"
		end
	end
#opposite
	def silent_undo(button)
		if @mute < 1
			@mute += 1
			puts "you pushed #{button}! tv is unmuted at bar: #{@mute} unless you push #{button} again"
		else
			puts "Tv is on mute"
		end
	end
end


#The end

	
	


