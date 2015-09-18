Cowsay
======

This is an elixir cowsay implementation built as a learning exercise for elixir.

To run the tests:
```
mix test
```

To make a cow say something
```
iex -S mix

Cowsay.say("this is what we do")
# returns a string with a cow

Cowsay.print("hello")

---------
| hello |
---------
   \   ^__^
     \ (oo)\_______
       (__)\       )\/\
           ||----W||
           ||     ||

```

There are also other cows available in the Cowsay.Cows module. Take a look!
