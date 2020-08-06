do
{

$x ="Meniu 1","Meniu 2","Meniu 3","Meniu 4","x to close" | Out-GridView -OutputMode Single -Title Meniu

switch -Wildcard ($x)
{
   '*1' { write-host " Ai apasat 1"
        Get-Service 
        }
   '*2' { write-host " Ai apasat 2"
         Get-Process | ft
       }
   '*3' { write-host " Ai apasat 3"
   ipconfig
   }
   '*4' { write-host " Ai apasat 4"
   netstat -a
   }
   'x*' { write-host " Ai apasat 4"}
    }

}
until ($x -like "x*")