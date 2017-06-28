def bubble_sort(array)

    (array.size - 1).times do |cycles|

        (array.size - cycles - 1).times do |i|

            array[i], array[i+1] = array[i+1],array[i] if (array[i] > array[i+1])
        end
    end
    
    #return array
    print array
   
end

   
 

def bubble_sort_by(array)
    if (!block_given?)
        return array
    end


    (array.size - 1).times do |cycles|

        (array.size - cycles - 1).times do |i|

            array[i], array[i+1] = array[i+1],array[i] if (yield(array[i], array[i+1]))
        end
    end

    #return array
    print array
end

bubble_sort_by([2,4657,1,4,987,2,16,4]) {|x,y|x < y}  

    
