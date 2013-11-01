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

function newfile {
	FILE=$1
	if [ ! -f "tmp/$(basneame $FILE)" ];
	then
		touch tmp/$(basename $FILE)
	else
		truncate --size 0 tmp/$(basename $FILE)
	fi
}
