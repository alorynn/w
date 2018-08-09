local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('ExtraCD') then return end

function AS:ExtraCD()
	hooksecurefunc(ExtraCD, "CreateIcon", function(_, order, bar)
		local btn = bar.btns[order]
		local backdrop = btn:GetBackdrop()
		local icon = backdrop.bgFile

		if not btn.icon then
			btn.icon = btn:CreateTexture(nil, "BORDER")
			btn.icon:SetAllPoints()
			AS:SkinTexture(btn.icon)
		end

		btn.icon:SetTexture(icon)

		btn:SetBackdrop(nil)
		AS:CreateShadow(btn)
	end)
end

AS:RegisterSkin('ExtraCD', AS.ExtraCD)