
#IMAGE: Get the base image for Liberty
FROM websphere-liberty:webProfile7

#BINARIES: Add in all necessary application binaries
COPY ./server.xml /config
COPY ./binary/application/* /config/dropins


#FEATURES: Install any features that are required
RUN /opt/ibm/wlp/bin/installUtility install  --acceptLicense \
	jsp-2.3 \
	ejbLite-3.2 \
	servlet-3.1 \
	beanValidation-1.1 \
	jsf-2.2 \
	jndi-1.0 \
	jdbc-4.1 \
	wasJmsServer-1.0 \
	javaMail-1.5 \
	el-3.0 \
	wmqJmsClient-2.0 \
	mdb-3.2 \
	cdi-1.2 \
	jpa-2.1 \
	wasJmsClient-2.0; exit 0

