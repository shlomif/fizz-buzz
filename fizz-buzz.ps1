#This code must be run from the PowerShell window, not from the Windows context menu

for($i=1; $i -le 100; $i++)
{
	if ($i % 15 -eq 0)
	{
		Write-Host "FizzBuzz"
	}
	elseif ($i % 3 -eq 0)
	{
		Write-Host "Fizz"
	}
	elseif ($i % 5 -eq 0)
	{
		Write-Host "Buzz"
	}
	else
	{
		Write-Host "$i"
	}
}