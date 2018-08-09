local AS = unpack(AddOnSkins)

if not AS:CheckAddOn('TellMeWhen') then return end

function AS:TellMeWhen()
	TMW.Classes.Icon:PostHookMethod("OnNewInstance", function(self)
		AS:CreateShadow(self)
	end)

	TMW.Classes.IconModule_Texture:PostHookMethod("OnNewInstance", function(self)
		AS:SkinTexture(self.texture)
	end)
end

AS:RegisterSkin('TellMeWhen', AS.TellMeWhen)
