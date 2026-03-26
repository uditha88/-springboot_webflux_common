echo "########## Reset webflux common ##########"
git reset --hard HEAD;

echo "########## Reset webflux ##########";
cd ../webflux
git reset --hard HEAD;


echo "########## Reset webflux_2 ##########";
cd ../webflux_2
git reset --hard HEAD;

read -p "Press enter to exit"