/*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*/

/*
prime factor = asal çarpan
Ör: 15 in prime factor ü 3 ve 5 tir. 3*5=15 ve 3 ile 5 asaldır.
*/

enBuyukAsalCarpan() {
  int hedef =  5143;
  int sayi = 6;
  List<int> asalSayiListesi = [2,3,5];

  asalMi(int sayi) {
  if (sayi % 2 == 0 || sayi % 3 == 0 || sayi%5==0) { 
    } else { 
      asalSayiListesi.add(sayi); 
    }
  }

  while (sayi < hedef) {
    asalMi(sayi);
    sayi++;
  }

  print(asalSayiListesi);
}
