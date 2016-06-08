#!/usr/bin/perl

use Cwd;

use Encode;


print "begin to install apks\n";

$root_dir = "apps";


my $path = getcwd;

print "Entry dir of $path\n";



@files = glob "$root_dir/*.apk";

$adb_cmd = "adb install -r temp.apk ";





for $file (@files){
    

     print "copy $file to tmep.apk\n";
     
	 $file =~ s/\//\\/;	

	 $copy_cmd = "copy /y \"$file\" temp.apk";

     print "============================================================\n";
     print $copy_cmd, "\n";

	 $result = `$copy_cmd`;

	 print "Copy result: $result";
	
    
 	 print "$adb_cmd \n";
     
	 $result = system($adb_cmd);
	
     print "install result: $result\n";
	


}

close CURRDIR;

'rm temp.apk';





