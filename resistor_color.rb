class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white]   
  def self.color_code(color)
    return COLORS.index(color)
  end
end  

#no secondary solution
