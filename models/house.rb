require_relative("../db/sql_runner.rb")

class House

attr_reader :id, :house_name, :logo_url

  def initialize(params)
    @id = params['id'].to_i
    @house_name = params['house_name']
    @logo_url = params['logo_url']
  end

  def save()
    sql = "
    INSERT INTO houses (
      house_name,
      logo_url
    ) VALUES (
      '#{@house_name}',
      '#{@logo_url}'
    ) RETURNING id"
    @id = SqlRunner.run(sql).first['id'].to_i
  end

  def House.all()
    sql = " SELECT * FROM houses"
    houses = SqlRunner.run ( sql )
    houses.map {|house| House.new( house )}
  end

  def House.find(id)
    sql = "SELECT * FROM houses WHERE id = #{id}"
    house = SqlRunner.run ( sql )
    result = House.new ( house.first() )
    return result
  end
end 