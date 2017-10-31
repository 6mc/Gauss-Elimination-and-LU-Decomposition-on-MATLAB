octave:1> B=[2; 3; 5;] 
B =

   2
   3
   5

octave:1> A=[2 2 1 2;4 3 1 3;2 2 3 5] % Sonucları da matrisin içine katarak 3x4 lük bir matris oluşturdum
A =

   2   2   1   2
   4   3   1   3
   2   2   3   5

octave:3> A(3,:)=A(3,:)-A(1,:) %sırasıyla uygun matrisi elde etmek için satır satır işlem yapmaya başladım
A =

   2   2   1   2
   4   3   1   3
   0   0   2   3

octave:4> A(2,:)=A(2,:)-2*A(1,:)
A =

   2   2   1   2
   0  -1  -1  -1
   0   0   2   3

octave:5> A(3,:)=A(3,:)/2
A =

   2.00000   2.00000   1.00000   2.00000
   0.00000  -1.00000  -1.00000  -1.00000
   0.00000   0.00000   1.00000   1.50000

octave:6> A(2,:)=A(2,:)*-1
A =

   2.00000   2.00000   1.00000   2.00000
  -0.00000   1.00000   1.00000   1.00000
   0.00000   0.00000   1.00000   1.50000

octave:7> A(1,:)=A(1,:)/2   %sonunda matrisimiz istediğimiz hale geldi dolayısı ile çözme adımına geçiyoruz
A =

   1.00000   1.00000   0.50000   1.00000
  -0.00000   1.00000   1.00000   1.00000
   0.00000   0.00000   1.00000   1.50000

octave:8> X(3,1)=A(3,4)/A(3,3) %X3 değerimiz
X =

   0.00000
   0.00000
   1.50000

octave:9> X(2,1)=A(2,4)-X(3,1)*A(2,3) %X2 değerimiz
X =

   0.00000
  -0.50000
   1.50000

octave:10> X(1,1)=A(1,4)-X(3,1)*A(1,3)-X(2,1)*A(1,2) % X1 değerimiz
X =

   0.75000
  -0.50000
   1.50000