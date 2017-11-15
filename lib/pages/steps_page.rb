class StepsPage

  def setBrowser
    # chrome for google chrome and ff for firefox
    @browser = Selenium::WebDriver.for :chrome
    @browser.goto 'https://www.exercise1.com/values'
  end

  def getValues
    @val1 = @browser.text_field(:id => 'txt_val_1').value
    @val2 = @browser.text_field(:id => 'txt_val_2').value
    @val3 = @browser.text_field(:id => 'txt_val_4').value
    @val4 = @browser.text_field(:id => 'txt_val_5').value
    @val5 = @browser.text_field(:id => 'txt_val_6').value
    @totalBal = @browser.text_field(:id => 'txt_ttl_val').value
  end

  def checkValues
    if (@val1 < 0) && (@val2 < 0) && (@val3 < 0) && (@val4 < 0) && (@val5 < 0)
      puts "Verified"
    end
  end

  def checkSum
    @sum = @val1+@val2+@val3+@val4+@val5
    if @sum == @totalBal
      puts "Values match"
    else
    puts "Values does not match"
    end
  end

  def checkCurrency
    #Dollar '$' sign for currency check
    if @val1.include?("$") && @val2.include?("$") && @val3.include?("$") && @val4.include?("$") && @val5.include?("$")
      puts "Currency in $ verified!"
    end
  end

  def checkTotal (errorMsg)
    @sum_of_values == @val1+@val2+@val3+@val4+@val5
    if @totalBal == @sum_of_values
      puts "Sum of values are correct"
     else
      puts errorMsg
    end
  end
end