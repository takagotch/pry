
### pry
---
https://github.com/pry/pry

http://pryrepl.org/

binding.pry

irb
rails console

---sh
gem install pry
pry
cd FileUtils
show-method rm

a.hello
puts x
def a.goodby
a.goodby
x = "changed"
# => x is: "changed"
exit
shell-mode
.cd ~
.vi .pryrc
.cat .pryrc
load ".pryrc"
hello_world
```

```ruby
def rm(list, options = {})
  fu_check_options options, OPT_TABLE['rm']
  list = fu_list(list)
  fu_output_message "rm#[options[:force] ? ' -f' : ''] #[list.join ' ']" if options[:verbose]
  return if options[:noop]
  list.each do |path|
    remove_file path, options[:force]
  end
end

# test.rb
require 'pry'
class A
  def hello() puts "hello!" end
end
a = A.new
x = 10
binding.pry
puts "x is: #{x}." 

```


