# Class to convert a DNA strand to its RNA complement, and vice versa
class Complement
  # Define constants
  VERSION = 2

  DNA_VALUES = 'GCTA'
  RNA_VALUES = 'CGAU'

  def self.of_dna(dstrand)
    transform(dstrand, DNA_VALUES, RNA_VALUES)
  end

  def self.of_rna(rstrand)
    transform(rstrand, RNA_VALUES, DNA_VALUES)
  end

  def self.transform(strand, from, to)
    if strand =~ /[^#{from}]/
      raise ArgumentError.new "The strand must only contain #{from}"
    end
    strand.tr(from, to)
  end
end
