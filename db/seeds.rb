50.times { Car.create(  make: FFaker::Vehicle.make,
                        model: FFaker::Vehicle.model,
                        color: FFaker::Vehicle.manufacturer_color,
                        engine: FFaker::Vehicle.engine_displacement )}
