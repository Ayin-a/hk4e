
--[[======================================
||	filename:	SandwormToolkit
||	owner: 		luyao.huang
||	description:	整合了各类沙虫控制方法，可以直接调用或通过tpl调用
||	LogName:	SandwormToolkit
||	Protection:	
=======================================]]--


--local defs = {
--	alert_max_value = 1000,
--	normal_sandworm_id = 1030,
--	direct_sandworm_id = 1035,
--	business_type = "bigworld"
--}





local local_defs = 
{
    sandworm_manager_group = 133314001,
}



local toolkit_Tri = {
    [1] = { name = "platform_arrival_toolkit", config_id = 900010001, event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", condition = "", action = "action_platform_arrival_toolkit", trigger_count = 0},
}

function toolkit_Initialize()
    for k,v in pairs(toolkit_Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    table.insert(variables,{ config_id = 900020001,  name = "is_sandworm_alive", value = 0})
end
--[[-----------------------------------------------------------------
||                                                                 ||
||                      创生沙虫                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

--能否创建沙虫？
--比较当前优先级和当前占用沙虫的group的优先级。如果优先级较高则允许这里创建，并让另外一边的沙虫销毁，否则无视这条请求，不允许创建
function LF_Try_Create_Sandworm(context)
    return ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_manager_group,"LF_Request_Create_Sandworm",{base_info.group_id,priority}) == 0
end

--召唤沙虫的对外接口
--召唤一只移动表演用沙虫
function LF_Summon_Move_Sandworm(context,attack_times)
    ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Summon_Move_Sandworm: 请求创生一个移动表演沙虫")
    if defs.move_sandworm_id == nil then
        ScriptLib.PrintGroupWarning(context,"## [SandwormToolkit] LF_Summon_Move_Sandworm: 请求失败，没有填写一个直接攻击沙虫！！")
        return -1
    end
    if LF_Try_Create_Sandworm(context) then
        ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Summon_Move_Sandworm: 当前沙虫未被占用，开始创建")
        LF_Create_Move_Sandworm(context,attack_times)
        ScriptLib.SetGroupVariableValue(context,"is_sandworm_alive",1)
        LF_On_Create_Sandworm_Success(context)
        return 0
    else
        ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Summon_Move_Sandworm: 当前沙虫被占用，创建失败")
        LF_On_Create_Sandworm_Fail(context)
        return -1
    end
end

--命令巡游沙虫进行攻击
--如果巡游沙虫在场，则直接命令这个gadget发动一次攻击
--如果不在场，则直接在随机位置生成沙虫后向玩家攻击
function LF_Command_Move_Sandworm_Attack(context,attack_times)
    local is_sandworm_alive = ScriptLib.GetGroupVariableValue(context,"is_sandworm_alive") == 1
    if is_sandworm_alive then
        --如果当前沙虫在场，直接命令沙虫向玩家发动一次攻击
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.move_sandworm_id, "SGV_Shoot_Sandworm", 1)
    else
        --如果当前沙虫不在场，召出沙虫以后再命令其向玩家发动一次攻击
        if LF_Try_Create_Sandworm(context) then
            ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Command_Move_Sandworm_Attack: 当前沙虫未被占用，开始创建")
            local point_list = {}
            for i = 1, sandworm_point_array.max_point do
                table.insert(point_list,i)
            end

            local point_info_list = LF_Get_Point_Info_List(context,sandworm_point_array.point_array,point_list)
            local born_point = LF_Get_Random_Point(context,point_info_list,{})
            local born_pos = born_point.pos
            ScriptLib.CreateGadgetByParamTable(context,{config_id = defs.move_sandworm_id,pos = {x=born_pos.x,y=born_pos.y,z=born_pos.z}, rot = {x=0,y=0,z=0}, 
                sgv_key = {"SGV_Attack_Times","SGV_Shoot_Sandworm"}, sgv_value = {attack_times,0}})
                ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.move_sandworm_id, "SGV_Shoot_Sandworm", 1)
            LF_On_Create_Sandworm_Success(context)
        else
            ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Command_Move_Sandworm_Attack: 当前沙虫被占用，创建失败")
            LF_On_Create_Sandworm_Fail(context)
            return -1
        end

    end
end




--在指定位置召唤一只直接攻击沙虫
function LF_Summon_Direct_Sandworm(context,pos,attack_times)
    ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Summon_Direct_Sandworm: 请求创生一只直接攻击沙虫")
    if defs.direct_sandworm_id == nil then
        ScriptLib.PrintGroupWarning(context,"## [SandwormToolkit] LF_Summon_Direct_Sandworm: 请求失败，没有填写一个直接攻击沙虫！！")
        return -1
    end
    if LF_Try_Create_Sandworm(context) then
        ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Summon_Direct_Sandworm: 当前沙虫未被占用，开始创建")
        LF_Create_Direct_Sandworm(context,pos,attack_times,1)
        ScriptLib.SetGroupVariableValue(context,"is_sandworm_alive",2)
        LF_On_Create_Sandworm_Success(context)
        return 0
    else
        ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Summon_Direct_Sandworm: 当前沙虫被占用，创建失败")
        LF_On_Create_Sandworm_Fail(context)
        return -1
    end
end


--在玩家脚下召唤一只直接攻击沙虫
function LF_Summon_Direct_Sandworm_By_Avatar(context,uid,attack_times)
    ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Summon_Direct_Sandworm_By_Avatar: 在玩家脚下创生一只直接攻击沙虫")
    local owner_eid = ScriptLib.GetAvatarEntityIdByUid(context,uid)
    local pos = ScriptLib.GetPosByEntityId(context,owner_eid)
    ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Summon_Direct_Sandworm_By_Avatar: 请求创生在玩家脚下创生直接攻击沙虫")
    if defs.direct_sandworm_id == nil then
        ScriptLib.PrintGroupWarning(context,"## [SandwormToolkit] LF_Summon_Direct_Sandworm_By_Avatar: 请求失败，没有填写一个直接攻击沙虫！！")
        return -1
    end
    if LF_Try_Create_Sandworm(context) then
        ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Summon_Direct_Sandworm_By_Avatar: 当前沙虫未被占用，开始创建")
        LF_Create_Direct_Sandworm(context,pos,attack_times,1)
        ScriptLib.SetGroupVariableValue(context,"is_sandworm_alive",1)
        LF_On_Create_Sandworm_Success(context)
        return 0
    else
        ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Summon_Direct_Sandworm_By_Avatar: 当前沙虫被占用，创建失败")
        LF_On_Create_Sandworm_Fail(context)
        return -1
    end
end
--------------------------------------------------------------------------------------------------------------------



--召唤沙虫的实现接口
--创建一只移动沙虫
function LF_Create_Move_Sandworm(context,attack_times)
    
    ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Create_Move_Sandworm: 创建一只移动表演用沙虫")


    local point_list = {}
    for i = 1, sandworm_point_array.max_point do
        table.insert(point_list,i)
    end

    local point_info_list = LF_Get_Point_Info_List(context,sandworm_point_array.point_array,point_list)
    local born_point = LF_Get_Random_Point(context,point_info_list,{})
    local born_pos = born_point.pos
    ScriptLib.CreateGadgetByParamTable(context,{config_id = defs.move_sandworm_id,pos = {x=born_pos.x,y=born_pos.y,z=born_pos.z}, rot = {x=0,y=0,z=0}, 
        sgv_key = {"SGV_Attack_Times"}, sgv_value = {attack_times}})
    local black_list = {born_point.point_id}   
    local target_point = LF_Get_Random_Point(context,point_info_list,black_list)
    ScriptLib.SetPlatformPointArray(context,defs.move_sandworm_id, sandworm_point_array.point_array, {target_point.point_id}, { route_type = 0,turn_mode=false, record_mode = 2 })
end


function action_platform_arrival_toolkit(context,evt)

    if evt.param1 == defs.move_sandworm_id then

        local point_list = {}
        for i = 1, sandworm_point_array.max_point do
            table.insert(point_list,i)
        end
    
        local point_info_list = LF_Get_Point_Info_List(context,sandworm_point_array.point_array,point_list)
        local target_point = LF_Get_Random_Point(context,point_info_list,{})

        ScriptLib.PrintContextLog(context,"## [SandwormToolkit] action_platform_arrival_sandworm：移动沙虫目标点为："..target_point.point_id)

        ScriptLib.SetPlatformPointArray(context,defs.move_sandworm_id, sandworm_point_array.point_array, {target_point.point_id}, { route_type = 0,turn_mode=false, record_mode = 2 })
    end
    return 0
end



--在指定地点创建一只直接攻击沙虫
function LF_Create_Direct_Sandworm(context,pos,attack_times,target_stragety)
    ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Create_Direct_Sandworm: 创建一只直接攻击用沙虫")
    --ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Create_Direct_Sandworm: direct_sandworm_id参数为"..defs.direct_sandworm_id)
    --ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Create_Direct_Sandworm: pos参数为"..pos.x..","..pos.y..","..pos.z)
    --ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Create_Direct_Sandworm: attack_times参数为"..attack_times)
    --ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Create_Direct_Sandworm: target_stragety参数为"..target_stragety)
    local ret = ScriptLib.CreateGadgetByParamTable(context,{config_id = defs.direct_sandworm_id,pos = {x=pos.x,y=pos.y,z=pos.z}, rot = {x=0,y=0,z=0}, 
        sgv_key = {"SGV_Attack_Times","SGV_Target_Stragety"}, sgv_value = {attack_times,target_stragety}})
    --ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Create_Direct_Sandworm: 创建结果为"..ret)
end




--清理移动沙虫
function LF_Remove_Move_Sandworm(context)
    if defs.move_sandworm_id ~= nil then
        ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Remove_Move_Sandworm: 清除移动沙虫")
        ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.move_sandworm_id)
        --清除掉沙虫的占用
        ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_manager_group,"LF_Request_Clear_Occupation",{base_info.group_id})
        ScriptLib.SetGroupVariableValue(context,"is_sandworm_alive",0)
        LF_On_Remove_Sandworm(context)
    end
