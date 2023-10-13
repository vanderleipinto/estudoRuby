#https://exercism.org/tracks/ruby/exercises/microwave/edit
class Microwave
  def initialize(time)
    @time = time.to_i
  end
  def timer
    min = '00'
    sec = '00'
    sec = sprintf("%02d",@time) if @time <= 59
    if @time >= 60 && @time <= 99 # dois dígitos maiores que 59
      min = sprintf("%02d",@time/60)
      sec = sprintf("%02d",@time%60)
    end
    if @time >= 100
      min = sprintf("%02d",@time/100)
      sec = sprintf("%02d",@time%100)
      if sec.to_i > 59
        min = sprintf("%02d",(min.to_i + sec.to_i/60).to_s)
        sec = sprintf("%02d",sec.to_i%60)
      end
    end
    return "#{min}:#{sec}"
  end
end

#alternative version
# class Microwave
#   def initialize(time)
#     @time = time
#   end
#   def timer
#     hours, seconds = @time.divmod(100)
#     hours += seconds / 60
#     seconds %= 60
#     "%02d:%02d" % [hours, seconds]
#   end
# end
