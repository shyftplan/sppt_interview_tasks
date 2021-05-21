# Imagine big manufacture
#
# Employees work there in multiple-days shifts, e.g. Bob works on Monday,
# Tuesday and Wednesday - it means he has a 3-days shift, starting on Monday.
#
# Company has planned all shifts for a year and now wants assign employee on
# theese shifts.
#
# We wrote a super smart AI which decides how to distribute employee throughout
# the shifts, but there is a bug in it. It tries to assign employees to
# overlapping shifts. For example, it tries to assign Bob to a shift from
# Monday to Wednesday and to another shift from Tuesday to Thursday. This way
# Bob would work on two shifts at the same timee on Tuesday and Wednesday.
#
# Your task is to take results from the AI (huge array of possible assignments)
# And choose only assignments which don't overlap. If you find overlapping
# assignments, take any.

class Assignment
  attr_reader :employee_id
  attr_reader :start_date
  attr_reader :end_date
end

# @param Array<Assignment> input assignments
# @return Array<Assignment> assignments without overlapping
def remove_conflicts(assignments)
  # Your code
end

# Bonus:
# If you find overlapping assignments, find the first one in the initial array
