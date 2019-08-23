module All_Categories
  def residential_general_purpose(unit, select_phase)
    if unit <= 50
      payment = unit * 3.20 + select_phase
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    elsif unit > 50 && unit <= 200
      first_unit = 50 * 3.20
      next_unit = (unit - 50) * 3.90
      payment = first_unit + next_unit + select_phase
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    else
      first_unit = 50 * 3.20
      next_unit = (unit - 50) * 3.90
      remaining_unit = first_unit * 4.90
      payment = first_unit + next_unit + remaining_unit + select_phase
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    end
  end

  def below_poverty_line(unit)
    if unit <= 30
      payment = unit * 1.50 + 5
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    elsif unit > 30 && unit <= 50
      first_unit = 30 * 1.50
      next_unit = (unit - 30) * 3.20
      payment = first_unit + next_unit + 5
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    elsif unit > 50 && unit <= 200
       first_unit = 30 * 1.50
       next_unit = 20 * 3.20
       next_unit_2 = (unit - 50) * 3.90
       payment = first_unit +next_unit + next_unit_2 + 5
       puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    else
      first_unit = 30 * 1.50
      next_unit = 20 * 3.20
      next_unit_2 = 150 * 3.90
      remaining_unit = (unit - 200) * 4.90
      payment = first_unit + next_unit + next_unit_2 + remaining_unit + 5
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    end
  end

  def general_lighting_purpose(unit, select_phase)
    if unit <= 200
      first_unit = unit * 4.10
      payment = first_unit + select_phase
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    else
      first_unit = 200 * 4.10
      remaining_unit = (unit - 200) * 4.80
      payment = first_unit + remaining_unit + select_phase
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    end
  end

  def commercial_industrial_purpose(unit)
    if unit <= 5
      payment = unit * 4.50 + 70.00
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    else
      payment = unit * 4.50 + 90.00
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    end
  end

  def agriculture_service(unit)
    payment = unit * 3.30 + 10
    puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
  end

  def low_tension_maximum_demand_1(unit)
    if unit <= 50
      payment = unit * 4.55 + 150
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    elsif unit > 50
      payment = unit * 4.70 + 185
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    end
  end

  def low_tension_maximum_demand_2(unit)
    if unit <= 50
      payment = unit * 4.70 + 175
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    else
      payment = unit * 4.90 + 230
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
    end
  end

  def for_street_light(unit)
    payment = unit * 4.20
    puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
  end

  def low_tension_temporary_supply(unit)
    payment = unit * 5.00 + 25
    puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
  end

  def high_tension_maximum_demand_1(unit)
    if unit <= 400
      energy = unit * 4.45 + 260
      first_unit = (unit - 400)
      next_unit = 400 * 4.35
      next_unit_2 = first_unit * 4.70 + 260
      energy = first_unit + next_unit_2
    else
      energy = unit * 4.35
    end

    if unit < 1000
      fixed_charges = 260
    else
      fixed_charges = 385
    end

    if unit <= 300
      tou_charge = unit * 0.80
    else
      tou_charge = unit
    end
      payment = energy + fixed_charges + tou_charge
      puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
  end

  def high_tension_maximum_demand_2(unit)
    payment = (unit * 4.00 * 0.60) + 225
    puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
  end

  def high_tension_maximum_demand_3(unit)
    payment = unit * 6.95 * 0.60 + 25
    puts "TOTAL AMOUNT TO BE PAID: #{payment.round(2)}"
  end
end
