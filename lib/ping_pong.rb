class Fixnum
  define_method (:ping_pong) do
    numbers = (1..self)
    ping_pong = []
    numbers.each() do |number|
        if number.%(15).==(0)
          ping_pong.push("ping-pong")
        elsif number.%(5).==(0)
          ping_pong.push("pong")
        elsif number.%(3).==(0)
          ping_pong.push("ping")
        else
          ping_pong.push(number)
        end
    end
    ping_pong
  end
end
