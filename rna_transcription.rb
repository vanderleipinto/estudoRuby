#https://exercism.org/tracks/ruby/exercises/rna-transcription/edit
class Complement
  def self.of_dna(dna)
    i=0
    dna.length.times do |i|
      case dna[i]   
       when  'A'
         dna[i]= 'U'
       when 'T'
        dna[i] = 'A'
       when 'C'
        dna[i] = 'G'
       when 'G' 
         dna[i] = 'C'
       end
    end
    dna
  end    
end
