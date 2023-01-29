--[[======================================
||	filename:	WeatherWizardControl
||	owner: 		luyao.huang
||	description:	天气精灵控制，后续会放到ability层处理
||	LogName:	WeatherWizardControl
||	Protection:	
=======================================]]--

--local defs = 
--{
--    energy_worktop_id = 100001,
--}


------
local local_defs = {
    max_level = 6,
    chain_id = 100005,
    energy_level_1 = 2,
    energy_amount_1 = 1,
    energy_level_2 = 5,
    energy_amount_2 = 3,
    unlock_worktop_level = 6,
    worktop_option = 5000,

    sandstorm_state_leveltag = 21,
    sandstorm_on = 59,
    sandstorm_off = 60,

    sandstorm_control_group = 133314001,


    skip_time = 8
}

local wizard_Tri = {
    [10] = { name = "GM_variable_change_wizard", config_id = 35000001, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_GM_variable_change_wizard", trigger_count = 0},
}

function wizard_Initialize()
    for k,v in pairs(wizard_Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    table.insert(variables,{config_id = 110000001, name = "energy_level", value = 0})


    table.insert(variables,{config_id = 150000001, name = "GM_Upgrade_Chain_Level", value = 0})
    table.insert(variables,{config_id = 150000002, name = "GM_Recover_Energy", value = 0})
    table.insert(variables,{config_id = 150000003, name = "GM_Set_Chain_Level", value = 0})
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

function action_GM_variable_change_wizard(context,evt)
    if evt.source_name == "GM_Upgrade_Chain_Level" then
        ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]action_variable_change_shelter：升级天气精灵的等级")
	    local chain_level = ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), local_defs.chain_id)
        ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]action_variable_change_shelter：当前的等级为"..chain_level)
	    if chain_level < local_defs.max_level then
	    	chain_level = chain_level + 1
	    end

        ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]action_variable_change_shelter：升级后为"..chain_level)
	    ScriptLib.SetChainLevel(context, local_defs.chain_id, chain_level, true)
        ScriptLib.SetTeamServerGlobalValue(context,ScriptLib.GetSceneOwnerUid(context),"SGV_Weather_Wizard_Chain_Level",chain_level)

        ScriptLib.SetGroupVariableValue(context,"GM_Upgrade_Chain_Level",0)
    end

    if evt.source_name == "GM_Set_Chain_Level" then
        ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]action_variable_change_shelter：修改天气精灵的等级")
        local target_level = evt.param1
        if evt.param1 > local_defs.max_level then
            target_level = local_defs.max_level
        end
        if evt.param1 < 1 then
            target_level = 1
        end
        ScriptLib.SetChainLevel(context, local_defs.chain_id, target_level, true)
        ScriptLib.SetTeamServerGlobalValue(context,ScriptLib.GetSceneOwnerUid(context),"SGV_Weather_Wizard_Chain_Level",target_level)
    end

    if evt.source_name == "GM_Recover_Energy" then
        ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]action_variable_change_shelter：恢复天气精灵的能量")
        SLC_Recover_Weather_Wizard_Energy(context)

        ScriptLib.SetGroupVariableValue(context,"GM_Recover_Energy",0)
    end
    return 0
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--


--[[-----------------------------------------------------------------
||                                                                 ||
||                      CRUD方法                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--


--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--


--[[-----------------------------------------------------------------
||                                                                 ||
||                     server lua call                             ||
||                                                                 ||
-----------------------------------------------------------------]]--



function SLC_Update_Chain_Level(context)
    local chain_level = ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), local_defs.chain_id)
    ScriptLib.SetTeamServerGlobalValue(context,ScriptLib.GetSceneOwnerUid(context),"SGV_Weather_Wizard_Chain_Level",chain_level)
    return 0
end

------------------------------------------------------------------
wizard_Initialize()