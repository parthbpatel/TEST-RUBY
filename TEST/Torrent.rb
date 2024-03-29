require_relative "TorrentModule"

class Powers
  def initialize(unit, select_phase)
    @unit = unit
    @select_phase = select_phase
  end
end

class ChooseCategory < Powers #polymorphism using inheritance.
  include AllCategories
end

class ShowCategory
  def choose_category
    all_category =
    {
      "RGP" => "Residential General Purpose",
      "BPL" => "Below Poverty Line",
      "GLP" => "General Lighting Purpose",
      "NONRGP" => "Commercial and Industrial Purpose",
      "LTP" => "Agriculture Service",
      "LTMD1" => "Low Tension Maximum Demand 1",
      "LTMD2" => "Low Tension Maximum Demand 2",
      "SL" => "Street Light Service",
      "TMP" => "Low Tension Temporary Supply",
      "HTMD1" => "High Tension Maximum Demand 1",
      "HTMD2" => "High Tension Maximum Demand 2",
      "HTMD3" => "High Tension Maximum Demand 3"
    }
    puts "-" * 50
    pp all_category #PrettyPrint
    puts "-" * 50
    #puts all_category.map{|key, value| puts "#{key} : #{value}"}
  end
end

ShowCategory.new().choose_category #print category

print "ENTER CATEGORY: "
categories = gets.chomp

print "ENTER UNIT: "
unit = gets.chomp.to_i

case categories
when "RGP"
  print "SINGLE PHASE or THREE PHASE: "
  select_phase = gets.chomp
  case select_phase
  when "SINGLE"
    select_phase = 25
  when "THREE"
    select_phase = 65
  else
    puts "ENTER VALID PHASE"
  end
  ChooseCategory.new(unit, select_phase).residential_general_purpose(unit, select_phase)

when "GLP"
  print "SINGLE PHASE or THREE PHASE: "
  select_phase = gets.chomp
  case select_phase
  when "SINGLE"
    select_phase = 30
  when "THREE"
    select_phase = 70
  else
    puts "ENTER VALID PHASE"
  end
  ChooseCategory.new(unit, select_phase).general_lighting_purpose(unit, select_phase)

when "BPL"
  ChooseCategory.new(unit, select_phase).below_poverty_line(unit)

when "NONRGP"
  ChooseCategory.new(unit, select_phase).commercial_industrial_purpose(unit)

when "LTP"
  ChooseCategory.new(unit, select_phase).agriculture_service(unit)

when "LTMD1"
  ChooseCategory.new(unit, select_phase).low_tension_maximum_demand_1(unit)

when "LTMD2"
  ChooseCategory.new(unit, select_phase).low_tension_maximum_demand_2(unit)

when "SL"
  ChooseCategory.new(unit, select_phase).for_street_light(unit)

when "TMP"
  ChooseCategory.new(unit, select_phase).low_tension_temporary_supply(unit)

when "HTMD1"
  ChooseCategory.new(unit, select_phase).high_tension_maximum_demand_1(unit)

when "HTMD2"
  ChooseCategory.new(unit, select_phase).high_tension_maximum_demand_2(unit)

when "HTMD3"
  ChooseCategory.new(unit, select_phase).high_tension_maximum_demand_3(unit)
else
  puts "ENTER VALID CATEGORY"
end
