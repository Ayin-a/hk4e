--[[======================================
||	filename:	
||	owner: 		luyao.huang
||	description:	
||	LogName:	
||	Protection:	
=======================================]]--

local sandworm_params_config_id = 12
------
local local_defs = {
    sandworm_control_group = 133314001,

    --挑战业务类型为0，优先级为1
    request_priority = 2,
    business_type = 1
}


local Tri = {
    [1] = { name = "enter_region_sandworm_challenge", config_id = 10010001, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region_sandworm_challenge", trigger_count = 0},
    [2] = { name = "leave_region_sandworm_challenge", config_id = 10010002, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region_sandworm_challenge", trigger_count = 0},
    [3] = { name = "time_axis_pass_sandworm_challenge", config_id = 10010011, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass_sandworm_challenge", trigger_count = 0},
    [4] = { name = "group_will_unload_sandworm_challenge", config_id = 10010012, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload_sandworm_challenge", trigger_count = 0},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    table.insert(variables,{ config_id = 50000100,  name = "business_type", value = local_defs.business_type})
    table.insert(variables,{ config_id = 50000101,  name = "sandworm_params_config_id", value = sandworm_params_config_id})

end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

function action_enter_region_sandworm_challenge(context,evt)
    if evt.param1 == defs.sandworm_region then
        if ScriptLib.IsChallengeStartedByChallengeId(context, defs.challenge_id) then
            ScriptLib.PrintContextLog(context,"## [ChallengeSandwormRegionControl]enter_region: 挑战中进入大世界区域，请求创生")
            local request = 
            {
                group_id = base_info.group_id,
                priority = local_defs.request_priority,
            }
            ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Create_Sandworm_Params",{request.group_id,request.priority})
            ScriptLib.InitTimeAxis(context,"sandworm_alert_axis",{1},true)

            ScriptLib.SetGroupVariableValueByGroup(context,"is_in_challenge_region", 1, local_defs.sandworm_control_group)
        end
    end
    return 0
end


function action_leave_region_sandworm_challenge(context,evt)
    if evt.param1 == defs.sandworm_region then
        if ScriptLib.IsChallengeStartedByChallengeId(context, defs.challenge_id) then
            ScriptLib.PrintContextLog(context,"## [ChallengeSandwormRegionControl]enter_region: 挑战中离开大世界区域，请求销毁")
            --清掉当前的沙虫
            ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Remove_Sandworm",{base_info.group_id})
            --清掉当前在占用的参数
            ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Remove_Sandworm_Params",{base_info.group_id})
            ScriptLib.EndTimeAxis(context,"sandworm_alert_axis")

            ScriptLib.SetGroupVariableValueByGroup(context,"is_in_challenge_region", 0, local_defs.sandworm_control_group)
        end
    end
    return 0
end


function action_time_axis_pass_sandworm_challenge(context,evt)
    if (evt.source_name == "sandworm_alert_axis") then
        if ScriptLib.IsChallengeStartedByChallengeId(context, defs.challenge_id) then
            local alert = math.random(sandworm_alert_by_tick[1],sandworm_alert_by_tick[2])
            ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Change_Alert_Value",{alert})
        end
    end
    return 0
end

function action_group_will_unload_sandworm_challenge(context,evt)
    ScriptLib.PrintContextLog(context,"## [ChallengeSandwormRegionControl]group_will_unload: group卸载，要保底清除占用的沙虫参数")
    --清掉当前的沙虫
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Remove_Sandworm",{base_info.group_id})
    --清掉当前在占用的参数
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Remove_Sandworm_Params",{base_info.group_id})
    ScriptLib.EndTimeAxis(context,"sandworm_alert_axis")

    ScriptLib.SetGroupVariableValueByGroup(context,"is_in_challenge_region", 0, local_defs.sandworm_control_group)
    return 0
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Challenge_Start_Change_Sandworm_Params(context)
    ScriptLib.PrintContextLog(context,"## [ChallengeSandwormRegionControl]LF_Challenge_Request_Create_Sandworm: 挑战开始，请求创生")
    local request = 
    {
        group_id = base_info.group_id,
        priority = local_defs.request_priority,
    }
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Create_Sandworm_Params",{request.group_id,request.priority})
    local ret = ScriptLib.InitTimeAxis(context,"sandworm_alert_axis",{1},true)
    ScriptLib.PrintContextLog(context,"## [ChallengeSandwormRegionControl]LF_Challenge_Request_Create_Sandworm: 启动时间轴:"..ret)


    ScriptLib.SetGroupVariableValueByGroup(context,"is_in_challenge_region", 1, local_defs.sandworm_control_group)
    return 0
end

function LF_Challenge_Stop_Clear_Sandworm_Params(context)
    ScriptLib.PrintContextLog(context,"## [ChallengeSandwormRegionControl]LF_Challenge_Request_Create_Sandworm: 挑战结束，请求销毁")
    --清掉当前的沙虫
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Remove_Sandworm",{base_info.group_id})
    --清掉当前在占用的参数
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Remove_Sandworm_Params",{base_info.group_id})
    ScriptLib.EndTimeAxis(context,"sandworm_alert_axis")

    ScriptLib.SetGroupVariableValueByGroup(context,"is_in_challenge_region", 0, local_defs.sandworm_control_group)
end




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


------------------------------------------------------------------
Initialize()