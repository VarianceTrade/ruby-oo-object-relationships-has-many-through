class Waiter
    
    @@all = []

    def initialize(name, experience)
        @name = name
        @experience = experience
        @@all << self

    end

    def name
        @name
    end

    def experience
        @experience
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        meals = []
        Meal.all.each do |meal|
            if meal.waiter == self
                meals << meal
            end
        end
        return meals
    end

    def best_tipper
        largest_tip = 0
        found = nil

        Meal.all.each do |meal|
            if meal.tip > largest_tip
                found = meal
                largest_tip = meal.tip
            end
        end

        return found.customer
    end
end