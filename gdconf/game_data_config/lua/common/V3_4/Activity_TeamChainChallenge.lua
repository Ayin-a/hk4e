--ServerUploadTool Save to [/root/env/data/lua/common/V3_4]
--======================================================================================================================
--||   Filename      ||    Activity_TeamChainChallenge
--||   RelVersion    ||    V3_4
--||   Owner         ||    shuo-yu
--||   Description   ||    
--||   LogName       ||    ##[Activity_TeamChainChallenge]
--||   Protection    ||    
--======================================================================================================================
--Defs & Miscs || 需要LD配置的内容
-- local defs =
-- {
--     starter_gadget = 0,
--     gallery_id = 0,
--     teleportPos_id = 0,
--     groups_info = 
--     {
--         [1] = {id = 1, monster_num = 10,},
--         [2] = {id = 2, monster_num = 10,},
--         [3] = {id = 3, monster_num = 10,},
--         [4] = {id = 4, monster_num = 10,},
--     },
-- }

--======================================================================================================================
--Events || Group内EVENT事件,记得初始化和return 0

--======================================================================================================================
--ServerLuaCalls || 物件SLC,记得return 0

--======================================================================================================================
--LevelFunctions || 自定义函数

local Tri = {
    
    --主控group加载 初始化所有玩法group
    { config_id = 34000010, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
    --所有玩家死掉 触发关卡失败 
    { config_id = 34000020, name = "dungeon_all_avatar_die", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "condition_dungeon_all_avatar_die", action = "action_dungeon_all_avatar_die", trigger_count = 0 },
    --变量变化 开启或停止玩法 GALLERY_STATE： 0未开启 1开启 2子阶段成功 3子阶段失败
    { config_id = 34000030, name = "variable_change", event = EventType.EVENT_VARIABLE_CHANGE, source = "GALLERY_STATE", condition = "", action = "action_variable_change", trigger_count = 0 },
    --任一怪物死亡 触发怪物计分变化
    { config_id = 34000040, name = "dungeon_any_monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "GALLERY_STATE", condition = "", action = "action_any_monster_die", trigger_count = 0 },
    --时间轴开启时传送 结束后触发下一玩法group加载
    { config_id = 34000050, name = "time_axis_pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0 },
}

function TeamChain_Initialize()
    
    LF_InsertTriggers(Tri,1)
    --子阶段开启结束Var 0未开启 1开启 2子阶段成功 3子阶段失败
    --table.insert(variables,{ config_id=50000001,name = "GALLERY_STATE", value = 0, no_refresh = true})
    --关卡内GroupIndex 1主控Group 2~4阶段Group
    table.insert(variables,{ config_id=50000002,name = "GROUP_INDEX", value = 1, no_refresh = true})
end

------------------------------------------------------------------


--主控group load后 初始化玩法
function action_group_load(context,evt)
    LF_PrintLog(context,"action_group_load：主控group加载，初始化玩法")
    LF_InitPlay(context)
    return 0
end

--判断是否所有玩家都死了
function condition_dungeon_all_avatar_die(context,evt)
    local uid_list = ScriptLib.GetSceneUidList(context)

    local ret = 0
    
    for i,v in ipairs(uid_list) do
        local is_all_dead = ScriptLib.IsPlayerAllAvatarDie(context, v)
        if true ~= is_all_dead then 
            ret = -1
            break
        end
    end
    
    if ret ~= 0 then
        return false
    end
    
    return true
end

--玩家全部死亡结束玩法并设置失败
function action_dungeon_all_avatar_die(context,evt)
    LF_PrintLog(context,"action_dungeon_all_avatar_die: 所有玩家的所有角色都死掉")
    LF_StopPlay(context,false)

    return 0
end

--有怪物死亡更新显示
function action_any_monster_die(context,evt)
    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["kill_monster_cnt"] = 1})
    
    return 0
end

--GALLERY_STATE变化 0待机 1开启玩法 2结束玩法并设置成功 3结束玩法并设置失败 
function action_variable_change(context,evt)
    LF_PrintLog(context,"设置参数")
    LF_PrintLog(context,tostring(evt.param1))
    if evt.param1 == 1 then
        LF_StartPlay(context)
    elseif evt.param1 == 2 then
        LF_StopPlay(context, true)
    elseif evt.param1 == 3 then
        LF_StopPlay(context, false)
    end
    return 0
end

--时间轴结束 加载下一玩法group
function action_time_axis_pass(context,evt)
    if evt.source_name == "teleport" then
        local index = LF_GetGroupIndex(context)

        if index == -1 then
            LF_PrintLog(context,"Axis Pass Failed: table越界")
            return 0
        end
        LF_PrintLog(context,"传送结束")
        LF_InitNextGroup(context,index)
    end

    return 0
end

--ServerLuaCall
--操作台点对应选项 开启玩法
function SLC_Activity_TeanChainChallenge_StartPlay(context)
    -- 触发挑战trigger
    ScriptLib.SetGroupVariableValue(context,"GALLERY_STATE",1)
    LF_SetWorkTopActive(context, false)
    return 0
end

--LF Func
function LF_PrintLog(context, content)
    local log = "## [Activity_TeamChainChallenge] TD: "..content
    ScriptLib.PrintContextLog(context, log)
end

--初始化玩法 加载所有玩法group
function LF_InitPlay(context)

    for k,v in pairs(defs.groups_info) do
        ScriptLib.RefreshGroup(context, { group_id = v.id, suite = 1 })
        LF_PrintLog(context,"加载玩法group,id: ".. v.id)
    end
    
    LF_InitNextGroup(context,1)

    return 0
end

--开启玩法 启动gallery 切换当前玩法group suite至2 传怪物数目
function LF_StartPlay(context)
    --先尝试启动gallery，如果未成功，则直接返回
    if (ScriptLib.SetPlayerStartGallery(context, defs.gallery_id, ScriptLib.GetSceneUidList(context)) ~= 0) then
        return 0
    end
    
    LF_PrintLog(context,"开启gallery"..defs.gallery_id)

    local index = LF_GetGroupIndex(context)

    if index == -1 then
        LF_PrintLog(context,"StartPlay Failed: table越界")
        return 0
    end

    ScriptLib.AddExtraGroupSuite(context,defs.groups_info[index].id,2)
    LF_PrintLog(context,"加载下个group,id: ".. defs.groups_info[index].id)

    ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["total_kill_cnt"] = defs.groups_info[index].monster_num})

    return 0
