require 'rspec/core/rake_task'
 
desc 'Default: run specs.'
task :default => :spec

desc "Run specs"
RSpec::Core::RakeTask.new do |t|
  t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
end

desc 'Benchmark'
task :benchmark, :words_count do |t, args|
  args.with_defaults(:words_count => 5000)
  words_count = args[:words_count].to_i
  raise "The Dictionary only contains 235886 words, so this is the max value to benchmark" if words_count > 235886
  if words_count > 5000
    puts "Short version will be excluded because it is too slow"
  end
  if words_count > 10000
    puts "Readable version will be excluded because it is too slow"
  end
  require 'benchmark'
  $LOAD_PATH << File.expand_path('../lib', __FILE__)
  require 'fast_finder.rb'
  require 'readable_finder.rb'
  require 'extendible_finder.rb'
  require 'short_finder.rb'
  words = File.readlines('bin/long_dictionary.txt').map(&:strip).take(words_count)
  Benchmark.bm(5) do |x|
    x.report("Readable:") { (ReadableFinder.find_words words) } if words_count <= 10000
    x.report("Fast:") { (FastFinder.find_words words) }
    x.report("Extendable:") { (ExtendibleFinder.find_words words) }
    x.report("Short:") { (ShortFinder.find_words words) } if words_count <= 5000
  end
end