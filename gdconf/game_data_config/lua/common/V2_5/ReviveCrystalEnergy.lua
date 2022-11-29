--ServerUploadTool Save to [/root/env/data/lua/common/V2_5]
--[[
=====================================================================================================================
||	Filename 	  ||	ReviveCrystalEnergy  雕像刷新循环玩法
||	RelVersion    ||	2.5
||	Owner         ||	xudong.sun
||	Description   ||	2.5版本，中心雕像交互后刷新循环玩法
||	LogName       ||    ## ReviveCrystal_LOG
||	Protection    ||	/
=====================================================================================================================


=======================================================================================]]
local extrTriggers = {
	initialtrigger = {
		["Interact_Dwon"] = { config_id = 80000002, name = "Interact_Dwon", event= EventType.EVENT_MICHIAE_INTERACT, source = "", condition = "", action = "action_InteractDwon", trigger_count = 0 },
	}
}

--local refreshGroupIDList = {}


function action_InteractDwon( context, evt )

	ScriptLib.PrintContextLog(context,"## ReviveCrystal_LOG: Interact_Dwon")

	if evt.param1 == 4 then
		--以雕像为中心，发送reminder
		ScriptLib.ShowReminderRadius(context, 600103, {x= 283, y= 314, z= 335}, 50)
	elseif evt.param1 == 1 then
		--刷新挑战group，重新开UI开关
		for i,v in ipairs(refreshGroupIDList) do

			ScriptLib.PrintContextLog(context,"## ReviveCrystal_LOG: revive id is "..v)

			ScriptLib.RefreshGroup(context, { group_id = v, suite = 1 })
			--打开地图UI开关
			ScriptLib.updateBundleMarkShowStateByGroupId(context, v, true)
		end

		--刷新非挑战group，不开UI开关
		for i,v in ipairs(refreshEnergyGroupIDList) do

			ScriptLib.PrintContextLog(context,"## ReviveCrystal_LOG: revive id is "..v)

			ScriptLib.RefreshGroup(context, { group_id = v, suite = 1 })
		end
	end

	return 0
end


function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	return 0
end

LF_Initialize_Group()