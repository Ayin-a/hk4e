local gadget_list = {{key="water",id=70350281},{key="fire",id=70350282},{key="ice",id=70350283},{key="wind",id=70350284},{key="electric",id=70350285},{key="none",id=70350286}}
local var = {
	["common"] = {"SGV_AttackDamageLevel","SGV_ElementMasteryLevel","SGV_AttackSpeedLevel","SGV_RangeLevel"},
	["water"] = {"SGV_Bubble","SGV_WaterImpulse","SGV_Evaporate","SGV_Wet","SGV_TargetAOE","SGV_Dot"},
	["fire"] = {"SGV_Aoe","SGV_Enbreak","SGV_FireImpulse","SGV_Melt","SGV_Defensedown","SGV_FireArea","SGV_Missile"},
	["ice"] = {"SGV_Explosion","SGV_Slowdown","SGV_IceImpulse","SGV_Frozen","SGV_Resistancedown","SGV_TDSpecialGrade_Ice","SGV_Ice_Fog"},
	["wind"] = {"SGV_UpgradeRepulse","SGV_TowUnits","SGV_WindImpulse","SGV_ReduceWindResistance","SGV_ExtraDamageByHp","SGV_ShootBullet","SGV_CanCharge"},
	["electric"] = {"SGV_ExtraTargets","SGV_Confine","SGV_ElectricImpulse","SGV_UpgradeElectricRecation","SGV_FurySwipe","SGV_ExtraThunder","SGV_UpgradeNormalAttack"},
	["none"] = {"SGV_HitExplosion","SGV_ReducePhysicalResistance","SGV_DamageByTime","SGV_WantedSign","SGV_EnergyBallAttack"},
}
local tri = {
	[1] = {config_id=10000, name="group_load", event=EventType.EVENT_GROUP_LOAD, source="", condition="", action="action_group_load", trigger_count=0},
	[2] = {config_id=10001, name="group_refresh", event=EventType.EVENT_GROUP_REFRESH, source="", condition="", action="action_group_load", trigger_count=0},
	[3] = {config_id=10002, name="variable_change", event=EventType.EVENT_VARIABLE_CHANGE, source="", condition="", action="action_variable_change", trigger_count=0}
}

function Initialize()
	for i,v in ipairs(points) do
		if i > #gadget_list then
			break
		end
		
		if points[i] == nil then
			break
		end
		temp_gadget = {config_id = 8000+i, gadget_id = gadget_list[i].id, pos = points[i].pos, rot = points[i].rot, level = 1}
		table.insert(gadgets, temp_gadget)
		--table.insert(suites[1].gadgets, temp_gadget.config_id)
	end
	------------

	for k,v in pairs(var) do
		for m,n in ipairs(v) do
			local _var = { name = n, value = 0, no_refresh = true }
			table.insert(variables, _var)
		end
	end
	-------------

	for i,v in ipairs(tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
end


function action_group_load(context, evt)
	ScriptLib.PrintLog("--------------- v4 -----------------")
	for i,v in ipairs(gadget_list) do
		local SGV_table = {}
		for p,q in ipairs(var.common) do
			SGV_table[q] = 0
		end
		for m,n in ipairs(var) do
			if m == v.key then
				for p,q in ipairs(n) do
					SGV_table[q] = 0
				end
			end
		end
		--[[
		for k,v in pairs(SGV_table) do
			ScriptLib.PrintContextLog(context, "k="..k.." | v="..v)
		end
		--]]
		--ScriptLib.CreateGadgetWithGlobalValue(context, 8000+i, SGV_table)
		ScriptLib.CreateGadgetWithGlobalValue(context, 8000+i, {})
	end
	return 0
end

function action_variable_change(context, evt)
	--local value = ScriptLib.GetGroupVariableValue(context, evt.source_name)
	for k,v in pairs(var) do
		for p,q in ipairs(v) do
			if q == evt.source_name then
				if k == "common" then
					for m,n in ipairs(gadget_list) do
						ScriptLib.SetEntityServerGlobalValueByConfigId(context, 8000+m, evt.source_name, evt.param1)
					end
					return 0
				else
					for m,n in ipairs(gadget_list) do
						if n.key == k then
							ScriptLib.SetEntityServerGlobalValueByConfigId(context, 8000+m, evt.source_name, evt.param1)
						end
					end
					return 0
				end
			end
		end
	end
	return 0
end

Initialize()