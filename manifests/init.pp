Apt::Pin <| |> -> Package <| |>
Apt::Source <| |> -> Package <| |>


group { "puppet":
     ensure => "present",
}

node 'jenkins.cc.de' {
	
	include jenkins
}
