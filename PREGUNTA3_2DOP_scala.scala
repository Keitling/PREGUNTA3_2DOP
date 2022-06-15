def fibo( n : Int) : Int = n match {
   case 0 | 1 => n
   case _ => fibo( n-1 ) + fibo( n-2 )
}
 
println(fibo (10))
