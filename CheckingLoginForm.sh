read -p "Login: " login
read -sp "Password: " password
echo 
if [ $password == "secret" ]
then 
	echo "ok"
else
	echo "wrong password"
fi