from	node:10

#	copy all files from git repository
#
COPY	.	/tmp

#	set working folder
#
WORKDIR	/tmp

#	install node_modules
#
RUN	npm install

#	expose UI port -- AWS security group alreayd allowing this port access to the world!
#
EXPOSE	3000

#	setup environment variable
#
ENV SECRET_WORD=TwelveFactor

#	now run the application
#
CMD	["npm", "start"]
