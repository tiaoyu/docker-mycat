java -Xms256M -Xmx1G -DMYCAT_HOME=$1 -cp "$1/conf:$1/lib/*" io.mycat.config.loader.zkprocess.xmltozk.XmltoZkMain
#sh /app/mycat/bin/init_zk_data.sh
sleep 5
./mycat $2
