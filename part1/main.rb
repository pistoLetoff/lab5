def evaluate(x_arg, y_arg, z_arg)
  l1 = y_arg - x_arg.abs()**0.5
  l2 = x_arg - y_arg / (z_arg + x_arg**2)
  l3 = l1 / l2
  return nil if l2.zero?
  return nil if l3.zero?
  Math.log(l3.abs())
end
