# calculator

## README

* Rvm

## Steps

### Install Ruby

```
    rvm install 3.1.1
```


### Use

```
    rvm use 3.1.1
```

### Use below command for install Bundler
```
    gem install bundler
```

### Run below command ro installing Install dependencies

```
    bundle Install
```

### Use below command for Test cases run

```
    rspec spec
```

#### Example
You can use the `Calculator` class for adding values from string as follows:

  ```
    require 'lib/calculator'

    puts Calculator.add("1,2")
    => Output: 3

    puts Calculator.add("1\n2,3")
    => Output: 6

    puts Calculator.add("//;\n1;2")
    => Output: 6

    # If negative integer available in string it will raise a error

    puts Calculator.add("1,-2,3")
    => Output: Negative numbers not allowed: -2

    puts Calculator.add("1,-2, 3,-6")
    => Output: Negative numbers not allowed: -2, -6
  ```
