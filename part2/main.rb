def coding(str)
  a = str.tr('a-z', 'b-z' + 'a')
  a
end

def decoding(str)
  a = str.tr('b-z' + 'a', 'a-z')
  a
end
