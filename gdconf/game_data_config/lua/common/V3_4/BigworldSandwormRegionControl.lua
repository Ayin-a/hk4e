--[[======================================
||	filename:	
||	owner: 		luyao.huang
||	description:	
||	LogName:	
||	Protection:	
=======================================]]--


------
local local_defs = {
    sandworm_control_group = 133314001,

    --大世界业务类型为0，优先级为1
    request_priority = 1,
    business_type = 0
}


local Tri = {
    [1] = { name = "enter_region_bigworld_sandworm_region", config_id = 10010001, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region_bigworld_sandworm_region", trigger_count = 0},
    [2] = { name = "leave_region_bigworld_sandworm_region", config_id = 10010002, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region_bigworld_sandworm_region", trigger_count = 0},
    [3] = { name = "time_axis_pass_bigworld_sandworm_region", config_id = 10010011, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass_bigworld_sandworm_region", trigger_count = 0},
    [4] = { name = "group_will_unload_bigworld_sandworm_region", config_id = 10010012, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload_bigworld_sandworm_region", trigger_count = 0},
   }

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    table.insert(variables,{ config_id = 50000001,  name = "is_in_challenge_region", value = 0})
    table.insert(variables,{ config_id = 50000002,  name = "current_region_id", value = 0})

    
    table.insert(variables,{ config_id = 50000100,  name = "business_type", value = local_defs.business_type})
    table.insert(variables,{ config_id = 50000101,  name = "sandworm_params_config_id", value = 0})

end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

function action_enter_region_bigworld_sandworm_region(context,evt)
    if LF_Is_Region_Specific_Region(context,"SandwormRegion",evt.param1) then
        ScriptLib.PrintContextLog(context,"## [BigworldSandwormRegionControl]enter_region: 玩家进入大世界沙虫区域，请求创生参数")
        local request = 
        {
            group_id = base_info.group_id,
            priority = local_defs.request_priority,
        }
        local region_config = LF_Get_Region_Config_By_Id(context,evt.param1)
        if region_config ~= nil then
            ScriptLib.SetGroupVariableValue(context,"sandworm_params_config_id",region_config.sandworm_params_config_id)
            ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Create_Sandworm_Params",{request.group_id,request.priority})
        end
        ScriptLib.InitTimeAxis(context,"sandworm_alert_axis",{1},true)
        ScriptLib.SetGroupVariableValue(context,"current_region_id",evt.param1)
    end
    return 0
end


function action_leave_region_bigworld_sandworm_region(context,evt)
    if LF_Is_Region_Specific_Region(context,"SandwormRegion",evt.param1) then
        ScriptLib.PrintContextLog(context,"## [BigworldSandwormRegionControl]leave_region: 玩家离开大世界沙虫区域，请求销毁")
        ScriptLib.SetGroupVariableValue(context,"sandworm_params_config_id",0)
        --清掉当前的沙虫
        ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Remove_Sandworm",{base_info.group_id})
        --清掉当前在占用的参数
        ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Remove_Sandworm_Params",{base_info.group_id})
        ScriptLib.EndTimeAxis(context,"sandworm_alert_axis")
        ScriptLib.SetGroupVariableValue(context,"current_region_id",0)
    end
    return 0
end

function action_time_axis_pass_bigworld_sandworm_region(context,evt)
    if (evt.source_name == "sandworm_alert_axis") and not LF_Is_In_Challenge_Region(context) then
        local current_region_id = ScriptLib.GetGroupVariableValue(context,"current_region_id")
        local region_config = LF_Get_Region_Config_By_Id(context,current_region_id)
        if region_config ~= nil then
            local alert = math.random(region_config.alert_by_tick[1],region_config.alert_by_tick[2]) 
            ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Change_Alert_Value",{alert})
        end
    end
    return 0
end

function action_group_will_unload_bigworld_sandworm_region(context,evt)
    ScriptLib.PrintContextLog(context,"## [BigworldSandwormRegionControl]group_will_unload: group卸载，做保底恢复")
    ScriptLib.SetGroupVariableValue(context,"current_region_id",0)
    ScriptLib.SetGroupVariableValue(context,"is_in_challenge_region",0)
    ScriptLib.EndTimeAxis(context,"sandworm_alert_axis")
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
function LF_Is_In_Challenge_Region(context)
    return ScriptLib.GetGroupVariableValue(context,"is_in_challenge_region") == 1 
end

function LF_Get_Region_Config_By_Id(context,region_id)
    local region_config = special_sandworm_region_defs[region_id]
    if region_config == nil then
        region_config = {alert_by_tick = default_sandworm_alert_by_tick,sandworm_params_config_id = default_sandworm_params_config_id}
    end
    return region_config
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--


------------------------------------------------------------------
Initialize()