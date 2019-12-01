def nbit_check(integer:, bit:)
  (integer >> bit)&1
end

def encoder(num:)
  dec = num.to_i(2)
  set_data(dec: dec)

  set_parity
  output

end

def set_data(dec:)
  @enc_data = 0
  n = 0
  @enc_data = nbit_check(integer: dec, bit: n) << 0
  3.times do
    n += 1
    @enc_data += nbit_check(integer: dec, bit: n) << 2**(n-1)
  end
end

def set_parity
  num = 1
  3.times do
    init = 2**(num-1)
    ret = 0
    i = init
    while i < 7 do
      i += 1
      cb = i ^ 7
      ret += nbit_check(integer: @enc_data, bit: cb) if nbit_check(integer: i, bit: (num-1)) == 1
    end
    @enc_data += nbit_check(integer: ret, bit: 0) << (init ^ 7)
    num += 1
  end
end

def output
     res = @enc_data.to_s(2).rjust(7, '0')
end
    

num = ARGV[0]
out = encoder(num: num)
puts out
