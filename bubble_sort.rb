def bubble_sort(bubble_array)
    sorting = 0
    shift = true
    runs = 1


        while sorting < bubble_array.size.to_i - 1 && runs < bubble_array.size - 1
        
            if bubble_array[sorting] > bubble_array[sorting + 1]
                bubble_array[sorting + 1], bubble_array[sorting] = bubble_array[sorting], bubble_array[sorting +1]   
                sorting += 1
                
            else
                sorting += 1
            end

            if sorting >= (bubble_array.size.to_i - 1)
                sorting = 0 
                runs += 1         
            end
        end

 print bubble_array      
end

puts bubble_sort([4,3,80,1,85,104,17,32,164587,7,36,4785,2,9147])
