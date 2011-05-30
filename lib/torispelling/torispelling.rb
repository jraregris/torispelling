require 'text'
require 'pp'

class Object
  def method_missing method, *args, &block
    sym = methods.sort_by{ |m| Text::Levenshtein.distance method.to_s, m.to_s}.first
    dist = Text::Levenshtein.distance method.to_s, sym.to_s

    if dist < 2
      send(sym.to_s)
    else
      super
    end
  end
end

