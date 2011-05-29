require 'text'
require 'pp'

class Object
  def method_missing method, *args, &block
    sym = methods.sort_by{ |m| Text::Levenshtein.distance method.to_s, m.to_s}.first
    send(sym.to_s) if Text::Levenshtein.distance(sym, method) < 10
  end
end

