local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('!BaudErrorFrame') then return end

function AS:BaudErrorFrame()
	F.CreateBD(BaudErrorFrame)
	F.CreateSD(BaudErrorFrame)
	F.CreateSD(BaudErrorFrameListScrollBox)
	F.CreateSD(BaudErrorFrameDetailScrollBox)
	F.ReskinScroll(BaudErrorFrameListScrollBoxScrollBarScrollBar)
	F.ReskinScroll(BaudErrorFrameDetailScrollFrameScrollBar)

	local boxHL = BaudErrorFrameListScrollBoxHighlightTexture
	boxHL:SetTexture(C.media.backdrop)
	boxHL:SetVertexColor(r, g, b, .5)

	local Buttonlist = {"ClearButton", "CloseButton", "ReloadUIButton"}
	for k, v in pairs(Buttonlist) do
		F.Reskin(_G["BaudErrorFrame"..v])
	end
end

AS:RegisterSkin('!BaudErrorFrame', AS.BaudErrorFrame)