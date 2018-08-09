		if IsAddOnLoaded("WhisperPop") then
			F.CreateBD(WhisperPopFrame)
			F.CreateSD(WhisperPopFrame)
			F.CreateBD(WhisperPopMessageFrame)
			F.CreateSD(WhisperPopMessageFrame)
			F.ReskinArrow(WhisperPopScrollingMessageFrameButtonDown, "down")
			F.ReskinArrow(WhisperPopScrollingMessageFrameButtonEnd, "down")
			F.ReskinArrow(WhisperPopScrollingMessageFrameButtonUp, "up")
			F.ReskinCheck(WhisperPopMessageFrameProtectCheck)
			F.ReskinIconStyle(WhisperPopFrameConfig)
			F.ReskinIconStyle(WhisperPopNotifyButton)
			F.ReskinScroll(WhisperPopFrameListScrollBar)

			local list = {"WhisperPopFrameListDelete", "WhisperPopFrameTopCloseButton", "WhisperPopMessageFrameTopCloseButton"}
			for k, v in pairs(list) do
				F.ReskinClose(_G[v])
			end
		end