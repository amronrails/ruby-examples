# ruby has 2 ways of equality loose and value equality
x = 1
x == 1 #true
x == 1.0 #true
x == "1" #false

x.eql?(1) #true
x.eql?(1.0) #false

#equal? is not an alias of eql?

x = "Amr"
x == "Amr" #true
x.eql?("Amr") #true
x.equal?("Amr") #false -- it checks for exact same object like the second is pointing to the first
# "Amr".object_id != x.object_id -- that's why it is false

#with rspec
expect(x).to eq(1) #similar to x==1
expect(x).to eql(1) # similar to x.eql?(1)
expect(x).to equal(1) #similar to x.equal?(1)