
#!/bin/bash
initial_wd=`pwd`

if [ -n "$*" ]; then 
	touch .r 
	echo -e "#!/bin/bash\n" > .r
	echo "$*" >> .r
	chmod +x .r 
fi

bash .r
