---- MODULE MC ----
EXTENDS Euclid, TLC

\* CONSTANT definition @modelParameterDefinitions:0
def_ov_161227941072116000 ==
0 .. 100
----
\* Constant expression definition @modelExpressionEval
const_expr_161227941072117000 == 
Primes
----

\* Constant expression ASSUME statement @modelExpressionEval
ASSUME PrintT(<<"$!@$!@$!@$!@$!",const_expr_161227941072117000>>)
----

=============================================================================
\* Modification History
\* Created Tue Feb 02 15:23:30 GMT 2021 by alunm
