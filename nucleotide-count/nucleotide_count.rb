class Nucleotide
  def self.from_dna(dna_str)
    NucleotideStr.new(dna_str)
  end
end

class NucleotideStr
  NUCLEOTIDES = ['A','C','G','T']

  def initialize(s)
    raise ArgumentError if s =~ /[^#{NUCLEOTIDES.join('')}]/
    @dna_str = s.to_s
  end

  def count(char)
    @dna_str.scan(char).size
  end

  def histogram
    NUCLEOTIDES.inject({}) do |hsh,n|
      hsh[n] = count(n)
      hsh
    end
  end
end
