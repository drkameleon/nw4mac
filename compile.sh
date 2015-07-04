txtpur='\x1B[0;35m' # Purple
txtcyn='\x1B[0;36m' # Cyan
txtgra='\x1B[0;37m' # Gray
txtwht='\x1B[0;38m' # White
txtrst='\x1B[0m'    # Text Reset

echo -e "${txtwht}"
echo -e "${txtcyn}************************************************${txtwht}"
echo -e "${txtcyn}*${txtwht} NW4Mac Builder"
echo -e "${txtcyn}*${txtwht} By Dr.Kameleon"
echo -e "${txtcyn}*${txtwht}"
echo -e "${txtcyn}*${txtwht} Copyright (c)2015"
echo -e "${txtcyn}************************************************${txtwht}"
echo -e ""

echo -e "${txtpur}1.${txtwht} Cleaning up..."
rm -rf ./build/*

echo -e "${txtpur}2.${txtwht} Creating backup..."
mkdir ./backup
cp -rf ./app/* ./backup

echo -e "${txtpur}3.${txtwht} Compiling styles..."
for f in `find ./backup -type f -name "*.less"`
do
	echo -e "${txtgra}   :: $f"
	lessc $f ${f/.less/.css}
	rm $f
done

echo -e "${txtpur}4.${txtwht} Compiling sources..."
for f in `find ./backup -type f -name "*.coffee"`
do
	echo -e "${txtgra}   :: $f"
	coffee --bare --no-header --compile $f
	rm $f
done

echo -e "${txtpur}5.${txtwht} Creating build..."
cp -rf ./bin/nwjs.app ./build
mkdir ./build/nwjs.app/Contents/Resources/app.nw

echo -e "${txtpur}6.${txtwht} Copying files..."
cp -rf ./backup/* ./build/nwjs.app/Contents/Resources/app.nw

echo -e "${txtpur}7.${txtwht} Cleaning up..."
rm -rf ./backup

echo -e "${txtpur}8.${txtwht} Done ;-)"

echo -e "${txtrst}"