class NotationTranslationHelper

  #notation - string
  def self.notation_to_array(notation)
    y = notation[1].to_i - 1
    x = notation[0].bytes[0] - 'a'.bytes[0]
    return Vector[y,x]
  end
  #coord - Array[integer]
  def self.array_to_notation(coord)
    ch = 'a'.bytes[0]
    c = (coord[1]+ch).chr
    return c+(coord[0]+1).to_s
  end
end
