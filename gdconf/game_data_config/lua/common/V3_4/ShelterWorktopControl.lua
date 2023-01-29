--[[======================================
||	filename:	ShelterWorktopControl
||	owner: 		luyao.huang
||	description:	避难所精灵台座控制
||	LogName:	ShelterWorktopControl
||	Protection:	
=======================================]]--

--local defs = 
--{
--    gadget_worktop_id = 100001,
--}


------
local local_defs = {
    max_level = 6,
    chain_id = 100005,
    energy_level_1 = 2,
    energy_amount_1 = 1,
    energy_level_2 = 5,
    energy_amount_2 = 3,
    unlock_worktop_level = 4,

    skip_sandstorm_option = 5100,
    start_sandstorm_option = 5101,

    sandstorm_state_leveltag = 21,
    sandstorm_on = 59,
    sandstorm_off = 60,

    sandstorm_control_group = 133314001,

    skip_teyvat_time = 8 * 60,
    skip_time = 8
}

local Tri = {
    [1] = { name = "group_load_shelter", config_id = 11000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load_shelter", trigger_count = 0},
    [2] = { name = "select_option_shelter", config_id = 11000002, event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option_shelter", trigger_count = 0},
    [3] = { name = "time_axis_pass_shelter", config_id = 11000003, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass_shelter", trigger_count = 0},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    table.insert(variables,{config_id = 110000001, name = "is_skipping_time", value = 0})


    table.insert(variables,{config_id = 150000001, name = "GM_Upgrade_Chain_Level", value = 0})
    table.insert(variables,{config_id = 150000002, name = "GM_Recover_Energy", value = 0})
    table.insert(variables,{config_id = 150000003, name = "GM_Set_Chain_Level", value = 0})
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

--玩法加载初始化
function action_group_load_shelter(context,evt)

    ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]action_group_load_shelter：group加载，给精灵台座上选项")

    return 0
end

function action_select_option_shelter(context,evt)

    if evt.param2 == local_defs.skip_sandstorm_option then

        ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]action_select_option_shelter：玩家选择选项，跳过沙尘暴")

        ScriptLib.SkipTeyvatTime(context,local_defs.skip_teyvat_time,1)

        ScriptLib.InitTimeAxis(context,"SKIP_TYVAT_TIME_AXIS", {local_defs.skip_time}, false)
        ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, defs.gadget_worktop_id, local_defs.skip_sandstorm_option)
        ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, defs.gadget_worktop_id, local_defs.start_sandstorm_option)

        ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.gadget_worktop_id, "SGV_Gear_Option", 1)
        ScriptLib.SetGroupVariableValue(context,"is_skipping_time",1)

        --调用沙尘暴控制group跳过当前沙尘暴
        local sandstorm_state = ScriptLib.GetGroupVariableValueByGroup(context,"sandstorm_state",local_defs.sandstorm_control_group)
        ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]action_select_option_shelter：当前沙尘暴状态为"..sandstorm_state)
        if sandstorm_state == 1 then
            local ret = ScriptLib.ExecuteGroupLua(context, local_defs.sandstorm_control_group, "LF_Skip_Current_Sandstorm", {})
            if ret == -1 then 
                ScriptLib.PrintGroupWarning(context,"## [Warning] [ShelterWorktopControl] action_select_option_shelter：调用控制group的跳过沙尘暴天气功能失败")
            end
        end
    end

    if evt.param2 == local_defs.start_sandstorm_option then
        ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]action_select_option_shelter：玩家选择选项，开启沙尘暴")

        ScriptLib.SkipTeyvatTime(context,local_defs.skip_teyvat_time,1)

        ScriptLib.InitTimeAxis(context,"SKIP_TYVAT_TIME_AXIS", {local_defs.skip_time}, false)
        ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, defs.gadget_worktop_id, local_defs.skip_sandstorm_option)
        ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, defs.gadget_worktop_id, local_defs.start_sandstorm_option)

        ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.gadget_worktop_id, "SGV_Gear_Option", 2)
        ScriptLib.SetGroupVariableValue(context,"is_skipping_time",1)

        --调用沙尘暴控制group跳过当前沙尘暴
        local sandstorm_state = ScriptLib.GetGroupVariableValueByGroup(context,"sandstorm_state",local_defs.sandstorm_control_group)
        ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]action_select_option_shelter：当前沙尘暴状态为"..sandstorm_state)
        if sandstorm_state == 2 then
            local ret = ScriptLib.ExecuteGroupLua(context, local_defs.sandstorm_control_group, "LF_Start_Sanstorm", {})
            if ret == -1 then 
                ScriptLib.PrintGroupWarning(context,"## [Warning] [ShelterWorktopControl] action_select_option_shelter：调用控制group的开启沙尘暴天气功能失败")
            end
        end
    end

    return 0
end

function action_time_axis_pass_shelter(context,evt)
    ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]action_time_axis_pass_shelter：时间轴tick，给精灵台座恢复选项")
    local chain_level = ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), local_defs.chain_id)
    if chain_level >= local_defs.unlock_worktop_level then
        LF_Set_Worktop_Option(context)
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.gadget_worktop_id, "SGV_Gear_Option", 0)
        ScriptLib.SetGroupVariableValue(context,"is_skipping_time",0)
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

function LF_Set_Worktop_Option(context)
    local chain_level = ScriptLib.GetChainLevel(context, ScriptLib.GetSceneOwnerUid(context), local_defs.chain_id)
    if chain_level >= local_defs.unlock_worktop_level then
        local sandstorm_state = ScriptLib.GetGroupVariableValueByGroup(context,"sandstorm_state",local_defs.sandstorm_control_group)
        --在沙尘暴中
        if sandstorm_state == 1 then
            ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.gadget_worktop_id, {local_defs.skip_sandstorm_option})
            ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, defs.gadget_worktop_id, local_defs.start_sandstorm_option)
        end
        if sandstorm_state == 2 then
            ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.gadget_worktop_id, {local_defs.start_sandstorm_option})
            ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, defs.gadget_worktop_id, local_defs.skip_sandstorm_option)
        end
    else
        ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, defs.gadget_worktop_id, local_defs.skip_sandstorm_option)
        ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, defs.gadget_worktop_id, local_defs.start_sandstorm_option)
    end
end




--[[-----------------------------------------------------------------
||                                                                 ||
||                     server lua call                             ||
||                                                                 ||
-----------------------------------------------------------------]]--

function SLC_Try_Set_Option(context)
    ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]SLC_Try_Set_Option：玩家进入台座范围，上选项")
    if ScriptLib.GetGroupVariableValue(context,"is_skipping_time") ~= 1 then
        LF_Set_Worktop_Option(context)
    end
    return 0 
end

function SLC_Try_Remove_Option(context)
    ScriptLib.PrintContextLog(context,"## [ShelterWorktopControl]SLC_Try_Set_Option：玩家进入台座范围，没带天气精灵，下选项选项")
    ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, defs.gadget_worktop_id, local_defs.skip_sandstorm_option)
    ScriptLib.DelWorktopOptionByGroupId(context,base_info.group_id, defs.gadget_worktop_id, local_defs.start_sandstorm_option)
    return 0 
end

------------------------------------------------------------------
Initialize()