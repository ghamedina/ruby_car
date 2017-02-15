#Story 1
#--------------------------
class Vehicle
  def initialize lights
    # give it a lights_on attribute(instance variable), set to default false
    @lights_on = false
    @signal = false
    @speed = 0
  end

  def lights_on
    # return the value of lights_on instance variable
    lights_on = true
    puts "Your lights are on"
  end

  def lights_off
    # if lights are off, turn them on
    # if lights are on, turn them off
    lights_off = true
    puts "Your lights are off"
  end

  def signal_left
    signal_left = true
    puts "signaling left"
  end

  def signal_right
    signal_right = true
    puts "signaling right"
  end

  def speed
    speed = true
    puts "You are going 0 km/h"
    speed 10
    puts "Your current speed is: "
  end


end

  #Remember: you NEVER wrap classes in classes

  class Car < Vehicle
    def initialize model
      @wheels = "4 wheels"
      @year = "2017"
      @model = model
    end

      def wheels
        @wheels
      end

      def year
        @year
      end

      def model
        @model
      end

      def lights_on
        true
      end

  end

  class Tesla < Car

    def initialize model
      super model + "model s"
    end

    def year
      super
    end

    def wheels
      super
    end

    def model
      super
    end

    def lights_off
      "Lights are off"
    end

  end

  class Tata < Car

    def initialize model
      super model + "sumo"
    end

    def year
      super
    end

    def wheels
      super
    end

    def model
      super
    end

  end

  class Toyota < Car

    def initialize model
      super model + "prius"
    end

    def year
      super
    end

    def wheels
      super
    end

    def model
      super
    end

  end


#return of Car class in irb, when requesting default wheels
#--------->>
#>> default_wheels = Car.new => <Car:0x007fe90007c448 @wheels="4 wheels">
#>> default_wheels.wheels => "4 wheels"
