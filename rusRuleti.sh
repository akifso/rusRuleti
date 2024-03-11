#!/bin/bash
# rus ruleti

oyun() {

sayilar="1 2 3 4 5 6"
sayi=$(shuf -e -n 1 $sayilar)

   echo "dans başlasın."
   echo "kendine/havaya" 
read secim
case $secim in
  havaya)
         if [ $sayi -eq 1 ];
then
   echo "BAM!"
   echo "Daha ilk turdan mı?! Şansının en yüksek olduğu turdu. Harbiden şanslıymışsın. Al güle güle harca"

   exit 0

else
   echo "tık..."
   echo "Git burdan korkak."
   exit 0

fi
 ;;
  kendine)

         if [ $sayi -eq 1 ];
then
   echo "Tahtalı köyü boyladın"
   exit 0

else 
   echo "Güzel... Nasıldı? Kalbin nasıl atıyor?"
   tur2
fi
;;
esac
      }

tur2() { 

   echo "Hadi devam... kendine/havaya " 
read secim2
case $secim2 in 
havaya)
if [ $sayi -eq 2 ];
 then
   echo "BAM!"
   echo "Yaşamın şimdilik seninle kalıcak. Para burada."
exit 0
else 
   echo "tık..."
   echo "Biraz erken bitti..."
exit 0
fi
;;

kendine)
if [ $sayi -eq 2 ];
then
echo "Hayatını kaybettin"
exit 0

else 
echo "tık..."
echo "Bir an varsın bir an yoksun."
  tur3
fi
 ;;
   esac
}

tur3() {
echo""
echo "Heyecanlanmaya başladım kendine/havaya "
read secim3

case $secim3 in
havaya)
if [ $sayi -eq 3 ];
then
   echo "BAM!"
   echo "Tam da eğlenmeye başlamıştım. İyi oyundu. Para burada"
exit 0

else
   echo "tık..."
   echo "Çok da üzülemedim. Kendine iyi bak yine beklerim."
exit 0 
fi
;;

kendine)

if [ $sayi -eq 3 ]; then
   echo "hayatını kaybettin"
exit 0

else
   echo "tık..."
   echo "harika harika HARİKA!"
tur4
fi
;;
esac
}

tur4() {
   echo "kendine/havaya" 
read secim4

case $secim4 in
havaya)
if [ $sayi -eq 4 ]
then
   echo "BAM!"
   echo "Tebrik ederim kazandın!"
exit 0

else
   echo "tık..."
   echo "üzgünüm kaybettin ahbap"
exit 0
fi
;;

kendine)
if [ $sayi -eq 4 ]
then
echo "Hayatını kaybettin..."
exit 0

else
echo "tık..."
echo "Az daha bayılacaktım! Çok cesursun."

tur5

fi
;;
esac
}

tur5() {
echo ""
echo "Şimdi baktığında yüzde elli yüzde elli. Bu alınabilecek bir risk değil. Risk oranı çok fazla çünkü yüzde elli."
echo "kendine/havaya"
read secim5
case $secim5 in

havaya)

if [ $sayi -eq 5 ]
then
echo "BAM!"
echo "KALBİM YERİNDEN ÇIKIYORDU! HARİKA BİR GÖSTERİYDİ! Bu paranın her kuruşunu hakediyorsun"
exit 0

else
echo "tık..."
echo "HARİKAYDIN! ama şans seninle değilmiş."
exit 0
fi
;;

kendine)
if [ $sayi -eq 5 ]
then
echo "hayatını kaybettin"
exit 0

else
echo "tık..."
echo "Alınabilecek bir riskmiş. Tebrik ederim para senin."
exit 0
fi
;;
esac
}


echo "ölüm ve yaşam arasında dans etmeye emin misin? evet/hayır "
read cevap
case $cevap in
    hayır)
        echo "mantıklı ama sıkıcı bir seçim"
      exit 0
  ;;
    evet)
        echo "sadece bir kere havaya ateş edebilirsin"
        oyun
        ;;
esac
