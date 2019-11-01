# ASSESSMENT 4: INTRO TO RUBY
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.   

1. In what ways are JavaScript and Ruby similar? In what ways are they different?

  Your answer:
    They are similar in terms of being programming languages with having similar behaviors of being able to loop through and array or having an if/else statements. But they differ in syntax and in terms of the purpose of what the language is being used for. For example, Javascript can be used for font-end development with React while Ruby is can be used through back-end development with Rails.

  Researched answer:
    JavaScript is an object-oriented scripting language that allows you to create dynamic HTML pages with interactive effects within a webpage. JavaScript allows you to process and maintain data within the browser. It runs on web-browser only and it is an interpreted programming language. Ruby is an open-source programming language, object-oriented language with a focus on simplicity, portability, extensibility, and productivity. As it is open-source, we can free to modify, edit according to our needs and use.

    Source: https://www.educba.com/javascript-vs-ruby/

2. What is a hash?

  Your answer: 
    A hash is a data-type in ruby where you use key/value pairs to hold different types as data.

  Researched answer:
    A Hash is a dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.

    Hashes enumerate their values in the order that the corresponding keys were inserted.

    Source: https://docs.ruby-lang.org/en/2.0.0/Hash.html

3. What is the testing framework used in Ruby? Describe the process of setting up the testing environment.

  Your answer:
    I believe the testing framework is done through rspec. Process of setting up the testing environment is rather simple as you have a test file and the ruby file and you use the test file to check if the tests you go green. You use the Red, Green, Refactor method.

  Researched answer:
    rspec is a meta-gem, which depends on the rspec-core, rspec-expectations and rspec-mocks gems. Each of these can be installed separately and loaded in isolation using require. Among other benefits, this allows you to use rspec-expectations, for example, in Test::Unit::TestCase if you happen to prefer that style.

    Conversely, if you like RSpec's approach to declaring example groups and examples (describe and it) but prefer Test::Unit assertions and mocha, rr or flexmock for mocking, you'll be able to do that without having to install or load the components of RSpec that you're not using.

    Source: https://github.com/rspec/rspec


4. Name three possible relationships between objects?

  Your answer:
    I totally blanked on this answer.

  Researched answer:
    One of the advantages of Object-Oriented programming language is code reuse. This reusability is possible due to the relationship b/w the classes. Object oriented programming generally support 4 types of relationships that are: inheritance , association, composition and aggregation. All these relationship is based on "is a" relationship, "has-a" relationship and "part-of" relationship.

    Source: https://www.linkedin.com/pulse/types-relationships-object-oriented-programming-oop-sarah-el-dawody/


5. What is an instance variable? How is it different from other variables in Ruby?

  Your answer:
    An instance variable is something that comes from an object class that has been instanciated. You can't access it normal as you do with other variables as you have to call that instance class object to get the information from it.

  Researched answer:
    A local variable that is defined inside one method, for example, cannot be accessed by another method. In order to get around this limitation, we can use instance variables inside our Ruby classes.

    An instance variable is a variable that is accessible in any instance method in a particular instance of a class.

    Source: https://learn.co/lessons/ruby-instance-variables


6. Ruby has a great community and tons of free resources to help you learn. [Here](https://www.ruby-lang.org/en/documentation/)is a list of great resources. Below are a few popular ones:
- [Interactive Ruby Tutorial](http://tryruby.org/levels/1/challenges/0)
- [Why's (poigniant) Guide to Ruby](http://poignant.guide/book/chapter-1.html): comics, anecdotes, and microscopic canaries
- [Ruby in 20 Min](https://www.ruby-lang.org/en/documentation/quickstart/)
- [Ruby Style Guide](https://rubystyle.guide/)

Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Ruby:

1) Liskov 
     When designing class hierarchies make sure that they conform to the Liskov Substitution Principle. 
    Substitutability is a principle in object-oriented programming stating that, in a computer program, if S is a subtype of T, then objects of type T may be replaced with objects of type S (i.e. an object of type T may be substituted with any object of a subtype S) without altering any of the desirable properties of the program (correctness, task performed, etc.). More formally, the Liskov substitution principle (LSP) is a particular definition of a subtyping relation, called (strong) behavioral subtyping, that was initially introduced by Barbara Liskov in a 1987 conference keynote address titled Data abstraction and hierarchy. It is a semantic rather than merely syntactic relation, because it intends to guarantee semantic interoperability of types in a hierarchy, object types in particular.

    Source: https://rubystyle.guide/#liskov
    Source: https://en.wikipedia.org/wiki/Liskov_substitution_principle

2) Parallel Assignment
    Avoid the use of parallel assignment for defining variables. Parallel assignment is allowed when it is the return of a method call, used with the splat operator, or when used to swap variable assignment. Parallel assignment is less readable than separate assignment.

    Source: https://rubystyle.guide/#parallel-assignment

3) SOLID design
    Try to make your classes as SOLID as possible.

    In object-oriented computer programming, SOLID is a mnemonic acronym for five design principles intended to make software designs more understandable, flexible and maintainable. It is not related to the GRASP software design principles. The principles are a subset of many principles promoted by American software engineer and instructor Robert C. Martin.[1][2][3] Though they apply to any object-oriented design, the SOLID principles can also form a core philosophy for methodologies such as agile development or adaptive software development.[3] The theory of SOLID principles was introduced by Martin in his 2000 paper Design Principles and Design Patterns,[2][4] although the SOLID acronym was introduced later by Michael Feathers.[5]

    SOLID - Principles
      Single responsibility
      Open–closed
      Liskov substitution
      Interface segregation
      Dependency inversion

    Source: https://rubystyle.guide/#solid-design
    Source: https://en.wikipedia.org/wiki/SOLID

7. Stretch: What are blocks, procs, and lambdas?

  Your answer:
    All I can recall is that you can change blocks into procs and procs back into blocks by using the ampersand.

  Researched answer:
    Blocks
      In Ruby, blocks are snippets of code that can be created to be executed later. Blocks are passed to methods that yield them within the do and end keywords. One of the many examples is the #each method, which loops over enumerable objects.

    Procs
      A “proc” is an instance of the Proc class, which holds a code block to be executed, and can be stored in a variable. To create a proc, you call Proc.new and pass it a block.

    Lambdas
      Lambdas are essentially procs with some distinguishing factors. They are more like “regular” methods in two ways: they enforce the number of arguments passed when they’re called and they use “normal” returns.

    In Summary:
      Blocks are used extensively in Ruby for passing bits of code to functions. By using the yield keyword, a block can be implicitly passed without having to convert it to a proc.

      When using parameters prefixed with ampersands, passing a block to a method results in a proc in the method’s context. Procs behave like blocks, but they can be stored in a variable.

      Lambdas are procs that behave like methods, meaning they enforce arity and return as methods instead of in their parent scope.

  Source: https://blog.appsignal.com/2018/09/04/ruby-magic-closures-in-ruby-blocks-procs-and-lambdas.html

    




    
