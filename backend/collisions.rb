# Imagine big manufacture.
#
# Employees work there in shifts, e.g. Bob works every week on Monday, Tuesday
# and Wednesday - it means he has a 3-days shift, starting on Monday.
#
# Company has planned all shifts for a year and now wants assign employees on
# theese shifts.
#
# We wrote a super smart AI which decides how to distribute employee throughout
# the shifts, but there is a bug in it - it tries to assign employees to
# overlapping shifts.
# For example, it tries to assign Bob to a shift from Monday to Wednesday and
# to another shift from Tuesday to Thursday. This way Bob would work on two
# overlapping shifts at the same time on Tuesday and Wednesday.
#
# Your task is to take results from the AI (huge not sorted array of possible
# assignments of different employees) and choose only assignments which don't
# overlap. If you find overlapping assignments, take any(but just one).
#
# This is how Assignment class looks like
class Assignment
  attr_reader :employee_id
  attr_reader :start_date
  attr_reader :end_date
  # ...
end

# @param Array<Assignment> input assignments
# @return Array<Assignment> assignments without overlapping
def remove_conflicts(assignments)
  # Your code
end

# Bonus:
# In case you find overlapping assignments, find the one that was earlier in
# the input array
