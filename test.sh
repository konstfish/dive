echo "[>] Set Up Widget Order? (y/n): \c"
read order
if [ $order == "y" ]
  then
    ./widget-arranger
  else
    echo "[!] you can set this up later by running ./widget-arranger"
fi
