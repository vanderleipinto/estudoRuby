# https://exercism.org/tracks/ruby/exercises/log-line-parser/edit 


class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    start = @line.index(':')
    final = @line.length
    msg = @line.slice(start+1 , final).strip
    msg.gsub!(/[\t\r\n]/,'')
    return msg
  end

  def log_level
    level = @line.split(':')
    level[0][1...].chop.downcase
  end

  def reformat
    level = @line.split(':')    
    information = "(#{level[0][1...level[0].size-1].chomp.downcase})"
    information.strip!
    
    return "#{self.message} #{information}"
  end
end
