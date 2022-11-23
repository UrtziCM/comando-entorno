if SERVER then
	util.AddNetworkString("sendEntornoMsg")

	hook.Add( "PlayerSay", "EntornoCMD", function(ply, text, public )
		if (string.sub(text, 1, 8) == "/entorno") then
			net.Start("sendEntornoMsg")
				net.WriteString(": "..string.sub(text,9))
			net.Send(player.GetAll())
			return ""
		end
	end)	
end