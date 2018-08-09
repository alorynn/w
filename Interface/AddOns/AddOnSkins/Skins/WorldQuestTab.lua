local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('WorldQuestTab') then return end

function AS:WorldQuestTab()
	AS:SkinButton(WQT_TabNormal)
	AS:SkinButton(WQT_TabWorld)
	AS:SkinButton(WQT_WorldQuestFrameSortButton)
	AS:StripTextures(WQT_WorldQuestFrameFilterButton, true)
	AS:SkinButton(WQT_WorldQuestFrameFilterButton)
	AS:SkinNextPrevButton(WQT_WorldQuestFrameSortButtonButton)
	WQT_TabWorld.TabBg:Hide()
	WQT_TabNormal.TabBg:Hide()

	--Reposition elements
	WQT_TabNormal:ClearAllPoints()
	WQT_TabNormal:Point('RIGHT', WorldMapFrameCloseButton, 'LEFT', -231, -36)
	WQT_TabWorld:ClearAllPoints()
	WQT_TabWorld:Point('LEFT', WQT_TabNormal, 'RIGHT', 1, 0)
	WQT_WorldQuestFrameSortButton:ClearAllPoints()
	WQT_WorldQuestFrameSortButton:Point('LEFT', WQT_TabWorld, 'RIGHT', 18, -2)
	WQT_WorldQuestFrameSortButtonButton:ClearAllPoints()
	WQT_WorldQuestFrameSortButtonButton:Point('LEFT', WQT_WorldQuestFrameSortButton, 'RIGHT', -29, 0)
	WQT_WorldQuestFrameSortButtonText:ClearAllPoints()
	WQT_WorldQuestFrameSortButtonText:Point('CENTER', WQT_WorldQuestFrameSortButton, 'CENTER', -20, 0)
	WQT_WorldQuestFrameFilterButton:ClearAllPoints()
	WQT_WorldQuestFrameFilterButton:Point('LEFT', WQT_WorldQuestFrameSortButton, 'RIGHT', 18, 0)

	--Resize Buttons
	WQT_WorldQuestFrameSortButton:Size(92, 32)
	WQT_WorldQuestFrameSortButtonButton:Size(27, 28)
	WQT_WorldQuestFrameFilterButton:Size(92, 32)

	AS:SkinScrollBar(WQT_QuestScrollFrameScrollBar)

	--WQT_TabNormal.TabBg:Hide()
	--WQT_TabNormal.Hider:Hide()
	--WQT_TabNormal.Highlight:SetTexture("")
	--WQT_TabNormal.Icon:SetPoint("CENTER")

	--WQT_TabWorld:ClearAllPoints()
	--WQT_TabWorld:SetPoint("LEFT", WQT_TabNormal, "RIGHT", 2, 0)
	--WQT_TabWorld.TabBg:Hide()
	--WQT_TabWorld.Hider:Hide()
	--WQT_TabWorld.Highlight:SetTexture("")
	--WQT_TabWorld.Icon:SetPoint("CENTER")

	--F.StripTextures(WQT_WorldQuestFrame, true)
	--F.Reskin(WQT_TabNormal)
	--F.Reskin(WQT_TabWorld)
	--F.ReskinDropDown(WQT_WorldQuestFrameSortButton)
	--F.ReskinFilterButton(WQT_WorldQuestFrameFilterButton)
	--F.ReskinScroll(WQT_QuestScrollFrameScrollBar)

	--WQT_WorldQuestFrame.filterBar:GetRegions():Hide()

	--local WQTDF = WQT_QuestScrollFrame.DetailFrame
	--WQTDF.TopDetail:Hide()
	--WQTDF.BottomDetail:Hide()

	--for i = 1, 2 do
	--	select(i, WQT_QuestScrollFrameScrollBar:GetRegions()):Hide()
	--end
	--for r = 1, 15 do
	--	local bu = _G["WQT_QuestScrollFrameButton"..r]

	--	local rw = bu.reward
	--	rw:SetSize(26, 26)
	--	rw.icon:SetTexCoord(.08, .92, .08, .92)
	--	rw.iconBorder:Hide()
	--	F.CreateBDFrame(rw.icon)

	--	local fac = bu.faction
	--	fac.icon:SetTexCoord(.08, .92, .08, .92)
	--	F.CreateBDFrame(fac.icon)

	--	local tm = bu.time
	--	tm:ClearAllPoints()
	--	tm:SetPoint("LEFT", fac, "RIGHT", 5, -7)
	--end
end

AS:RegisterSkin('WorldQuestTab', AS.WorldQuestTab)
