defmodule Practice.Factor do
  def factor(x)  do
    list = []
    prime_factor(2,x,list)
  end
  def prime_factor(factor,num,list) do
    if num == 1  do
       list
    else
        if rem(num,factor) == 0  do
                list = list ++ [factor]
                prime_factor(factor, div(num,factor), list)
        else
                prime_factor(factor + 1, num, list)
        end
    end   
  end    
end  
