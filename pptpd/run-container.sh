CONTAINER_ID=$(docker run --name pptpd --net=host -d -t --privileged -v /root/chap-secrets:/etc/ppp/chap-secrets --restart=always -p 1723:1723 lovefly1983/pptp)
if [ $? -ne 0 ]; then
  echo Run container failed, permission is required?
  exit 1
fi

echo PPTPd container started.
