class Artist < ActiveRecord::Base
  has_many :songs

  def midi_to_named(midi)
    note_letters = %w(C C# D D# E F F# G G# A A# B)
    octave = midi / 12 - 1
    index = midi % 12
    note_letters[index]+octave.to_s
  end
end
