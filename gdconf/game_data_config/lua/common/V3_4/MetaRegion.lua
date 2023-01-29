--[[======================================
||	filename:	MetaRegion
||	owner: 		luyao.huang
||	description:	3.3MetaRegion逻辑。由多个region拼成的大型region
||	LogName:	MetaRegion
||	Protection:	
=======================================]]--



--是否属于特定大区域
function LF_Is_In_Meta_Region(context,uid,metaRegionName)

    local metaRegion = MetaRegions[metaRegionName]
    if metaRegion == nil then
        ScriptLib.PrintGroupWarning(context,"## [Warning] [SandstormControl] LF_Is_In_Meta_Region：传入非法MetaRegion名"..metaRegionName)
        return nil
    end

    for k,v in pairs(metaRegion) do
        if ScriptLib.IsInRegion(context,uid,v) == true then
            return true
        end
    end
    return false
end



--获取特定玩家当前所在沙尘暴区域的名字
function LF_Get_SandStorm_Region(context,uid)
    if LF_Is_In_Meta_Region(context,uid,"SandStorm_InnerRegion") then
        return "SandStorm_InnerRegion"
    end
    if LF_Is_In_Meta_Region(context,uid,"SandStorm_MiddleRegion") then
        return "SandStorm_MiddleRegion"
    end
    if LF_Is_In_Meta_Region(context,uid,"SandStorm_OuterRegion") then
        return "SandStorm_OuterRegion"
    end
    return "SandStorm_Outside"
end


--是否处于沙尘暴区域
function LF_Is_In_SandStorm_Region(context,uid)
    if LF_Get_SandStorm_Region(context,uid) ~= nil and LF_Get_SandStorm_Region(context,uid) ~= "SandStorm_Outside" then
        return true
    end
    return false
end


--是否位于合法的沙虫区域（计算了沙虫区域的洞）
function LF_Is_In_Legal_Sandworm_Region(context,uid)
    if LF_Is_In_Meta_Region(context,uid,"SandwormRegion") and not LF_Is_In_Meta_Region(context,uid,"SandwormHoleRegion") then
        return true
    end
    return false
end


--获取第一个合法的在沙尘暴区域内的玩家uid（支持联机，从主机开始往后排）
function LF_Get_Legal_Player_Uid_In_SandStorm_Region(context)
    local uid_list = ScriptLib.GetSceneUidList(context)
    for i = 1, #uid_list do
        local uid = uid_list[i]
        if LF_Is_In_SandStorm_Region(context,uid) then
            return uid
        end
    end
    --无人在沙尘暴中
    return -1
end

--获取第一个合法的在沙尘暴区域内的玩家所在的圈（支持联机，从主机开始往后排）
function LF_Get_Legal_Player_Region_In_SandStorm_Region(context)

    local uid = LF_Get_Legal_Player_Uid_In_SandStorm_Region(context)

    if uid ~= -1 then
        return LF_Get_SandStorm_Region(context,uid)
    else
        return "SandStorm_Outside"
    end
end

--是否至少有一个人在沙尘暴区域内
function LF_Is_Any_Player_In_SandStorm_Region(context)
    return LF_Get_Legal_Player_Uid_In_SandStorm_Region(context) ~= -1 
end


--找到所有在沙尘暴区域内的玩家，支持联机
function LF_Get_All_Player_Uid_In_SandStorm_Region(context)
    local uid_list = ScriptLib.GetSceneUidList(context)
    local ret_uid_list = {}
    for i = 1, #uid_list do
        local uid = uid_list[i]
        if LF_Is_In_SandStorm_Region(context,uid) then
            table.insert(ret_uid_list,uid)
        end
    end
    return ret_uid_list
end

function LF_Get_All_Legal_Player_Uid_In_Legal_Sandworm_Region(context)
    local player_in_sandstorm_list = LF_Get_All_Player_Uid_In_SandStorm_Region(context)
    local ret_uid_list = {}
    for i = 1, #player_in_sandstorm_list do
        local uid = player_in_sandstorm_list[i]
        if LF_Is_In_Legal_Sandworm_Region(context,uid) then
            table.insert(ret_uid_list,uid)
        end
    end
    return ret_uid_list
end


--获取第一个合法的在沙虫区域内的玩家uid（支持联机，随机抽取一个）
function LF_Get_Legal_Player_Uid_In_Legal_Sandworm_Region(context)
    local player_in_sandstorm_list = LF_Get_All_Player_Uid_In_SandStorm_Region(context)
    local ret_uid_list = {}
    for i = 1, #player_in_sandstorm_list do
        local uid = player_in_sandstorm_list[i]
        if LF_Is_In_Legal_Sandworm_Region(context,uid) then
            table.insert(ret_uid_list,uid)
        end
    end
    if #ret_uid_list ~= 0 then
        return LF_Get_Random_Value_In_Table(ret_uid_list)
    else
        return -1
    end
end


--判断是否有玩家位于合法沙虫区域内
function LF_Is_Any_Player_In_Legal_Sandworm_Region(context)
    return LF_Get_Legal_Player_Uid_In_Legal_Sandworm_Region(context) ~= -1
end


--判断一个config_id的region是否是特定的区域region
function LF_Is_Region_Specific_Region(context,region_name,region_id)
    
    return LF_Is_In_Table(MetaRegions[region_name], region_id)
end







--判断元素是否属于表
function LF_Is_In_Table(t,key)
    for i = 1,#t do
        if (t[i] == key) then
            return true
        end
    end
    return false
end




--从table中随机抽取一个元素，均匀分布
function LF_Get_Random_Value_In_Table(t)
    local r = math.random(#t)
    return t[r]
end
