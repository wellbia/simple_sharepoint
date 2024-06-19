[CmdletBinding()]
param(
    [Parameter(Mandatory=$false)]
    [string]$RepoUrl,
    [string]$User,
    [string]$Pwd
)


Remove-Item -Recurse -Force "build"
Remove-Item -Recurse -Force "dist"

python setup.py bdist_wheel

twine upload --repository-url $RepoUrl -u $User -p $Pwd dist/*