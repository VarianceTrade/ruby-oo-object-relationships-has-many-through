class Meal

    @@all = []

    def initialize(waiter, customer, total, tip)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end

    def waiter
        @waiter
    end

    def customer
        @customer
    end

    def total
        @total
    end

    def tip
        @tip
    end

    def self.all
        @@all
    end

end