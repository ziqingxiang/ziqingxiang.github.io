(* ::Package:: *)

(* Proposition 4.3 *)
(* Estimate psi *)
PiUpperBound[x_]:=x/Log[x](1+12762/10000/Log[x]);
Reduce[s-5-4PiUpperBound[s]>0,s]
(* Estimate kappa *)
StirlingUpperBound[x_]:=(x+1/2)Log[x]-x+1;
StirlingLowerBound[x_]:=(x+1/2)Log[x]-x;
Reduce[2StirlingUpperBound[s/2+7/2]+2StirlingUpperBound[s]-2StirlingLowerBound[s+2]-2Log[s/2+1]+4Log[3/2]PiUpperBound[s]<(Log[s]-5/4)s,s]
(* Estimate kappa/psi *)
Reduce[((Log[s]-5/4)s)/(s-5-4PiUpperBound[s])-Log[s]<Log[2000000],s]

(* Section 2.1 *)
LCMBinomial[s_]:=If[s<=0,1,LCM@@Range[s]];
(* Equation 4.2 *)
F[s_,r_]:=F[s,r]=s!r!(s-r+1)!LCMBinomial[s-1]^2LCMBinomial[s-2]^2(s-r/2+1);
(* Equation 4.4 *)
Psi[s_,r_,b_]:=r-4-4PrimePi[b];
(* Equation 4.5 *)
Kappa[s_,r_,b_]:=2(Log[(2s-3r/2+2)!]+Log[s!]-Log[(2s-r+2)!]-Log[(s-r+1)!]-Log[s-r/2+1]+(s-r)Log[2])+2Sum[If[PrimeQ[p],IntegerExponent[F[s,r],p]Log[p],0],{p,Floor[b]+1,s}]+4Log[3/2]PrimePi[b];
(* Theorem 4.2 *)
UpperBound[s_,b_]:=Module[{r,kappa,psi},
r=2Floor[s/2];
kappa=Kappa[s,r,b];
psi=Psi[s,r,b];
Return[If[psi<=0,Infinity,N[Exp[kappa/psi]]]];
];
(* Min upper bound over all primes (or 1) b <= s *)
UpperBound[s_]:=Module[{res,bs},
bs=Select[Range[s],#==1||PrimeQ[#]&];
res=Table[{s,b,Simplify[UpperBound[s,b]]},{b,bs}];
res=SortBy[res,#[[3]]&,Less];
Return[res[[1]]];
];

(* Proof of Theorem 1.1 Case 3 *)
ParallelTable[UpperBound[i],{i,10,287}]//TableForm
Print["Max upper bound for 10 <= s <= 287: ",Max[Transpose[%][[3]]]]

(* Proof of Theorem 1.1 Case 2 *)
ParallelTable[{i,Floor[i/3],UpperBound[i,i/3]},{i,288,626}]//TableForm
Print["Max upper bound for 288 <= s <= 626: ",Max[Transpose[%][[3]]]]
