fibonacciHesapla() {

  int fib(int n) { 
    if (n <= 2) { //n değeri 2 den küçükse yani 0 1 2 ise zaten fibonaccide kendilerine tekabül ediyor o yüzden direkt n değeri 0 1 2 ise direkt olarak kendisi döndürülüyor.
      return n;
    } else { 
      /*
      eğer 0 1 2 değilse gelen "n" değeri, n değerinin kendinden 
      bir önceki ve iki önceki sayıyı bulmak için n-1 ve n-2 diyerek 
      gelen sayıdan kendinden 2 önceki eleman bulunuyor e tabi burdaki 
      fib methodu int değer döndüğü için bizim de bu dönen değeri alıp 
      kendinden 1 ve 2 önceki sayıyı bulmak için fib(n-1)+fib(n-2) olarak kullanıyoruz.
      */
      return fib(n - 1) + fib(n - 2);
    }
  }

  /* Aslında fib methodu şuanda zaten fibonacci sayılarını bulmakta, aşağıdaki döngü ile de fibonaccinin içindeki çift dönen sayıları almak için klasik döngü */

  int n=0;
  int sum=0; 
 
  while (fib(n) < 4000000) {
    if(sum>=4000000){ 
      break;
    }else if(fib(n)%2==0){ 
      sum+=fib(n);
    }  
  n++;
  }

print("sum : $sum");
}
