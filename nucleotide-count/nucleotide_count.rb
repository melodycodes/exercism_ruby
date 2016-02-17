class Nucleotide
  NUCLEOTIDES = ['A','C','G','T']

  def initialize(s)
    raise ArgumentError if s =~ /[^#{NUCLEOTIDES.join('')}]/
    @dna_str = s
  end

  def self.from_dna(dna_str)
    new(dna_str)
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
