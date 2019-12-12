class Employee
    attr_accessor :name, :title, :salary, :boss 
  def initialize(name, title, salary, boss)
    @name = name 
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    salary * multiplier
  end
end

class Manager < Employee

  attr_accessor :employees, :salary

  def initialize(name, salary, title, boss = nil) 
    super
    @employees = []
  end

  def add_employee(employee)
    employees << employee  
  end

  def bonus(multiplier)
    total_company_salary = self.sub_employees.map{|employee| employee.salary}.sum 
    total_company_salary * multiplier
  end

  def sub_employees
    all_employees = []
    queue = self.employees

    until queue.empty?
      current_employee = queue.shift 
      all_employees << current_employee 
      if current_employee.is_a?(Manager)
        queue += current_employee.employees
      end
    end
    all_employees 
  end
end

# ned = Manager.new("ned","CEO", 1000)
# darren = Manager.new
# shawna = Manager.new
# david = Manager.new("david","manager", 500,"ned")
# kai = Employee.new("kai","coder", 100,"david")

#load "class_inherit.rb"