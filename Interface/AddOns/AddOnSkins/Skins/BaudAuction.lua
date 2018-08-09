local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('BaudAuction') then return end

function AS:BaudAuction()
	F.CreateBD(BaudAuctionProgress)
	F.CreateSD(BaudAuctionProgress)
	BaudAuctionProgressBar:SetPoint("CENTER", 0, -5)
	BaudAuctionProgressBarBorder:Hide()
	F.ReskinScroll(BaudAuctionBrowseScrollBoxScrollBarScrollBar)
	F.ReskinStatusBar(BaudAuctionProgressBar, true)

	local boxHL = BaudAuctionBrowseScrollBoxHighlight
	boxHL:SetTexture(C.media.backdrop)
	boxHL:SetPoint("LEFT", 4, 0)
	boxHL:SetPoint("RIGHT", 10, 0)

	for i = 1, 2 do
		select(i, BaudAuctionBrowseScrollBoxScrollBar:GetRegions()):Hide()
	end
	for k = 1, 19 do
		F.ReskinIcon(_G["BaudAuctionBrowseScrollBoxEntry"..k.."Texture"])
	end
end

AS:RegisterSkin('BaudAuction', AS.BaudAuction)