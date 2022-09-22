class LogLineParser
  REGEX_LINE = /(\w+) (.*)/
  Customer = Struct.new(:log, :msg)

  def initialize(line)
    @line = line
  end

  def message
    parse_line(@line.delete "[]:").msg.strip
  end

  def log_level
    parse_line(@line.delete "[]:").log.downcase
  end

  def reformat
    reformat_log = "(" + parse_line(@line.delete "[]:").log.downcase + ")"
    
    parse_line(@line.delete "[]:").msg.strip + " " + reformat_log
  end

  private 

  def parse_line(line) 
    line.match(REGEX_LINE) {|l| Customer.new(*l.captures) } 
  end
end
