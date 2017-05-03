require_relative("../db/sql_runner.rb")
require_relative("house.rb")

class Student

  attr_reader :id, :first_name, :last_name, :house, :age

  def initialize(params)
    @id = params["id"].to_i
    @first_name = params["first_name"]
    @last_name = params["last_name"]
    @house = params["house"].to_i
    @age = params["age"].to_i
  end

  def save()
    sql = "INSERT INTO students (
        first_name,
        last_name,
        house,
        age
    ) VALUES (
      '#{@first_name}',
      '#{@last_name}',
       #{@house},
       #{@age}
    ) RETURNING id"
    @id = SqlRunner.run(sql).first['id'].to_i
  end

  def Student.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    students.map{|student| Student.new(student)}
  end

  def Student.find(id)
    sql = "SELECT * FROM students 
    WHERE id = #{id}" 
    result  =SqlRunner.run(sql)
    student = Student.new( result.first )
    return student
  end

  def house()
    sql = "SELECT * FROM houses WHERE id = #{@house}"
    house = SqlRunner.run( sql )
    result = House.new ( house.first )
    return result
  end




end
