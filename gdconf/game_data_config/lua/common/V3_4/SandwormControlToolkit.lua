
--[[======================================
||	filename:	SandwormControlToolkit
||	owner: 		luyao.huang
||	description:	整合了各类沙虫控制方法，可以直接调用或通过tpl调用
||	LogName:	SandwormControlToolkit
||	Protection:	
=======================================]]--

local business_type = 3
local sandworm_params_config_id = 0


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

--玩法业务类型到优先级
--不一定非要用这个
local business_type_to_priority = 
{
    [business_type_defs.bigworld] = 1,
    [business_type_defs.challenge] = 2,
    [business_type_defs.direct] = 3
}


local_defs = 
{
    sandworm_control_group = 133314001,
    alert_max_value = 1000,
    direct_sandworm_config_id = 100
}

function Initialize()

    table.insert(variables,{ config_id = 50000100,  name = "business_type", value = business_type})
    table.insert(variables,{ config_id = 50000101,  name = "sandworm_params_config_id", value = sandworm_params_config_id})
    table.insert(variables,{ config_id = 50000102,  name = "target_pos_x", value = 0})
    table.insert(variables,{ config_id = 50000103,  name = "target_pos_y", value = 0})
    table.insert(variables,{ config_id = 50000104,  name = "target_pos_z", value = 0})
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      修改警戒值                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--
--设置全局的沙虫警戒值
function LF_Set_Sandworm_Alert_Value(context,target_value)
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Set_Alert_Value",{target_value})
end


--修改全局的沙虫警戒值
function LF_Set_Sandworm_Alert_Value(context,delta)
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Change_Alert_Value",{delta})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      创生沙虫                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

--请求新增一组沙虫参数（注意这个方法与是否召唤沙虫无关，沙虫仍然跟随警戒值逻辑进行计算）
function LF_Create_Sandworm_Params(context,priority)
    local group_id = base_info.group_id
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Create_Sandworm_Params",{group_id,priority})
end



--立刻在玩家身边召唤一只沙虫，如果希望召出来的是指定的参数，则需要填入一个极高的优先级
--本质是直接填满沙虫警戒值
function LF_Create_Normal_Sandworm_Immediately(context,priority)
    local group_id = base_info.group_id
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Create_Sandworm_Params",{group_id,priority})
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Set_Alert_Value",{local_defs.alert_max_value+1})
end

--根据玩法的业务类型创生一只沙虫，遵循玩法业务类型的优先级
function LF_Create_Normal_Sandworm_By_Play_Business(context)
    local priority = business_type_to_priority[business_type]
    LF_Create_Normal_Sandworm_Immediately(context,priority)
end

--强制在玩家身边召唤一只沙虫，这个操作带有极高的优先级，注意尽量保证使用的时候环境是干净的
function LF_Force_Create_Normal_Sandworm_Immediately(context)
    local priority = 99999
    LF_Create_Normal_Sandworm_Immediately(context,priority)
end


--立刻在指定位置召唤一只沙虫，如果希望召出来的是指定的参数，则需要填入一个极高的优先级
--本质是直接填满沙虫警戒值
function LF_Create_Direct_Sandworm_Immediately(context,priority,pos_x,pos_y,pos_z)
    local group_id = base_info.group_id
    ScriptLib.SetGroupVariableValue(context,"target_pos_x",pos_x)
    ScriptLib.SetGroupVariableValue(context,"target_pos_y",pos_y)
    ScriptLib.SetGroupVariableValue(context,"target_pos_z",pos_z)
    --申请一个直接攻击沙虫的参数
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Create_Sandworm_Params",{group_id,priority})
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Set_Alert_Value",{local_defs.alert_max_value+1})
end

--根据玩法的业务类型在指定位置直接召唤一只沙虫，遵循玩法业务类型的优先级
function LF_Create_Normal_Sandworm_By_Play_Business(context,pos_x,pos_y,pos_z)
    local priority = business_type_to_priority[business_type]
    LF_Create_Direct_Sandworm_Immediately(context,priority,pos_x,pos_y,pos_z)
end

--强制在指定位置召唤一只沙虫，这个操作带有极高的优先级，会占用当前其他区域/挑战召出来的沙虫参数
--这个行为是一次性的，召唤完成后会清理掉当前的沙虫参数
function LF_Force_Direct_Sandworm_Immediately(context,pos_x,pos_y,pos_z)
    local priority = 99999
    LF_Create_Direct_Sandworm_Immediately(context,priority,pos_x,pos_y,pos_z)
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                      清除沙虫                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--
--移除当前group正在使用的沙虫参数
--通常用于玩法结束、出界等情况
function LF_Remove_Sandworm_Params(context)
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Remove_Sandworm_Params",{base_info.group_id})
end

--清掉当前的沙虫，以及当前group申请的沙虫参数
--通常可以干净的清理掉一个group申请的沙虫以及相关参数
function LF_Remove_Sandworm(context)
    --清掉当前的沙虫
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Remove_Sandworm",{base_info.group_id})
    --清掉当前在占用的参数
    ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_control_group,"LF_Request_Remove_Sandworm_Params",{base_info.group_id})
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      沙虫攻击计数相关                            ||
||                                                                 ||
-----------------------------------------------------------------]]--
--开启沙虫成功攻击计数的开关
--会将自己的group设置为target_group，当沙虫攻击成功时，会发送给target_group
function LF_Start_Sandworm_Attack_Count(context)
    ScriptLib.SetGroupVariableValueByGroup(context,"start_sandworm_attack_count",1,local_defs.sandworm_control_group)
    ScriptLib.SetGroupVariableValueByGroup(context,"sandworm_attack_count_target_group",base_info.group_id,local_defs.sandworm_control_group)
end

--关闭沙虫成功攻击计数的开关，同时清掉当前的沙虫攻击计数，因此关掉之前务必先把值取出来
function LF_Stop_Sandworm_Attack_Count(context)
    ScriptLib.SetGroupVariableValueByGroup(context,"start_sandworm_attack_count",0,local_defs.sandworm_control_group)
    ScriptLib.SetGroupVariableValueByGroup(context,"sandworm_attack_count_target_group",0,local_defs.sandworm_control_group)
    ScriptLib.SetGroupVariableValue(context,"sandworm_attack_count",0)
end

--查询当前记录的沙虫攻击成功的次数
function LF_Get_Sandworm_Attack_Count(context)
    return ScriptLib.GetGroupVariableValue(context,"sandworm_attack_count",0)
end





--------------------------------------------------------------------------------------------------------------------------------------------------
Initialize()