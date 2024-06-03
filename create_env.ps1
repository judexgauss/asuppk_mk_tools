# Выясняем папку, где исполняется скрипт
$Env:ROOT_MK_TOOLS = split-path -parent $MyInvocation.MyCommand.Definition;
# Путь на компуктере, по которому будет сохраняться лог с ПТК-Т
$Env:LOGPATH = "$Env:ROOT_MK_TOOLS\klogg\log";
$Env:MK_DOWNLOADS = "$Env:ROOT_MK_TOOLS\downloads";