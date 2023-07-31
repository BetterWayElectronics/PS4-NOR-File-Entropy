
	print "\nCalculating Individual File Entropy...\n"; 
	print F "<br><b>Individual File Entropy:</b><br>"; 
		
	my $TITLE = "Segment 0 Header";
	my $NAME = "Segment_0_Header";
	my $OFFSET_START = 0x00000000;
	my $OFFSET_LENGTH = 4096;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "Segment 0 Active Slot";
	my $NAME = "Segment_0_Active_Slot";
	my $OFFSET_START = 0x00001000;
	my $OFFSET_LENGTH = 4096;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result eq "0.00") {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "Segment 0 MBR1 (for sflash0s1.cryptx32)";
	my $NAME = "Segment_0_MBR1";
	my $OFFSET_START = 0x00002000;
	my $OFFSET_LENGTH = 4096;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++  
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "Segment 0 MBR2 (for sflash0s1.cryptx32b)";
	my $NAME = "Segment_0_MBR2";
	my $OFFSET_START = 0x00003000;
	my $OFFSET_LENGTH = 4096;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s0x32 (emc_ipl)";
	my $NAME = "sflash0s0x32";
	my $OFFSET_START = 0x00004000;
	my $OFFSET_LENGTH = 393216;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s0x32b (emc_ipl)";
	my $NAME = "sflash0s0x32b";
	my $OFFSET_START = 0x00064000;
	my $OFFSET_LENGTH = 393216;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s0x33 (eap_kbl)";
	my $NAME = "sflash0s0x33";
	my $OFFSET_START = 0x000C4000;
	my $OFFSET_LENGTH = 524288;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s0x38 (torus2_fw)";
	my $NAME = "sflash0s0x38";
	my $OFFSET_START = 0x00144000;
	my $OFFSET_LENGTH = 524288;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s0x34 (nvs)";
	my $NAME = "sflash0s0x34";
	my $OFFSET_START = 0x001C4000;
	my $OFFSET_LENGTH = 49152;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################
	
	my $TITLE = "sflash0s0x0 (blank)";
	my $NAME = "sflash0s0x0";
	my $OFFSET_START = 0x001D0000;
	my $OFFSET_LENGTH = 196608;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result eq "0.00") {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "Segment 1 Header (XTS encrypted)";
	my $NAME = "Segment_1_Header";
	my $OFFSET_START = 0x00200000;
	my $OFFSET_LENGTH = 4096;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "Segment 1 Active Slot (XTS encrypted)";
	my $NAME = "Segment_1_Active_Slot";
	my $OFFSET_START = 0x00201000;
	my $OFFSET_LENGTH = 4096;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "Segment 1 MBR1 (for sflash0s1.cryptx2) (XTS encrypted)";
	my $NAME = "Segment_1_MBR1";
	my $OFFSET_START = 0x00202000;
	my $OFFSET_LENGTH = 4096;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "Segment 1 MBR2 (for sflash0s1.cryptx2b) (XTS encrypted)";
	my $NAME = "Segment_1_MBR2";
	my $OFFSET_START = 0x00203000;
	my $OFFSET_LENGTH = 4096;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s1.cryptx2 (sam_ipl)";
	my $NAME = "sflash0s1_cryptx2";
	my $OFFSET_START = 0x00204000;
	my $OFFSET_LENGTH = 253952;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s1.cryptx2b (sam_ipl)";
	my $NAME = "sflash0s1_cryptx2b";
	my $OFFSET_START = 0x00242000;
	my $OFFSET_LENGTH = 253952;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s1.cryptx1 (idata)";
	my $NAME = "sflash0s1_cryptx1";
	my $OFFSET_START = 0x00280000;
	my $OFFSET_LENGTH = 524288;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s1.cryptx39 (bd_hrl)";
	my $NAME = "sflash0s1_cryptx39";
	my $OFFSET_START = 0x00300000;
	my $OFFSET_LENGTH = 524288;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s1.cryptx6 (Virtual TRM)";
	my $NAME = "sflash0s1_cryptx6";
	my $OFFSET_START = 0x00380000;
	my $OFFSET_LENGTH = 262144;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################
	
	my $TITLE = "sflash0s1.cryptx3 (secure kernel, secure modules)";
	my $NAME = "sflash0s1_cryptx3";
	my $OFFSET_START = 0x003C0000;
	my $OFFSET_LENGTH = 13369344;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s1.cryptx3b (secure kernel, secure modules)";
	my $NAME = "sflash0s1_cryptx3b";
	my $OFFSET_START = 0x01080000;
	my $OFFSET_LENGTH = 13369344;
	my $ENTROPY_VALUE = 0.00;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result < $ENTROPY_VALUE) {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################

	my $TITLE = "sflash0s1.cryptx40 (blank)";
	my $NAME = "sflash0s1_cryptx40";
	my $OFFSET_START = 0x01D40000;
	my $ENTROPY_VALUE = 0.00;
	my $OFFSET_LENGTH = 2883584;
	
	print F "$TITLE Entropy: "; 		
	my $Entropy_File	= "";
	open (my $Entropy_Extraction, '+<', \$Entropy_File) or die $!; binmode($Entropy_Extraction); #Open the file in memory, Saves Drama!

	seek($bin, $OFFSET_START, 0); 
	read($bin, $Entropy_File, $OFFSET_LENGTH);
	print $Entropy_Extraction $Entropy_File;

	open (my $Entropy_File_Memory, '<', \$Entropy_File) || die "Cant open $file\n", goto EOF;
	binmode $Entropy_File_Memory;
	my $len = $OFFSET_LENGTH; 
	my ($entropy, %t) = 0;

	while( read( $Entropy_File_Memory, my $buffer, 1024) ) {  ### Calculating Entropy...    
		$buffer =~ s/\x00+//g;
		$buffer =~ s/\xFF+//g;
		$t{$_}++ 
			foreach split '', $buffer; 
		$buffer = '';
	}
	foreach (values %t) { 
		my $p = $_/$len;
		$entropy -= $p * log $p ;
	}       

	my $Entropy_Result = sprintf("%.2f", $entropy / log 2);
	my $Entropy_Result_Percent = sprintf("%.2f", $Entropy_Result / 8 * 100);

	if ($Entropy_Result eq "0.00") {
		print F "$Entropy_Result $ok"; push(@ok, 1);
		print "$NAME Entropy: $osok\n"; 
		} 
		else { 
			print F "<mark>$Entropy_Result $danger </mark>"; push(@danger, 1);
			print "$NAME Entropy: $osdanger\n";
			}	
			
	########################################################################################
		
