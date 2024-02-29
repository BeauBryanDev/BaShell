#!/bin/bash 

#Type of Operators .
#BeauBryanDev 

#first Number = 10
##second Number = 20

echo " Arithmetrics Operators "
echo " A = $firstnumber && B =$secondNumber "
echo " Provide a Random Number as A "
read A
echo " Provide another Number as B "
read B 
echo " Add [A+B] ==: " $(( A + B ))
echo " Subs [A-B] ==: " $(( A - B ))
echo " Prod [A*B] ==: " $((A * B ))
echo " Div [A/B] ==: " $(( A / B ))
echo " Rem [A//B] ==: " $(( A % B ))

echo -e "\n Relational Operators " 

echo " A > B  as " $(( A > B))
echo " A < B  as " $(( A < B))
echo " A >= B  as " $(( A >= B))
echo " A <= B  as " $(( A <= B))
echo " A == B  as " $(( A == B))
echo " A != B  as " $(( A != B))

echo -e "\nAssignment Operators "
echo " A += B " $(( A += B))
echo " A -= B " $(( A -= B))
echo " A *= B " $(( A *= B))
echo " A /= B " $(( A /= B))
echo " A %= B " $(( A %= B))

echo -e "\n Power Operator "
echo " A^B as : " $(( A ** B ))


