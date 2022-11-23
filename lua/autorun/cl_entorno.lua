if CLIENT then
	net.Receive("sendEntornoMsg",function()
		local msg = net.ReadString()

		chat.AddText(Color(102,167,255,255), "[ENTORNO] ", Color(190,180,220,255), msg)
	end)
end