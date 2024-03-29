# Artascii

Generate ASCII art from images.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'artascii'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install artascii

## Usage

```ruby
require "artascii"

Specify the path to your image
path = "daisy.jpg"

# Initialize the image matrix
image_mx = Artascii::Image.new(path)

# Can print image dimensions
puts "Image Size: #{image_mx.height} x #{image_mx.width}"

# Construct Pixel Matrix
pixels = image_mx.get_pixels

# Construct Brightness Matrix
# Currently uses Average calculation method
bright_pixels = image_mx.get_brightness_mx(pixels)

# Finalize the ascii image by mapping brightness to ascii chars
mx = image_mx.get_ascii_mx(bright_pixels)

# Print the matrix to a file of your choosing to view
image_mx.print_to_file(mx, "matrix.txt")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lovepreetkaul/artascii. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/lovepreetkaul/artascii/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Asciigen project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/lovepreetkaul/artascii/blob/master/CODE_OF_CONDUCT.md).
