## Brief description of bots

A bot is a module that has a `.find` method that accepts arguments `from`, `going_to`, and `departure_at`.
It gathers information from the site and returns them in the format below.

### A note about `.find` arguments

`from` and `going_to` will be **exactly** what you need for the site.
They can be a string, and array or what ever you need to fill out a form to submit a search.
For example, DeTouring takes an array with country and city for both `from` and `going_to`.
On the otherhand, DeMeinfernbus accepts integers.
`.find` can assume it will be given the proper arguments.

`departure_at` will be a Ruby DateTime object.

## Your task

We would like you to build a bot from scratch. When you are done, it should behave in the following way:

`DeAldiFernbus.find(<from>, <going_to>, <departure_at>)` should return results in this format:

```ruby
[
  {
    "departure_station"   => station_name,
    "departs_at"          => DateTime,
    "arrival_station"     => station_name,
    "arrives_at"          => DateTime,
    "duration_in_minutes" => number_of_minutes
    "service_agencies"    => ["DeAldiFernbus"],
    "changeovers"         => changeovers,
    "vehicle"             => "Bus",
    "extra"               => { },
    "fares"               => [ { "name"           => "economy",
                                 "price_in_cents" => price,
                                 "currency"       => "EUR",
                                 "comfort_class"  => 2,
                                 "booking_agency" => "DeAldiFernbus" },
                               #...
                             ]
  },
  #...
]
```

Your bot should start here: https://system04.derticketservice.de/channel/2/affiliate/univers/.
* Pick your gems, testing framework, http client, etc.

