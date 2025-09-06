echo Enter username
read user
who > list
if grep \b$user\b list 
then
echo user is logged in  
else 
echo user is not logged in
fi