module Enumerable

    def my_each
        i = 0
        while i < self.size
            yield(self[i])
            i += 1
        end
        self    
    end

    def my_each_with_index
        i = 0
        while i < self.size
            yield(self[i], i)
            i += 1
        end
        self
    end

    def my_select
        new_arry = []
        self.my_each do |a|
            new_arry.push(a) if (yield a)
        end
        new_arry
    end

    def my_all?
        pass_count = 0
        self.my_each { |a| pass_count += 1 if (yield a) }
        pass_count == self.size? true : false
    end

     def my_any?
        pass_count = 0
        self.my_each { |a| pass_count += 1 if (yield a) }
        pass_count > 0 ? true : false
    end

    def my_none?
        result = true
        pass_count = 0
        self.my_each do |a|
            if (yield a)
                result = false
                break
            end
        end
        result
    end
    
    def my_count
        count = 0
        self.my_each do {|a| count += 1 if (yield a)}
        count
    end
    
  def my_map
    new_arr = []
    self.my_each do |a|
      new_element= (yield a)
      new_arr << new_element
    end
    new_arr
  end      

    def my_inject(num = nil)
    if num.nil?
      result = self[0]
      index = 1
      while index < self.length
        result = (yield result, self[index])
        index += 1
      end
      result
    else
      result = num
      self.my_each { |a| result = (yield result, a) }
      result
    end
  end

   def my_map_proc (&code_block)
    new_arr=[]
    self.my_each do |a|
      new_element= (code_block.call a)
      new_arr << new_element
    end
    new_arr
  end

  def my_map_proc_block (&code_block)
    new_arr = []
    self.my_each do |a|
      new_element = code_block ? (code_block.call a) : (yield a)
      new_arr << new_element
    end
    new_arr
  end

end


    

        
        
        
      
       
    
    


