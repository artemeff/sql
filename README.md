[gem]: https://rubygems.org/gems/sql
[travis]: https://travis-ci.org/artemeff/sql
[gemnasium]: https://gemnasium.com/artemeff/sql
[codeclimate]: https://codeclimate.com/github/artemeff/sql
[coveralls]: https://coveralls.io/r/artemeff/sql

# sql.rb

[![Gem Version](https://badge.fury.io/rb/sql.png)][gem]
[![Build Status](https://secure.travis-ci.org/artemeff/sql.png?branch=master)][travis]
[![Dependency Status](https://gemnasium.com/artemeff/sql.png)][gemnasium]
[![Code Climate](https://codeclimate.com/github/artemeff/sql.png)][codeclimate]
[![Coverage Status](https://coveralls.io/repos/artemeff/sql/badge.png?branch=master)][coveralls]

SQL Generator for Ruby

---

### Usage

```ruby
require 'sql'

include SQL::NodeHelper

SQL::Generator.generate(
  s(:select,
    s(:fields, s(:string, 'test')),
    s(:id, 'users'),
    s(:where, s(:eq, s(:id, 'age'), s(:integer, 2)))))
```

---

### Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

---

### Copyright

Copyright &copy; 2013 Dan Kubb. See LICENSE for details.
