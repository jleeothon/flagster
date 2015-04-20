class FlagNode < Carmenere::Node

  @@Attributes = %w(bars stripes colours red green blue gold white black orange 
    mainhue circles crosses saltires quarters sunstars crescent triangle icon
    animate text topleft botright).map{|s| s.to_sym}

  @@BinaryColours = %w(red
   green blue gold white black orange).map{|s| s.to_sym}

  @@PrimaryShapes = %w(bars stripes).map{|s| s.to_sym}

  @@SecondaryShapes = %w(circles crosses saltires quarters sunstars).map{|s| s.to_sym}

  @@TertiaryShapes = %w(crescent triangle icon animate text).map{|s| s.to_sym}

  @@TextColours = %w(mainhue topleft botright).map{|s| s.to_sym}

  attr_reader :iso

  def initialize *args
    if args.count == 1
      flag = args[0]
      name = flag.name
      attributes = @@Attributes.each.with_object({}) do |a, h|
        h[a] = flag.send a
      end
      @iso = flag.iso
    elsif args.count == 2
      name = args[0]
      attributes = args[1]
    else
      raise "Received too many arguments"
    end
    super name, attributes
  end

  def respond_to? method_sym, include_private = false
    if self.attributes.has_key? method_sym
      true
    else
      super method_sym, include_private
    end
  end

  def method_missing method_sym, *arguments, &block
    if self.attributes.has_key? method_sym
      self.attributes[method_sym]
    else
      super method_sym, *arguments, &block
    end
  end

  def distance other
    super other do
      d = 0
      d += self.colours - other.colours
      @@BinaryColours.each do |colour|
        d += (self.send(colour) - other.send(colour)).abs * 3
      end
      (@@PrimaryShapes + @@SecondaryShapes).each do |c|
        d += Math::sqrt((self.send(c) - self.send(c)).abs * 2)
      end
      @@TertiaryShapes.each do |c|
        d += (self.send(c) - (other.send(c))).abs
      end
      d += if self.mainhue == other.mainhue then 0 else 10 end
      d += if self.topleft == other.topleft then 0 else 3 end
      d += if self.botright == other.botright then 0 else 3 end
    end
  end

  def self.mean cluster
    count = cluster.count
    return nil if count.zero?
    attributes = Hash.new
    attributes[:colours] = cluster.reduce(0){ |m, f| m + f.colours } / count
    (@@PrimaryShapes + @@SecondaryShapes + @@TertiaryShapes).each do |a|
      attributes[a] = cluster.reduce(0){ |m, f| m + f.send(a) } / count
    end
    @@BinaryColours.each do |a|
       attributes[a] = cluster.reduce(0) { |m, f| m + f.send(a) } / count
    end
    @@TextColours.each do |a|
      frequencies = cluster.each.with_object(Hash.new 0) do |f, b|
        b[f.send(a)] += 1
      end
      attributes[a] = frequencies.max_by(frequencies.count){ |k, v| v }.sort[0]
    end
    FlagNode::new :centroid, attributes
  end

end