--[[======================================
||	filename:	SandwormControl
||	owner: 		luyao.huang
||	description:	3.3沙尘爆发沙虫控制（白盒）
||	LogName:	SandwormControl
||	Protection:	
=======================================]]--


local sandworm_config =
{
    sandworm_id = 1030,
    min_raidus = 10,
    max_radius = 20,
}


------
local local_defs = {
}




local Tri = {
    [1] = { name = "time_axis_pass_sandworm", config_id = 10001001, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass_sandworm", trigger_count = 0},
    [2] = { name = "variable_change_sandworm", config_id = 10001002, event = EventType.EVENT_VARIABLE_CHANGE, source = "sandworm_state", condition = "", action = "action_variable_change_sandworm", trigger_count = 0},
    [3] = { name = "enter_region_sandworm", config_id = 10001003, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region_sandworm", trigger_count = 0},
    [4] = { name = "leave_region_sandworm", config_id = 10001004, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region_sandworm", trigger_count = 0},

}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    --沙虫状态
    -- 0：未开启
    -- 1：初始CD中
    -- 2：CD中
    -- 3：攻击中

    table.insert(variables,{ config_id = 20001001,  name = "sandworm_state", value = -1})


    --目标玩家
    --每次有玩家进圈和出圈，只要沙虫不处于攻击状态，就会重新调整一次目标玩家
    --沙虫创生后，会通过SLC通知一次lua调整ability层自己选择的目标玩家

    table.insert(variables,{ config_id = 20001002,  name = "target_uid", value = -1})


    --是否有沙虫时间轴存档
    table.insert(variables,{ config_id = 20001003,  name = "has_sandworm_axis_saves", value = -1})
    --存档的沙虫时间轴剩余时间
    table.insert(variables,{ config_id = 20001004,  name = "sandworm_last_axis_remain_time", value = -1})
    --存档的沙虫时间轴剩余时间
    table.insert(variables,{ config_id = 20001005,  name = "sandworm_last_axis_start_time", value = -1})
    --存档的沙虫时间轴剩余时间
    table.insert(variables,{ config_id = 20001006,  name = "sandworm_last_axis_last_time", value = -1})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--



function action_time_axis_pass_sandworm(context,evt)

    if (evt.source_name == "SANDWORM_START_CD_AXIS") then
        ScriptLib.PrintContextLog(context,"## [SandwormControl] action_time_axis_pass：第一次沙虫攻击CD时间结束，开始沙虫攻击")
        if LF_Is_In_Legal_Sandworm_Region(context,LF_Get_Target_Uid(context)) then
            LF_Start_Sandworm_Attack(context)
        else
            ScriptLib.PrintGroupWarning(context,"## [Warning] [SandstormControl] action_time_axis_pass_sandworm：目标玩家不在沙虫区域内且没有切换到合法的目标，异常情况")
        end
    end
    if (evt.source_name == "SANDWORM_CD_AXIS") then
        ScriptLib.PrintContextLog(context,"## [SandwormControl] action_time_axis_pass：沙虫攻击CD结束，开始沙虫攻击")
        if LF_Is_In_Legal_Sandworm_Region(context,LF_Get_Target_Uid(context)) then
            LF_Start_Sandworm_Attack(context)
        else
            ScriptLib.PrintGroupWarning(context,"## [Warning] [SandstormControl] action_time_axis_pass_sandworm：目标玩家不在沙虫区域内且没有切换到合法的目标，异常情况")
        end
    end
    return 0
end

function action_variable_change_sandworm(context,evt)

    return 0
end


function action_enter_region_sandworm(context,evt)
    if LF_Is_Region_Specific_Region(context,"SandwormRegion",evt.param1) then
        ScriptLib.PrintContextLog(context,"## [SandwormControl] action_enter_region_sandworm：玩家进入沙虫区域")
        if LF_Is_In_Sandstorm_State(context) then
            local players_in_region = LF_Get_All_Legal_Player_Uid_In_Legal_Sandworm_Region(context)
            ScriptLib.PrintContextLog(context,"## [SandwormControl] action_enter_region_sandworm：当前沙虫区域内玩家数为"..#players_in_region)
            if #players_in_region <= 1 then
                --如果当前玩家是第一个进入沙虫区域的玩家，将沙虫的目标锁定为该玩家
                ScriptLib.PrintContextLog(context,"## [SandwormControl] action_enter_region_sandworm：玩家"..players_in_region[1].."为当前沙尘暴中第一个进入沙虫区域的，将其设为目标")
                LF_Set_Target_Uid(context,players_in_region[1])
            end
            --如果没有存档，说明是当前沙尘暴第一次进入沙虫区域，开启第一个CD阶段
            if not LF_Has_Sandworm_Axis_Saves(context) then
                ScriptLib.PrintContextLog(context,"## [SandwormControl] action_enter_region_sandworm：没有存档，开始初始化第一次沙虫攻击CD阶段")
                LF_Set_Time_Axis(context,"SANDWORM_START_CD_AXIS",{save_prefix = "sandworm"})
                LF_Set_Sandworm_State(context,1)
            else
                --如果有存档，直接加载存档
                ScriptLib.PrintContextLog(context,"## [SandwormControl] action_enter_region_sandworm：有存档，开始加载存档时间轴")
                LF_Load_Sandworm_Saves(context)
            end
        end
    end

    return 0
end

function action_leave_region_sandworm(context,evt)
    if LF_Is_Region_Specific_Region(context,"SandwormRegion",evt.param1) then
        ScriptLib.PrintContextLog(context,"## [SandwormControl] action_leave_region_sandworm：玩家离开沙虫区域")
        if LF_Is_In_Sandstorm_State(context) then
            --先停止当前的沙虫攻击
            if LF_Get_Sandworm_State(context) == 3 then
                ScriptLib.PrintContextLog(context,"## [SandwormControl] action_leave_region_sandworm：停止当前沙虫攻击")
                LF_Stop_Sandworm_Attack(context)
            end
            local players_in_region = LF_Get_All_Legal_Player_Uid_In_Legal_Sandworm_Region(context) 
            ScriptLib.PrintContextLog(context,"## [SandwormControl] action_leave_region_sandworm：当前沙虫区域内玩家数为"..#players_in_region)
            if #players_in_region >= 1 and evt.uid == LF_Get_Target_Uid(context) then
                ScriptLib.PrintContextLog(context,"## [SandwormControl] action_leave_region_sandworm：有玩家离开区域，重新设置沙虫目标为"..players_in_region[1])
                LF_Set_Target_Uid(context,players_in_region[1])
            elseif #players_in_region <= 0 then
                ScriptLib.PrintContextLog(context,"## [SandwormControl] action_leave_region_sandworm：所有玩家全部离开沙虫区域，存档时间轴")

                local sandworm_state = ScriptLib.GetGroupVariableValue(context,"sandworm_state")
                if sandworm_state == 1 then
                    ScriptLib.PrintContextLog(context,"## [SandwormControl] action_leave_region_sandworm：当前为初始CD状态，存档时间轴")
                    ScriptLib.EndTimeAxis(context,"SANDWORM_START_CD_AXIS")
                    LF_Save_Sandworm_Saves(context)
                elseif sandworm_state == 2 then 
                    ScriptLib.PrintContextLog(context,"## [SandwormControl] action_leave_region_sandworm：当前为常规CD状态，存档时间轴")
                    ScriptLib.EndTimeAxis(context,"SANDWORM_CD_AXIS")
                    LF_Save_Sandworm_Saves(context)
                elseif sandworm_state == 3 then
                    ScriptLib.PrintContextLog(context,"## [SandwormControl] action_leave_region_sandworm：当前为沙虫攻击状态，什么都不需要存。下次加载时直接开始CD即可")
                end
                
            end
        end
    end
    return 0
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      沙虫存档                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Save_Sandworm_Saves(context)
    ScriptLib.PrintContextLog(context,"## [SandwormControl]LF_Save_Sandworm_State：开始存储当前时间轴状态")
    local current_time = ScriptLib.GetServerTime(context)
    local last_start_time = ScriptLib.GetGroupVariableValue(context,"sandworm_last_axis_start_time")
    local last_last_time = ScriptLib.GetGroupVariableValue(context,"sandworm_last_axis_last_time")
    local remain_time = last_last_time - (current_time - last_start_time)

    ScriptLib.PrintContextLog(context,"## [SandwormControl] LF_Save_Sandworm_State：剩余时间为"..remain_time)
    ScriptLib.SetGroupVariableValue(context,"sandworm_last_axis_remain_time",remain_time)

    ScriptLib.SetGroupVariableValue(context,"has_sandworm_axis_saves", 1)
end


function LF_Load_Sandworm_Saves(context)

    ScriptLib.PrintContextLog(context,"## [SandwormControl]LF_Load_Sandworm_State：开始恢复时间轴状态")
    local remain_time =  ScriptLib.GetGroupVariableValue(context,"sandworm_last_axis_remain_time")
    local sandworm_state = ScriptLib.GetGroupVariableValue(context,"sandworm_state")

    if sandworm_state == 1 then
        ScriptLib.PrintContextLog(context,"## [SandwormControl]LF_Load_Sandworm_State：之前处于起始CD状态，恢复起始CD剩余时间"..remain_time.."秒")
        LF_Set_Time_Axis(context,"SANDWORM_START_CD_AXIS",{save_prefix = "sandworm", target_time = remain_time})
    elseif sandworm_state == 2 then 
        ScriptLib.PrintContextLog(context,"## [SandwormControl]LF_Load_Sandworm_State：之前处于CD状态，恢复CD剩余时间"..remain_time.."秒")
        LF_Set_Time_Axis(context,"SANDWORM_CD_AXIS",{save_prefix = "sandworm", target_time = remain_time})
    elseif sandworm_state == 3 then
        ScriptLib.PrintContextLog(context,"## [SandwormControl]LF_Load_Sandworm_State：之前处于沙虫攻击状态，加载时直接进入CD阶段")
        LF_Set_Time_Axis(context,"SANDWORM_CD_AXIS",{save_prefix = "sandworm"})
        LF_Set_Sandworm_State(context,2)
    end


end


function LF_Has_Sandworm_Axis_Saves(context)
    return ScriptLib.GetGroupVariableValue(context,"has_sandworm_axis_saves") == 1
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      沙虫流程                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--


function LF_Start_Sandworm_Phase(context)
    ScriptLib.PrintContextLog(context,"## [SandwormControl]LF_Start_Sandworm_Phase：=====================================================")
    ScriptLib.PrintContextLog(context,"## [SandwormControl]LF_Start_Sandworm_Phase：沙尘暴开始，开始准备沙虫攻击相关逻辑")
    local players_in_region = LF_Get_All_Legal_Player_Uid_In_Legal_Sandworm_Region(context)
    if #players_in_region <= 0 then
        ScriptLib.PrintContextLog(context,"## [SandwormControl]LF_Start_Sandworm_Phase：沙虫区域没有玩家，等玩家enter region时再开始沙虫攻击")
    else
        ScriptLib.PrintContextLog(context,"## [SandwormControl]LF_Start_Sandworm_Phase：沙虫区域内有玩家"..players_in_region[1].."，初始化第一次沙虫攻击CD")
        LF_Set_Target_Uid(context,players_in_region[1])
        LF_Set_Time_Axis(context,"SANDWORM_START_CD_AXIS",{save_prefix = "sandworm"})
        LF_Set_Sandworm_State(context,1)
    end
end


function LF_Stop_Sandworm_Phase(context)
    LF_Stop_Sandworm_Attack(context)
    ScriptLib.SetGroupVariableValue(context,"has_sandworm_axis_saves",0)
    ScriptLib.EndTimeAxis(context,"SANDWORM_START_CD_AXIS")
    ScriptLib.EndTimeAxis(context,"SANDWORM_CD_AXIS")
    ScriptLib.PrintContextLog(context,"## [SandwormControl]LF_Start_Sandworm_Phase：沙尘暴结束，清理沙虫攻击相关逻辑")
    ScriptLib.PrintContextLog(context,"## [SandwormControl]LF_Start_Sandworm_Phase：=====================================================")
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      沙虫控制                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--


--开启一次沙虫攻击
function LF_Start_Sandworm_Attack(context)
    local target_uid = LF_Get_Target_Uid(context) 
    ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Start_Sandworm_Attack：在玩家"..target_uid.."附近开启一次沙虫袭击")
    LF_Create_Sandworm(context,target_uid)
    LF_Set_Sandworm_State(context,3)
end

--关闭当前的沙虫攻击
function LF_Stop_Sandworm_Attack(context)
    ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Start_Sandworm_Attack：沙虫袭击结束")
    LF_Remove_Sandworm(context)
end



--在指定玩家身边生成一只沙虫
function LF_Create_Sandworm(context,target_uid)
    ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Create_Sandworm：在玩家"..target_uid.."附近创建沙虫")
    local owner_eid = ScriptLib.GetAvatarEntityIdByUid(context,target_uid)
    local pos = ScriptLib.GetPosByEntityId(context,owner_eid)
    local rpos =  LF_Get_Random_Neighbour(context,pos,sandworm_config.min_raidus,sandworm_config.max_radius)
    ScriptLib.CreateGadgetByConfigIdByPos(context,sandworm_config.sandworm_id,{x=rpos.x,y=rpos.y+1.5,z=rpos.z}, {x=0,y=0,z=0})
end

--清理当前生成的沙虫（有且只有一只）
function LF_Remove_Sandworm(context)
    ScriptLib.PrintContextLog(context,"## [SandstormControl] LF_Remove_Sandworm：移除当前沙虫")
    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, sandworm_config.sandworm_id)
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
||                      CRUD方法                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--


--设置沙虫状态
function LF_Set_Sandworm_State(context,state)
    ScriptLib.SetGroupVariableValue(context,"sandworm_state",state)
end

--获取沙虫状态
function LF_Get_Sandworm_State(context)
    return ScriptLib.GetGroupVariableValue(context,"sandworm_state")
end

--设置目标玩家uid
function LF_Set_Target_Uid(context,uid)
    ScriptLib.SetGroupVariableValue(context,"target_uid",uid)
end

--获取目标玩家uid
function LF_Get_Target_Uid(context)
    return ScriptLib.GetGroupVariableValue(context,"target_uid")
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      server lua call                            ||
||                                                                 ||
-----------------------------------------------------------------]]--

--客户端通知沙虫攻击完成
function SLC_Sandworm_Attack_Finish(context)
    ScriptLib.PrintContextLog(context,"## [SandstormControl] SLC_Sandworm_Attack_Finish：沙虫攻击完成SLC")
    LF_Stop_Sandworm_Attack(context)
    if LF_Is_In_Sandstorm_State(context) then
        LF_Set_Time_Axis(context,"SANDWORM_CD_AXIS",{save_prefix = "sandworm"})
        LF_Set_Sandworm_State(context,2)
    end
    return 0
end

--沙虫上给player的modifier。它会通过SLC来同步服务端自己所选择的目标玩家uid
function SLC_Sandworm_Set_Target_Player(context)
    ScriptLib.PrintContextLog(context,"## [SandstormControl] SLC_Sandworm_Set_Target_Player：沙虫设置自己的目标player")
    LF_Set_Target_Uid(context,context.uid)
    return 0
end



------------------------------------------------------------------

Initialize()