function branch($num) {
	$env:gitbranch = git symbolic-ref --short HEAD 2>$null
	if ($num -eq $null) {
		$i = 1;
		git branch | % { 
			write-host "$i. " -n -f yellow
			if ($_.trim() -match "^\* ") {
				write-host $_ -f green
			} else {
				write-host $_;
			}
			$i++;
		}
	} else {
		$i = 1;
		git branch | % { 
			if ($i -eq $num) {
				$targetBranch = ($_.trim() -replace "^\* ","");
				write-host "> " -n -f gray;
				write-host "git co " -n -f white;
				write-host "$targetBranch" -f green;
				git co $targetBranch;
				$env:gitbranch = git symbolic-ref --short HEAD 2>$null
			}
		$i++;
		}
	}
}

# alias b branch
set-alias b branch