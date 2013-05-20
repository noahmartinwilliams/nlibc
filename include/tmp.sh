if [ ! -d 'tmp' ];
then
	mkdir tmp
fi

function newdir {
	if [ ! -d "./tmp/$1" ];
	then
		mkdir ./tmp/$1
	fi
}
