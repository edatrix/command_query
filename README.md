<<<<<<< HEAD
# Fundamentals

Exercises to grasp and practice fundamental concepts in Ruby.

## Hashes

Hashes have keys and values, and we can look up values
easily if we have the key. (The inverse is not necessarily true.).

## Word

Strings are everywhere. Let's munge them a bit.

## Phrase

More string stuff.

## Anagram

## Scrabble

## Notes

### Arrays vs Hashes

```ruby
def test_loop_in_array
  people = ["Alice", "Bob", "Charlie"]

  # wants one block parameter
  people.each do |person|
    person.inspect
  end
end
```

```ruby
def test_loop_in_hash
  people = {"Annie" => 39, "Jim" => 10, "Barney" => 12}

  # wants two block parameters
  people.each do |name, age|
    "#{name} is #{age} years old"
  end
end
```

=======
# Command/Query Separation

## Queries

Sometimes we want to get information about something. Is it Wednesday? How many people have signed up to attend the event? Which channel is your favorite? Asking the question doesn't change anything. It's either Wednesday or it isn't, and asking the question doesn't make it Thursday.

## Commands

Other times, we do something to the world, and something changes. We throw something in the trash. Now the trash can has more stuff in it. We buy a drink. Now we have less money.

## One or the Other

In many software systems we try to keep a clear separation between obtaining data and changing things. When we're asking about something, we don't change things, and when we change things, we don't get information back. If, when we've told the system to change, we want to know whether or not anything actually happened, or what the new situation is, we'll have to go ask.

These exercises focus on these two types of operations.

## Exercises

- `leather_chair_test.rb`
- `pills_test.rb`
- `floor_test.rb`
- `milk_bottle_test.rb`
- `person_test.rb`
- `door_test.rb`
- `teeth_test.rb`
- `music_test.rb`
- `drops_test.rb`
- `light_test.rb`
- `baby_test.rb`
- `kid_test.rb`
- `beers_test.rb`
- `teenager_test.rb`
- `adult_test.rb`
- `names_test.rb`
- `dog_test.rb`
- `water_test.rb`
- `appointments_test.rb`
- `yak_test.rb`
- `student_test.rb`
- `money_test.rb`
- `time_test.rb`
- `children_test.rb`
- `catalogue_test.rb`

## Go make up more

... and submit pull requests
>>>>>>> ebfe1214d1d209b2c6523348ce44bc1eb2a71165
