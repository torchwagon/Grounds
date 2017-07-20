	rank = function(players,fromValue,showPos,showPoints,pointsName,lim)
		local p,rank = {},""
		fromValue,lim = fromValue or {tfm.get.room.playerList,"score"},tonumber(lim) or 100
		for n in next,players do
			p[#p+1] = {name=n,v=fromValue[1][n][fromValue[2]]}
		end
		table.sort(p,function(f,s) return f.v>s.v end)
		for o,n in next,p do
			if o <= lim then
				rank = rank .. (showPos and "<J>"..o..". " or "") .. "<V>" .. n.name .. (showPoints and " <BL>- <VP>" .. n.v .. " "..(pointsName or "points") .."\n" or "\n")
			end
		end
		return rank
	end,