# Importar o módulo Active Directory
Import-Module ActiveDirectory

# Especifique o nome do grupo
$groupName = 'NOME DO GRUPO'

# Obter a lista de membros do grupo
$groupMembers = Get-ADGroupMember -Identity $groupName

# Filtrar apenas os usuários (opcional)
$users = $groupMembers | Where-Object {$_.objectClass -eq 'user'}

# Exibir a lista de usuários que são membros do grupo
$users | Format-Table Name, SamAccountName