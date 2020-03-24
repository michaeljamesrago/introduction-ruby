class Length
  CONVERSION = {  km:  { km: 1, mi: 0.6213711, nmi: 0.539957 },
                  mi:  { km: 1.609344, mi: 1, nmi: 0.8689762419 },
                  nmi: { km: 1.8519993, mi: 1.15078, nmi: 1 } }
  include Comparable
  attr_reader :value, :unit

  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  def as_kilometers
    convert_to(:km)
  end

  def as_miles
    convert_to(:mi)
  end

  def as_nautical_miles
    convert_to(:nmi)
  end

  def <=>(other)
    value <=> other.convert_to(unit).value
  end

  def to_s
    "#{value} #{unit}"
  end

  protected

  def convert_to(target_unit)
    Length.new((value / CONVERSION[target_unit][unit]).round(4), target_unit)
  end
end

len1 = Length.new(25, :mi)
puts len1
puts len1.as_kilometers
# Example

puts [Length.new(1, :mi), Length.new(1, :nmi), Length.new(1, :km)].sort
# => comparison of Length with Length failed (ArgumentError)
# expected output:
# 1 km
# 1 mi
# 1 nmi
