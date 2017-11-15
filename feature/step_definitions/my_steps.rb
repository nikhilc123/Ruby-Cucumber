Given (/^get values from link$/) do
  on(StepsPage).setBrowser
end

When (/^check to see right number of values$/) do
  on(StepsPage).getValues
end

When(/^check to see values are greater than zero$/) do
  on(StepsPage).checkValues
end

When(/^check to see the sum of value are eaual to the total value$/) do
  on(StepsPage).checkSum
end

When(/^check to see if values are formatted in currencies$/) do
  on(StepsPage).checkCurrency
end

When(/^Total balance matches sum of values if not "([^"]*)"$/) do |msg|
  on(StepsPage).checkTotal.error.should include msg
end

Then(/^verification message$/) do
  puts "All values have been verified"
end


