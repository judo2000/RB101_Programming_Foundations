# Ammend this array so that the names are
# all shortened to just the first three
# characters

flintstones = %w(Fred Barney Wilma Betty BamBam Pebles)

flintstones.map! do |name|
  name[0, 3]
end

# This could also be done in a single line:

flintstones.map! { |name| name[0, 3] }
