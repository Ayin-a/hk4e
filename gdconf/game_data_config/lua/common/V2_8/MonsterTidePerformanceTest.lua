--[[======================================
||	filename:	MonsterTidePerformanceTest
||	owner: 		luyao.huang
||	description:	2.8怪物潮优化性能测试
||	LogName:	MonsterTidePerformanceTest
||	Protection:	
=======================================]]--
--miscs
local local_defs = {
    monster_tide_index = 1,
    worktop_option = 30110,

}

local Tri = {
    { config_id = 40000000, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    { config_id = 40000001, name = "select_option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0},
    { config_id = 40000002, name = "variable_change", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change", trigger_count = 0},
    
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    --GM，暂停怪物潮
    table.insert(variables,{config_id = 50000000, name = "GM_Stop_Tide", value = 0})
    --GM，启动怪物潮
    table.insert(variables,{config_id = 50000001, name = "GM_Start_Tide", value = 0})
    --GM，重启测试
    table.insert(variables,{config_id = 50000002, name = "GM_Restart_Test", value = 0})
    --GM，选择是否开启优化怪物潮
    table.insert(variables,{config_id = 50000003, name = "GM_Optimize_Tide", value = 0})
    --GM，选择是否开启轻量化怪物潮
    table.insert(variables,{config_id = 50000004, name = "GM_Light_Tide", value = 0})
end

------------------------------------------------------------------
--group load，如果是上半场，则开始玩法初始化
function action_group_load(context,evt)

    ScriptLib.PrintContextLog(context,"## [MonsterTidePerformanceTest]action_group_load： group加载，测试初始化")
    LF_Init_Play(context)

    return 0
end


function action_variable_change(context,evt)

    if (evt.source_name == "GM_Stop_Tide" and evt.param1 == 1) then
        ScriptLib.PauseAutoMonsterTide(context, base_info.group_id, local_defs.monster_tide_index)
        ScriptLib.SetGroupVariableValue(context,"GM_Stop_Tide",0)
    end

    if (evt.source_name == "GM_Start_Tide" and evt.param1 == 1) then
        ScriptLib.ContinueAutoMonster(context, base_info.group_id, local_defs.monster_tide_index)
        ScriptLib.SetGroupVariableValue(context,"GM_Start_Tide",0)
    end

    if (evt.source_name == "GM_Restart_Test" and evt.param1 == 1) then
        LF_Stop_Play(context)
        LF_Init_Play(context)
        ScriptLib.SetGroupVariableValue(context,"GM_Restart_Test",0)
    end

    return 0
end


--按下操作台按键，启动玩法
function action_select_option(context,evt)
    ScriptLib.PrintContextLog(context,"## [MonsterTidePerformanceTest]action_select_option： 玩家按下选项，启动测试")
    LF_Start_Play(context)
    return 0
end


------------------------------------------------------------------
--辅助方法---------------------------------------------------------
------------------------------------------------------------------
function LF_Init_Play(context)
    
    ScriptLib.CreateGadget(context,{config_id = defs.worktop_id})
    ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, defs.worktop_id, 0)
    ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.worktop_id, {local_defs.worktop_option})
end

function LF_Start_Play(context)

    ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, defs.worktop_id, local_defs.worktop_option)
    ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, defs.worktop_id, GadgetState.GearStop)

    local is_optimize_tide = ScriptLib.GetGroupVariableValue(context,"GM_Optimize_Tide")
    local is_light_tide = ScriptLib.GetGroupVariableValue(context,"GM_Light_Tide")
    local tide_monster_list = {}
    if is_optimize_tide == 1 then
        tide_monster_list = optimize_monster_list
        ScriptLib.PrintContextLog(context,"## [MonsterTidePerformanceTest]LF_Start_Play：加载客户端优化逻辑怪物潮")
    elseif is_light_tide == 1 then
        tide_monster_list = light_monster_list
        ScriptLib.PrintContextLog(context,"## [MonsterTidePerformanceTest]LF_Start_Play：加载轻量化ability配置怪物潮")
    else
        tide_monster_list = monster_list
        ScriptLib.PrintContextLog(context,"## [MonsterTidePerformanceTest]LF_Start_Play：加载普通怪物潮")
    end

    ScriptLib.AutoMonsterTide(context, local_defs.monster_tide_index, base_info.group_id, tide_monster_list, 0, defs.min , defs.max)
end


function LF_Stop_Play(context)
    
    ScriptLib.KillMonsterTide(context, base_info.group_id, local_defs.monster_tide_index)
end

function LF_Get_All_Monster_In_Group(context)
    local monster_list = {}
    for i = 1, #monsters do
        table.insert(monster_list,monsters[i].config_id)
    end
    return monster_list

end


------------------------------------------------------------------
Initialize()