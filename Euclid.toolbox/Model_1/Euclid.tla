------------------------------- MODULE Euclid -------------------------------
\* Based on Chaper 4 of the TLA+ Hyperbook
EXTENDS Naturals  \* Positive Integers

(*
Divides: is an operator that takes two parameters (p,n) 
         and is TRUE iff (if-and-only-if) p divides EXACTLY into n
*)
Divides(p,n) == \E q \in Nat : n = q*p

(*
We want to create a set that contains the divisors of a number:
   i.e. All the numbers for which Divides is TRUE
*)
DivisorsOf(n) == {p \in Nat : Divides(p,n)}

(*
We want to be able to find the maximum value of some set.

*)
MaxOf(S) == CHOOSE i \in S : \A j \in S : i >= j

(*
The Greatest Common Divisor (GCD) is the largest value that 
EXACLY divides into two numbers
*)
GCD(m,n) == \* GCD of m and n
        MaxOf( \* lagest value
            DivisorsOf(m) \intersect DivisorsOf(n) \* set of common divisors
            )
--------
(*
Is a number a prime number?
A prime number only has itself and 1 as its divisors
*)
IsPrime(n) == DivisorsOf(n) = {1,n}

(*
Set of prime numbers
*)
Primes == { n \in Nat : IsPrime(n)}

=============================================================================
\* Modification History
\* Last modified Tue Feb 02 15:20:51 GMT 2021 by alunm
\* Created Tue Feb 02 14:47:33 GMT 2021 by alunm
