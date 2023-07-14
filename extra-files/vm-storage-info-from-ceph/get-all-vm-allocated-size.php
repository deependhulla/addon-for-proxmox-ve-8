<?php

$cephpoolname='smartcephstorage';

$linex="\n------------------------------------------------\n";

$cmdx="rbd  --format=json -p ".$cephpoolname." ls";
$cmdout=`$cmdx`;
$cmdout=str_replace("\n","",$cmdout);
$cmdout=str_replace("\r","",$cmdout);
$cmdout=str_replace("\t","",$cmdout);
$cmdout=str_replace("\0","",$cmdout);
$listx=$cmdout;
#print $linex.$listx.$linex;
$json_list = json_decode($listx, true);
$imagescount=0;
$imagesize=0;
#print_r($json_list);

for($i=0;$i<sizeof($json_list);$i++)
{
#print "\n -->$i ".$json_list[$i];
$cmdy="rbd  info --format=json ".$cephpoolname."/".$json_list[$i]."";
$cmdout=`$cmdy`;
$cmdout=str_replace("\n","",$cmdout);
$cmdout=str_replace("\r","",$cmdout);
$cmdout=str_replace("\t","",$cmdout);
$cmdout=str_replace("\0","",$cmdout);
$listy=$cmdout;
#print $linex.$listy.$linex;
$json_rbd = json_decode($listy, true);
#print "Size : ".$json_rbd['size'];
#print "\n $cmdy \n";
$imagescount++;
$imagesize = $imagesize + $json_rbd['size'];
}
print "\n";

print "Total Virtual-Drive :".$imagescount;
print "\n";
print "Total Allocated Virtual-Drive Size (Bytes):".$imagesize;
$imagesizetb = $imagesize /(1024*1024*1024*1024);
$imagesizetb2 = round($imagesize /(1024*1024*1024*1024),2);
print "\n";
print "Total Allocated Virtual-Drive Size (TB):".$imagesizetb;
print "\n";
print "Total Allocated Virtual-Drive Size (TB):".$imagesizetb2;
print "\n";
?>

