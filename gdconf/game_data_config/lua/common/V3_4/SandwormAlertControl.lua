--[[======================================
||	filename:	
||	owner: 		luyao.huang
||	description:	
||	LogName:	
||	Protection:	
=======================================]]--


local defs = 
{
    sandworm_id = 1030,
    direct_sandworm_id = 1031,
    alert_max_value = 1000
}

----

--
local local_defs = {
    request_list_capacity = 3,
    --占据90010000后的若干字段，不要占用这些字段的var
    array_base_offset = 90010000,
}

local sandworm_state = 
{
    waiting = 0,
    attacking = 1
}

local business_type_defs = 
{
    --大世界
    --目标玩家为沙虫区域内的一个随机合法玩家
    bigworld = 0,
    --挑战
    --目标玩家为主机
    challenge = 1,
    --指定地点直接召唤
    --没有目标玩家，但要找一组指定地点
    direct = 2,
}

local sandworm_default_params = 
{
    business_type = business_type_defs.bigworld,
    sandworm_params_config_id = 0,
    target_pos_x = 0,
    target_pos_y = 0,
    target_pos_z = 0
}



local Tri = {
    [1] = { name = "variable_change_alert", config_id = 10020001, event = EventType.EVENT_VARIABLE_CHANGE, source = "alert_value", condition = "", action = "action_variable_change_alert", trigger_count = 0},
    [2] = { name = "group_will_unload_alert", config_id = 10020002, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload_alert", trigger_count = 0},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    --警戒值
    table.insert(variables,{ config_id = 90000001,  name = "alert_value", value = 0})
    --沙虫状态
    table.insert(variables,{ config_id = 90000002,  name = "sandworm_state", value = 0})

    table.insert(variables,{ config_id = 90000110,  name = "start_sandworm_attack_count", value = 0})
    table.insert(variables,{ config_id = 90000111,  name = "sandworm_attack_count_target_group", value = 0})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

--沙虫警戒值变化
function action_variable_change_alert(context,evt)
    ScriptLib.PrintContextLog(context,"## [SandwormAlertControl] variable_change: 当前沙虫警戒值为"..evt.param1)
    if evt.param1 >= defs.alert_max_value then
        if not LF_Sandworm_Is_Attacking(context) then
            ScriptLib.PrintContextLog(context,"## [SandwormAlertControl] variable_change: 沙虫警戒度超过最大值，召唤沙虫")
            local current_request = LF_Get_Max_Priority_Request(context)
            local origin_group_id = current_request.group_id
            LF_Create_Sandworm(context,origin_group_id)
            LF_Set_Sandworm_State(context,sandworm_state.attacking)
        end
    end
    if evt.param1 <= 0 then
        LF_Remove_Sandworm(context)
    end
    return 0
end

function action_group_will_unload_alert(context,evt)
    
    ScriptLib.PrintContextLog(context,"## [SandwormAlertControl] group即将卸载，重置警戒值以及其他参数")
    ScriptLib.SetGroupVariableValue(context,"sandworm_state",sandworm_state.waiting)
    ScriptLib.SetGroupVariableValue(context,"alert_value",0)
    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.sandworm_id)
    return 0
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      沙虫管理                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--

--在指定玩家身边生成一只沙虫
--需要传入参数请求依赖的groupid
function LF_Create_Sandworm(context,origin_group_id)
    ScriptLib.PrintContextLog(context,"## [SandwormAlertControl] LF_Create_Sandworm: 创生沙虫")
    --先确保取参数的目标group活着，否则参数是
    --if ScriptLib.IsGroupRegisteredInCurScene(context,origin_group_id) then
        local business_type = ScriptLib.GetGroupVariableValueByGroup(context,"business_type",origin_group_id)
        if business_type == business_type_defs.direct then
            local pos_x = ScriptLib.GetGroupVariableValueByGroup(context,"target_pos_x",origin_group_id)
            local pos_y = ScriptLib.GetGroupVariableValueByGroup(context,"target_pos_y",origin_group_id)
            local pos_z = ScriptLib.GetGroupVariableValueByGroup(context,"target_pos_z",origin_group_id)
            ScriptLib.CreateGadgetByParamTable(context,{config_id = defs.direct_sandworm_id,pos = {x=pos_x,y=pos_y+1.5,z=pos_z}, rot = {x=0,y=0,z=0}})
            --这种调用都是一次性的，召出沙虫后立刻清理掉这次参数，防止被其他地方反复召唤
            local index = LF_Get_Request_Index_From_List_By_Request_Id(context,origin_group_id)
            if index == -1 then
                return -1
            end
            LF_Remove_Request_From_List_By_Index(context,index)
        else
            local sandworm_params_config_id = ScriptLib.GetGroupVariableValueByGroup(context,"sandworm_params_config_id",origin_group_id)
            local sandworm_params = sandworm_dynamic_params[sandworm_params_config_id]
            local range = sandworm_static_params.range
            local ambush_times = sandworm_params.ambush_times
            local attack_times = sandworm_params.attack_times
            local target_uid = 0
            if business_type == business_type_defs.bigworld then
                target_uid = LF_Get_Legal_Player_Uid_In_Legal_Sandworm_Region(context)
            elseif business_type == business_type_defs.challenge then
                target_uid = ScriptLib.GetSceneOwnerUid(context)
            end
            local owner_eid = ScriptLib.GetAvatarEntityIdByUid(context,target_uid)
            local pos = ScriptLib.GetPosByEntityId(context,owner_eid)
            local rpos =  LF_Get_Random_Neighbour(context,pos,range[1],range[2])
            ScriptLib.CreateGadgetByParamTable(context,{config_id = defs.sandworm_id,pos = {x=rpos.x,y=rpos.y+1.5,z=rpos.z}, rot = {x=0,y=0,z=0}, 
                sgv_key = {"SGV_Ambush_Times","SGV_Attack_Times"}, sgv_value = {ambush_times,attack_times}})
        end
    --end
end

--客户端通知沙虫攻击完成
--服务端流程强依赖客户端沙虫攻击完成的SLC，否则直接卡死，需要考虑保底
function SLC_Sandworm_Attack_Finish(context)
    ScriptLib.PrintContextLog(context,"## [SandwormAlertControl] SLC_Sandworm_Attack_Finish: 客户端通知，沙虫攻击完成")
    LF_Set_Sandworm_State(context,sandworm_state.waiting)
    LF_Set_Alert_Value(context,0)
    return 0
end

--清除沙虫gadget，但不影响沙虫警戒值
function LF_Remove_Sandworm(context)
    ScriptLib.PrintContextLog(context,"## [SandwormAlertControl] LF_Remove_Sandworm: 移除沙虫并恢复沙虫等待状态")
    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.sandworm_id)
    LF_Set_Sandworm_State(context,sandworm_state.waiting)
