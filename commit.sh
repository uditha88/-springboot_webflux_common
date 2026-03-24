git add .; 
git commit -m "Changes webflux common  add jaeger dist. tracing"; 
git push -u origin HEAD;

cd ../webflux
git add .; 
git commit -m "Changes webflux add jaeger dist. tracing"; 
git push -u origin HEAD;

cd ../webflux_2
git add .; 
git commit -m "Changes webflux_2 add jaeger dist. tracing"; 
git push -u origin HEAD;


read -p "Press enter to exit"