# Imagine huge international corporation.
# It has many sub-companies in different countires.
# Each country sub-company have many sub-sub-companies in different regions.
# Each sub-sub-company can have branches (sub-sub-sub-companies) in different
# cities, etc.
#
# Each company(and its sub-companies) needs some amount of employees to operate.
# Amount of employees is counted as:
#   Total = Amount of employees + Amount of employees in its sub-companies
#

# Representation of the company
class Company
  attr_reader :id
  attr_reader :parent_id # Can be nil
  attr_reader :amount_of_employees # This is amount just in this exact company
  attr_reader :minimum_amount_of_employees
end

# Your task is to check company and all its sub-companies if they have required
# minimum of employees.
#
# @param Array<Company> all companies
# @return Boolean
def meet_requirements?(companies)
  # Your code
end

# Option 1:
# Array of companies always have just one root, and the structure is always
# valid.
#
# Option 2 (Bonus):
# Array of companies can have multiple roots and the structure might be not
# valid (has loops in it)