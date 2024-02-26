# frozen_string_literal: true

##
# ProgressBar is a simple module to create
# progress bars for your iterables.
module AriaProgressBar
  ##
  # Creates a progress bar for your iterable.
  # @param iterable [Enumerable] The iterable to create a progress bar for.
  # @param title [String] The title of the progress bar.
  # @param n_bars [Integer] The number of bars to display.
  # @param block [Proc] The block to execute for each element in the iterable.
  def self.bar(iterable, title: 'Progress: ', n_bars: 20, &block)
    raise 'Iterable can\'t be empty for progress bar!' if iterable.empty?

    bar_percentage = 0.0  # Inicializando com 0%
    bar = n_bars / iterable.length.to_f
    multiplier = 100 / n_bars.to_f
    iterable.each do |*args|
      print "\r#{title}[#{'⬜' * bar_percentage.round}#{' ' * (n_bars - bar_percentage.round)}] #{
(bar_percentage * multiplier).round(2)}%"
      block.call(*args)
      bar_percentage += bar
    end
    puts  # Adicionando uma nova linha no final
  end
end

# Create an array as an iterable
array = (1..10).to_a



puts '3.'
sleep 1
puts '2..'
sleep 1
puts '1...'
sleep 1
puts '🚀🚀🚀🚀'
sleep 1

# Create a progress bar for the array
AriaProgressBar.bar(array, title: 'Processing: ', n_bars: 10) do |element|
  # Your code here
  system("zsh -c '#{zsh_command}'")
  sleep(1
  )
end
