
If we have an array of arel conditions we can use

+ array.inject(:or) to combine them with OR logic. 
+ array.inject(:and) to combine them with AND logic. 
Model.where(foo: :bar).where_clause seems to result in an array of arel conditions? 
Model.where(foo: :bar).arel.constraints may be more useful

arel_node.not to invert

3.3.3 :014 > Category.arel_table[:id].between(2...4).to_sql
 => "\"categories\".\"id\" >= 2 AND \"categories\".\"id\" < 4" 
3.3.3 :015 > Category.arel_table[:id].between(2..4).to_sql
 => "\"categories\".\"id\" BETWEEN 2 AND 4" 
3.3.3 :016 > Category.arel_table[:id].between(2,4).to_sql
(irb):16:in `<main>': wrong number of arguments (given 2, expected 1) (ArgumentError)
3.3.3 :017 > Category.arel_table[:id].between(2..4).to_sql
 => "\"categories\".\"id\" BETWEEN 2 AND 4" 
3.3.3 :018 > Category.arel_table[:id].between([2,4]).to_sql
(irb):18:in `<main>': undefined method `begin' for an instance of Array (NoMethodError)

      if unboundable?(other.begin) == 1 || unboundable?(other.end) == -1
                           ^^^^^^
3.3.3 :019 > Category.where(id: 2..4).to_sql
 => "SELECT \"categories\".* FROM \"categories\" WHERE \"categories\".\"id\" BETWEEN 2 AND 4" 
3.3.3 :020 > Category.where(id: (2..10).to_a).to_sql
 => "SELECT \"categories\".* FROM \"categories\" WHERE \"categories\".\"id\" IN (2, 3, 4, 5, 6, 7, 8, 9, 10)" 
3.3.3 :021 > 

https://www.rubydoc.info/docs/rails/Arel/Predications
.gt
.lt
.gteq
.lteq
.in(<array>)
.between(<range>)
.matches(<pattern>)
.matches_regexp(<regexp>)