end

--清理直接攻击沙虫
function LF_Remove_Direct_Sandworm(context)
    if defs.direct_sandworm_id ~= nil then
        ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Remove_Direct_Sandworm: 清除直接攻击沙虫")
        ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.direct_sandworm_id)
        --清除掉沙虫的占用
        ScriptLib.ExecuteGroupLua(context,local_defs.sandworm_manager_group,"LF_Request_Clear_Occupation",{base_info.group_id})
        ScriptLib.SetGroupVariableValue(context,"is_sandworm_alive",0)
        LF_On_Remove_Sandworm(context)
    end
end

--清除所有沙虫，不管类型
function LF_Remove_All_Sandworm(context)
    LF_Remove_Move_Sandworm(context)
    LF_Remove_Direct_Sandworm(context)
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      外部调用                                   ||
||                                                                 ||
-----------------------------------------------------------------]]--

--外部调用，请求清除当前group正在使用的沙虫
function LF_Request_Remove_Sandworm_From_Manager(context,prev_context)
    ScriptLib.PrintContextLog(context,"## [SandwormToolkit] LF_Request_Remove_Sandworm：控制group请求，移除当前沙虫")
    LF_Remove_All_Sandworm(context)
    return 0
end



--外部调用，SLC返回沙虫攻击完毕
function SLC_Sandworm_Attack_Finish(context)
    ScriptLib.PrintContextLog(context,"## [SandwormToolkit] SLC_Sandworm_Attack_Finish：SLC：沙虫攻击完毕")
    LF_Remove_All_Sandworm(context)
    LF_On_Attack_Finish(context)
    return 0
