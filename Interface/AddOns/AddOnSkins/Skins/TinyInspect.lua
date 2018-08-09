			for i = 1, 9 do
				select(i, TinyInspectRaidFrame:GetRegions()):Hide()
				select(i, TinyInspectRaidFrame.panel:GetRegions()):Hide()
			end

			F.CreateBD(TinyInspectRaidFrame)
			F.CreateSD(TinyInspectRaidFrame)
			F.CreateBD(TinyInspectRaidFrame.panel)
			F.CreateSD(TinyInspectRaidFrame.panel)