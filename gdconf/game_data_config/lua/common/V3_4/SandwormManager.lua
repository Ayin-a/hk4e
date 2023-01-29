--[[======================================
||	filename:	SandwormManager
||	owner: 		luyao.huang
||	description:	
||	LogName:	SandwormManager
||	Protection:	
=======================================]]--


------



local manager_Tri = {
    [1] = { name = "group_will_unload_sandworm_manager", config_id = 100000001, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload_sandworm_manager", trigger_count = 0},
  
}

function manager_Initialize()
    for k,v in pairs(manager_Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end


    table.insert(variables,{ config_id = 100000001,  name = "current_sandworm_origin_group", value = -1})
    table.insert(variables,{ config_id = 100000002,  name = "current_sandworm_priority", value = -1})


end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

function action_group_will_unload_sandworm_manager(context,evt)
    ScriptLib.PrintContextLog(context,"## [SandwormManager] Group_will_unload: group即将卸载，清空当前沙虫占用信息")
    ScriptLib.SetGroupVariableValue(context,"current_sandworm_origin_group",-1)
    ScriptLib.SetGroupVariableValue(context,"current_sandworm_priority",-1)
    return 0
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      玩法流程控制                                ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Request_Create_Sandworm(context,prev_context,origin_group,priority)
    ScriptLib.PrintContextLog(context,"## [SandwormManager] LF_Request_Create_Sandworm: 请求创建沙虫，来源group为"..origin_group.."，优先级为"..priority)
    local current_sandworm_priority = ScriptLib.GetGroupVariableValue(context,"current_sandworm_priority")
    local current_sandworm_origin_group = ScriptLib.GetGroupVariableValue(context,"current_sandworm_origin_group")
    if current_sandworm_origin_group == -1 and current_sandworm_priority == -1 then
        ScriptLib.PrintContextLog(context,"## [SandwormManager] LF_Request_Create_Sandworm: 当前占用列表为空，允许创建")
        ScriptLib.SetGroupVariableValue(context,"current_sandworm_origin_group",origin_group)
        ScriptLib.SetGroupVariableValue(context,"current_sandworm_priority",priority)
        return 0
    end
    if priority <= current_sandworm_priority then
        ScriptLib.PrintContextLog(context,"## [SandwormManager] LF_Request_Create_Sandworm: 低于当前占用的优先级，不允许创建")
        ScriptLib.PrintContextLog(context,"## [SandwormManager] LF_Request_Create_Sandworm: 当前的占用来源group为"..current_sandworm_origin_group.."，优先级为"..current_sandworm_priority)
        return -1
    else
        ScriptLib.PrintContextLog(context,"## [SandwormManager] LF_Request_Create_Sandworm: 高于当前占用的优先级，允许创建")
        ScriptLib.PrintContextLog(context,"## [SandwormManager] LF_Request_Create_Sandworm: 当前的占用来源group为"..current_sandworm_origin_group.."，优先级为"..current_sandworm_priority)
        ScriptLib.ExecuteGroupLua(context,current_sandworm_origin_group,"LF_Request_Remove_Sandworm_From_Manager",{})
        ScriptLib.SetGroupVariableValue(context,"current_sandworm_origin_group",origin_group)
        ScriptLib.SetGroupVariableValue(context,"current_sandworm_priority",priority)
        return 0
    end
end


function LF_Request_Clear_Occupation(context,prev_context,origin_group)
    ScriptLib.PrintContextLog(context,"## [SandwormManager] LF_Request_Clear_Occupation: 请求清除沙虫占用，来源group为"..origin_group)
    local current_sandworm_origin_group = ScriptLib.GetGroupVariableValue(context,"current_sandworm_origin_group")
    if current_sandworm_origin_group == origin_group then
        ScriptLib.PrintContextLog(context,"## [SandwormManager] LF_Request_Clear_Occupation: 与当前的占用group匹配")
        ScriptLib.SetGroupVariableValue(context,"current_sandworm_origin_group",-1)
        ScriptLib.SetGroupVariableValue(context,"current_sandworm_priority",-1)
        return 0
    end
    return -1
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
manager_Initialize()