end

--外部调用，SLC返回沙虫命中角色
function SLC_Sandworm_Attack_Hit_Avatar(context)
    ScriptLib.PrintContextLog(context,"## [SandwormToolkit] SLC_Sandworm_Attack_Hit_Avatar：沙虫攻击击中玩家")
    LF_On_Attack_Hit_Avatar(context)
    return 0
end

function SLC_Clear_Move_Sandworm_Command(context)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, defs.move_sandworm_id, "SGV_Shoot_Sandworm", 0)
    return 0
end
--[[-----------------------------------------------------------------
||                                                                 ||
||                      沙虫选点                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

--获取特定点阵的所有点信息
function LF_Get_Point_Info_List(context,point_array,point_list)
    local point_info_list = {}
    for i = 1, #point_list do
        local ret,pos,rot=ScriptLib.GetPlatformArrayInfoByPointId(context,point_array, point_list[i])
        local point_info = {point_id = point_list[i], pos = pos, rot = rot}
        table.insert(point_info_list,point_info)
    end
    return point_info_list
end



--找到玩家附近最近的一个点，可以剔除一些点
function LF_Get_Nearest_Point_By_Avatar(context,point_info_list,black_list)
    local nearest_point = -1
    local nearest_distance = 10000000
    for k,v in pairs(point_info_list) do
        if not LF_Is_In_Table(context,v.point_id,black_list) then
            local uid = ScriptLib.GetSceneOwnerUid(context)
            local distance = LF_Get_Point_Avatar_Distance(context,uid,v.pos)
            if distance < nearest_distance then
                nearest_distance = distance
                nearest_point = v
            end
        end
    end
    return nearest_point
end


function LF_Get_Random_Point(context,point_info_list,black_list)
    local target_point_info_list = {}
    for k,v in pairs(point_info_list) do
        if not LF_Is_In_Table(context,v.point_id,black_list) then
            table.insert(target_point_info_list,v)
        end
    end
    local r = math.random(#target_point_info_list)
    return target_point_info_list[r]
end


--[[-----------------------------------------------------------------
||                                                                 ||
||                      杂项方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Get_Point_Avatar_Distance(context,uid,point_pos)
    local owner_eid = ScriptLib.GetAvatarEntityIdByUid(context,uid)
    local pos = ScriptLib.GetPosByEntityId(context,owner_eid)
    return LF_Get_2D_Distance(context,pos,point_pos)
end

function LF_Get_2D_Distance(context,p1,p2)
    return math.sqrt((p1.x-p2.x)*(p1.x-p2.x)+ (p1.z-p2.z)*(p1.z-p2.z))
end



--获取指定位置的随机近邻位置。分布在min_r~max_r为半径的环上
function LF_Get_Random_Neighbour(context,pos,min_r,max_r)
    local random_r = math.random(min_r,max_r)
    local random_a = math.random()*math.pi*2
    local rpos_x = pos.x + random_r * math.cos(random_a)
    local rpos_z = pos.z + random_r * math.sin(random_a)
    local rpos = {x = rpos_x,y = pos.y,z = rpos_z}
    return rpos
end


function LF_Is_In_Table(context,v,t)
    for i = 1, #t do
        if t[i] == v then
            return true
        end
    end
    return false
end




------------------------------------------------------------------
toolkit_Initialize()