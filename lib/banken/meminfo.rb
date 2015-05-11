class Banken::Meminfo
  def read
    data = {}
    IO.read('/proc/meminfo').split(/\n/).map do |stat|
      data.merge! parse_stat(stat)
    end
    data
  end

  private

  def parse_stat(line)
    data = line.split(/\s+/)
    title = data.shift.gsub(/\((.+)\)/, '_\1').gsub(/([a-z\d])([A-Z])/, '\1_\2').gsub(/\s/, '_').gsub(/:$/, '').downcase.to_sym
    {title => {data: data.shift.to_i, unit: data.shift}}
  end
end