end
--结束玩法 成功初始化下一group 失败直接cause dungeon fail
function LF_StopPlay(context, is_success)
    local index = LF_GetGroupIndex(context)

    if index == -1 then
        LF_PrintLog(context,"StopPlay Failed: table越界")
        return 0
    end

    if (is_success) then
        --成功通关
        LF_PrintLog(context,"成功通关阶段"..(index))
        ScriptLib.StopGalleryByReason(context,defs.gallery_id,3)

        local mPos = {x=LF_GetPointPos(context, defs.teleportPos_id).x,
        y=LF_GetPointPos(context, defs.teleportPos_id).y,
        z=LF_GetPointPos(context, defs.teleportPos_id).z,}

        if index < 4 then
            ScriptLib.TransPlayerToPos(context, {uid_list =ScriptLib.GetSceneUidList(context), 
                pos = mPos,
                radius = 0, rot = LF_GetPointRot(context, defs.teleportPos_id)})
            ScriptLib.InitTimeAxis(context, "teleport", {1}, false)
           
        elseif index == 4 then
            LF_PrintLog(context,"成功通关大关")
            LF_ResetAllVars(context)
            ScriptLib.CauseDungeonSuccess(context)
        end

    else
        --失败
        LF_PrintLog(context,"失败")
        ScriptLib.StopGalleryByReason(context,defs.gallery_id,4)
        ScriptLib.CauseDungeonFail(context)
        LF_ResetAllVars(context)
    end

    return 0
end

--清理当前group 更改GROUP_INDEX为下阶段 GALLERY_STATE重置回待命
function LF_InitNextGroup(context,index)

    if index ~= 1 then
        ScriptLib.RefreshGroup(context, { group_id = defs.groups_info[index].id, suite = 1 })
        LF_PrintLog(context,"清空当前group,id: ".. defs.groups_info[index].id)
    end

    index = index + 1
    ScriptLib.SetGroupVariableValue(context,"GROUP_INDEX",index)
    LF_PrintLog(context,"下阶段为：["..index.."]")

    LF_SetWorkTopActive(context, true)
    ScriptLib.SetGroupVariableValue(context,"GALLERY_STATE",0)
    return 0

end

--设置操作台状态
function LF_SetWorkTopActive(context, is_active)
    LF_PrintLog(context, "更新gadget信息")
    if (is_active) then
        ScriptLib.SetGadgetStateByConfigId(context, defs.starter_gadget, GadgetState.Default) 
    else
        ScriptLib.SetGadgetStateByConfigId(context, defs.starter_gadget, GadgetState.GearStop) 
    end
    LF_PrintLog(context,"设置操作台"..(is_active and "显示" or "隐藏"))
    LF_PrintLog(context, "更新gadget信息完毕")
    return 0
end

--重置所有variable value
function LF_ResetAllVars(context)
    ScriptLib.SetGroupVariableValue(context,"GROUP_INDEX",1)
    ScriptLib.SetGroupVariableValue(context,"GALLERY_STATE",0)
end

--插入trigger
function LF_InsertTriggers(TempTrigger,suiteIndex) 
    if suiteIndex <= 0 or suiteIndex > #suites then
        return -1
    end

    for k,v in pairs(TempTrigger) do
        table.insert(triggers,v)
        table.insert(suites[suiteIndex].triggers,v.name)
    end
    return 0
end

--获取Point Pos Vec3
function LF_GetPointPos(context,point_id)
    for k,v in pairs(points) do
        if v.config_id == point_id then 
            return v.pos
        end
    end

    return 0
end

--获取Point Rot Vec3
function LF_GetPointRot(context,point_id)

    for k,v in pairs(points) do
        if v.config_id == point_id then 
            return v.rot
        end
    end

    return 0
end

--获取当前group index 越界返回-1
function LF_GetGroupIndex(context)
    local index = ScriptLib.GetGroupVariableValue(context, "GROUP_INDEX")

    if index > 4 or index < 1 then
        --reset
        LF_PrintLog(context,"Groups下标越界"..index)
        return -1
    end
    return index
end
------------------------------------------------------------------
TeamChain_Initialize()