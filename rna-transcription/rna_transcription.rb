class Complement

  # Define constants
  VERSION = 2

  DNA_VALUES = 'GCTA'
  RNA_VALUES = 'CGAU'

  # DNA to RNA complement
  # 'G' => 'C',
  # 'C' => 'G',
  # 'T' => 'A',
  # 'A' => 'U'
  def self.of_dna(dstrand)
    transform(dstrand,DNA_VALUES,RNA_VALUES)
  end

  # RNA to DNA complement
  # 'C' => 'G',
  # 'G' => 'C',
  # 'A' => 'T',
  # 'U' => 'A'
  def self.of_rna(rstrand)
    transform(rstrand,RNA_VALUES,DNA_VALUES)
  end

  private
  
    def self.transform (strand, from, to)
      raise ArgumentError.new if strand =~ /[^#{from}]/
      strand.tr(from,to)
    end

end