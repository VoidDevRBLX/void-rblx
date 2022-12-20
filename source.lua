vversion = "1.5 beta"
playerservice = game:GetService("Players")
httpservice = game:GetService("HttpService")
local admins = {
	"bakersrule2020" --change here lol
}
print("This game uses VOID Admin Version " .. vversion)
function initadmin ()
	print("User is admin. checking for updated versions of void...")
	local latestver = httpservice:GetAsync("https://github.com/VoidDevRBLX/void-rblx/raw/main/version.txt")
	if vversion ~= latestver then
		print("Void is outdated. reloading with latest version...")
		loadstring("https://raw.githubusercontent.com/VoidDevRBLX/void-rblx/main/source.lua")
	end
end
if table.find(admins, playerservice.LocalPlayer.Name) then
	initadmin()
else
	print("Not Admin!")
end