end


--由别的group请求清除主动沙虫，通常是由于出界引起的
--需要校验请求的id与当前堆顶的参数请求来源id是否一致，如果不一致直接无视
function LF_Request_Remove_Sandworm(context,prev_context,origin_group_id)
    ScriptLib.PrintContextLog(context,"## [SandwormAlertControl] LF_Request_Remove_Sandworm: 请求移除沙虫，请求id为"..origin_group_id)
    local current_request = LF_Get_Max_Priority_Request(context)
    if current_request.group_id == origin_group_id then
        ScriptLib.PrintContextLog(context,"## [SandwormAlertControl] LF_Request_Remove_Sandworm: 与当前堆顶id一致，移除沙虫")
        LF_Remove_Sandworm(context)
        return 0
    else
        ScriptLib.PrintContextLog(context,"## [SandwormAlertControl] LF_Request_Remove_Sandworm: 与当前堆顶id不一致，移除失败")
        return -1
    end
end


function LF_Set_Sandworm_State(context,state)
    ScriptLib.SetGroupVariableValue(context,"sandworm_state",state)
end

function LF_Get_Sandworm_State(context)
    return ScriptLib.GetGroupVariableValue(context,"sandworm_state")
end

function LF_Sandworm_Is_Attacking(context)
    return LF_Get_Sandworm_State(context) == sandworm_state.attacking
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      警戒值控制                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

--外部请求修改警戒值
function LF_Request_Change_Alert_Value(context,prev_context,delta)
    return LF_Change_Alert_Value(context,delta)
end

--外部请求修改警戒值
function LF_Request_Set_Alert_Value(context,prev_context,target_value)
    return LF_Set_Alert_Value(context,target_value)
end

function LF_Change_Alert_Value(context,delta)
    --沙虫攻击时，锁警戒值变动
    if not LF_Sandworm_Is_Attacking(context) then
        ScriptLib.ChangeGroupVariableValue(context,"alert_value",delta)
        return 0
    end
    return -1
end

function LF_Set_Alert_Value(context,target_value)
    --沙虫攻击时，锁警戒值变动
    if not LF_Sandworm_Is_Attacking(context) then
        ScriptLib.SetGroupVariableValue(context,"alert_value",target_value)
        return 0
    end
    return -1
end

function LF_Get_Alert_Value(context)
    return ScriptLib.GetGroupVariableValue(context,"alert_value")
end





--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--


--获取指定位置的随机近邻位置。分布在min_r~max_r为半径的环上
function LF_Get_Random_Neighbour(context,pos,min_r,max_r)
    local random_r = math.random(min_r,max_r)
    local random_a = math.random()*math.pi*2
    local rpos_x = pos.x + random_r * math.cos(random_a)
    local rpos_z = pos.z + random_r * math.sin(random_a)
    local rpos = {x = rpos_x,y = pos.y,z = rpos_z}
    return rpos
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      server lua call                            ||
||                                                                 ||
-----------------------------------------------------------------]]--

function SLC_Request_Remove_Current_Sandworm(context)
    ScriptLib.PrintContextLog(context,"## [SandwormAlertControl] SLC_Request_Remove_Current_Sandworm: 物件层请求移除沙虫")
    local index = ScriptLib.GetGroupVariableValue(context,"max_priority_request_index")
    LF_Remove_Request_From_List_By_Index(context,index)
    LF_Remove_Sandworm(context)
    return 0
end

--沙虫攻击计数。
--注意这套计数的开关没有互斥和队列的逻辑，只要有人要求就会开，有人要求就会关。因此调用的时候确保环境干净
function SLC_Sandworm_Attack_Success_Count(context)
    local is_started = ScriptLib.GetGroupVariableValue(context,"start_sandworm_attack_count") == 1
    if is_started then
        local target_group = ScriptLib.GetGroupVariableValue(context,"sandworm_attack_count_target_group")
        ScriptLib.ChangeGroupVariableValueByGroup(context,"sandworm_attack_count",1,target_group)
    end
    return 0
end


------------------------------------------------------------------
Initialize()