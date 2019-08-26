Complex: (_real, _imaginary){
  real: _real
  imaginary: _imaginary
  +: (operand){
    Complex(self.real + operand.real, self.imaginary + operand.imaginary)
  }
  *: (operand){
    Complex(self.real * operand.real - self.imaginary * operand.imaginary, self.real * operand.imaginary + self.imaginary * operand.real)
  }
  absolute2: {_absolute2(self)}
}
_absolute2: (c){c.real * c.real + c.imaginary * c.imaginary}
