--[[======================================
||  filename:   UnstableSpray
||  owner:      shuyi.chang
||  description:    爆炸魔药活动
||  LogName:    ## [UnstableSpray]
||  Protection: 
=======================================]]
--[[
local defs = 
{
    -- 本轮对应的gallery id
    galleryId = 0,

    -- 开启挑战的场景物件id
    startId = 46002,

    -- todo: 临时,挑战区域，进了区域之后加载操作台
    maxRegion = 46027,

    -- 是否是起始group
    isStartLevel = true,

    -- 下一关的group id
    nextGroupId = xxxxx,

    -- 怪物资源包configs，约定好只会有两波怪物潮，配多了也不会刷
    monsterPoolTable = {
        {
            pool_list = {35001},
            point_array_id = 0, 
            point_id_list = {}, 
            affix_list = {}, 
            param = {total_count = 99, min_count = 1, max_count = 3, tag = 0, fill_time = 0, fill_count = 0, is_ordered = false, is_tag_bit_match = false},
        },
        {
            pool_list = {35001},
            point_array_id = 0, 
            point_id_list = {}, 
            affix_list = {}, 
            param = {total_count = 99, min_count = 1, max_count = 3, tag = 0, fill_time = 0, fill_count = 0, is_ordered = false, is_tag_bit_match = false},
        },
    },

    -- 第一波怪物潮持续秒数，不能大于总时间90s
    switchTime = 45,

    -- buff持续时间，通常不需要修改
    buffDuration = 15,

    -- 每轮中每阶段的最大时间（一共有3个阶段，总时长为3*30s = 90s），通常不用改
    stageMaxDuration = 30,
}
--]]

local extraTriggers = 
{	
	{ config_id = 50000001, name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_ENTER_REGION", trigger_count = 0},
    { config_id = 50000002, name = "START_CHALLENGE", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_START_CHALLENGE", trigger_count = 0 },
    { config_id = 50000003, name = "STAGE_COMPLETE", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_STAGE_COMPLETE", trigger_count = 0 },
    { config_id = 50000004, name = "MONSTER_DIE", event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_MONSTER_DIE", trigger_count = 0 },
    { config_id = 50000005, name = "GALLERY_STOP", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_GALLERY_STOP", trigger_count = 0 },
    { config_id = 50000006, name = "DUNGEON_ALL_PLAYER_DIE", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_DUNGEON_ALL_AVATAR_DIE", trigger_count = 0 },
    { config_id = 50000007, name = "VARIABLE_CHANGE", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_VARIABLE_CHANGE", trigger_count = 0 },
    { config_id = 50000008, name = "DUNGEON_SETTLE", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_DUNGEON_SETTLE", trigger_count = 0 },

}

local extraVariables = 
{
    -- 记录目前是第几个三十秒
    { config_id = 5000101, name = "stage", value = 0, no_refresh = false },
    -- 记录自己能不能加载
    { config_id = 5000102, name = "levelEnabled", value = 0, no_refresh = false },
    -- 当前是第几个怪物潮
    { config_id = 5000103, name = "firstTideClose", value = 0, no_refresh = false },

    -- 记录此关用到的buff
    { config_id = 5000201, name = "sgv1", value = 0, no_refresh = false },
    { config_id = 5000202, name = "sgv2", value = 0, no_refresh = false },
    { config_id = 5000203, name = "sgv3", value = 0, no_refresh = false },
    { config_id = 5000204, name = "sgv4", value = 0, no_refresh = false },
}


local worktopField =
{
	configId = 10460099,
	gadgetId = 70360001,
	optionId = 429,
}

-- local transParam = 
-- {
--     pos = {x = 0, y = 0, z = 0},
--     rot = {x = 0, y = 0, z = 0},
--     radius = 1,
-- }

-- local offset = {x = 0, y = 0, z = 0}

-- local worktop = { config_id = worktopField.configId, gadget_id = worktopField.gadgetId, pos = gadgets[defs.startId].pos, rot = gadgets[defs.startId].rot, level = 1, area_id = gadgets[defs.startId].area_id, worktop_config = { init_options = { worktopField.optionId } } }

--================================================================
-- Local Functions
--================================================================
function LF_Initialize_Group(triggers, suites, variables, gadgets, regions)

    -- insert triggers
    for i = 1, #extraTriggers do
        table.insert(triggers, extraTriggers[i])
    end

    -- add triggers to suite
    for i = 1, #extraTriggers do
        table.insert(suites[1].triggers,extraTriggers[i].name)

    end

    -- insert variables
    for i = 1, #extraVariables do
        table.insert(variables, extraVariables[i])
    end

    -- insert gadgets
	-- gadgets[worktopField.configId] = worktop

    -- -- set transport parameter
    -- transParam.pos.x = transParam.pos.x + offset.x
    -- transParam.pos.y = transParam.pos.y + offset.y
    -- transParam.pos.z = transParam.pos.z + offset.z

end

function LF_PrintList(context, name, list)

    local emptyStr = name
    for k, v in pairs(list) do
        emptyStr = emptyStr..", "..v
    end

    ScriptLib.PrintContextLog(context, "## [UnstableSpray] list = "..emptyStr)

end

function LF_LevelStart(context)
    ScriptLib.PrintContextLog(context, "## [UnstableSpray] LF_LevelStart is called")

    -- 生成操作台和选项
    ScriptLib.SetGadgetStateByConfigId(context, defs.startId, 0)
    ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.startId, {worktopField.optionId})

    -- 保底把所有sgv的group var都设为0
    for i = 1, 4 do
        local varName = "sgv"..i
        ScriptLib.SetGroupVariableValue(context, varName, 0)
    end

end

function LF_CheckAndRecordBuff(context, buffIdx)
    ScriptLib.PrintContextLog(context, "## [UnstableSpray] LF_CheckAndRecordBuff is called, buffIdx = ".. buffIdx)

    -- 检查这个buff idx是不是已经被记录在group var里了
    for i = 1, 4 do
        local varName = "sgv"..i
        local varValue = ScriptLib.GetGroupVariableValue(context, varName)
        ScriptLib.PrintContextLog(context, "## [UnstableSpray] group var "..varName.." = "..varValue )

        if varValue == buffIdx then
            -- 如果这个var记录了这个buff idx，就不用再继续了
            ScriptLib.PrintContextLog(context, "## [UnstableSpray] group varName = "..varName.." is already set to "..varValue )

            return 0
        elseif varValue == 0 then
            -- 还没有被记录过，检查自己是否是0，即还未记录过buff，是则用这个var记录
            ScriptLib.SetGroupVariableValue(context, varName, buffIdx)

            local temp = ScriptLib.GetGroupVariableValue(context, varName)
            ScriptLib.PrintContextLog(context, "## [UnstableSpray] group varName "..varName.." is unused and set to "..temp )

            return 0
        end
        -- 如果这个var记录了别的buff idx，继续for loop        
    end

end

--================================================================
-- Triggers
--================================================================

-- todo: 应该放在group load的时刻？?
function action_ENTER_REGION(context, evt)
    ScriptLib.PrintContextLog(context, "## [UnstableSpray] player enters region "..evt.param1)

    if defs.isStartLevel == true then
        ScriptLib.SetGroupVariableValue(context, "levelEnabled", 1)
    end
   
    return 0

end

function action_START_CHALLENGE(context, evt)
    ScriptLib.PrintContextLog(context, "## [UnstableSpray] worktop "..evt.param1..", option = "..evt.param2)

    local uid = ScriptLib.GetSceneOwnerUid(context)

    if evt.param2 == worktopField.optionId then
        -- 操作台物件转换状态，选项失效
        ScriptLib.SetGadgetStateByConfigId(context, defs.startId, 202)
        ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, defs.startId, worktopField.optionId)

        -- 挑战开始
        -- ScriptLib.ActiveChallenge(context, challengeId, challengeId, base_info.group_id, 999, 90, 0)

		-- 开启gallery，通过gallery给玩家身上挂t键ability group，服务器直接挂本轮使用的buff abilitygroup
		ScriptLib.StartGallery(context, defs.galleryId)
        ScriptLib.PrintContextLog(context, "## [UnstableSpray] start gallery "..defs.galleryId)

        -- 临时：每个可用的ability group都给team身上添加对应的SGV
        -- for i = 1, #sgvStringTable do
        --     ScriptLib.AddTeamServerGlobalValue(context, uid_list[1], sgvStringTable[i], 0)
        -- end

        -- 起state时间轴
        ScriptLib.InitTimeAxis(context, "challengeTimer", {defs.stageMaxDuration, 2 * defs.stageMaxDuration, 3 * defs.stageMaxDuration}, false)
        ScriptLib.SetGroupVariableValue(context, "stage", 1)
        ScriptLib.PrintContextLog(context, "## [UnstableSpray] group variable stage is set to 1")

        -- 起怪物潮切换时间轴
        ScriptLib.InitTimeAxis(context, "poolTimer", {defs.switchTime}, false)

        if defs.monsterPoolTable[1] == nil then
            return 0
        end

        -- 刷怪
        -- ScriptLib.AutoMonsterTide(context, 1, base_info.group_id, defs.tides.monsters, defs.tides.sum, defs.tides.max, defs.tides.min)
        ScriptLib.AutoPoolMonsterTide(context, 1, base_info.group_id, defs.monsterPoolTable[1].pool_list, defs.monsterPoolTable[1].point_array_id, 
            defs.monsterPoolTable[1].point_id_list, defs.monsterPoolTable[1].affix_list, defs.monsterPoolTable[1].param)
    
        end
    return 0
end

function action_STAGE_COMPLETE(context, evt)
    ScriptLib.PrintContextLog(context, "## [UnstableSpray] time axis "..evt.source_name..", stage "..evt.param1.. " is finished")

    local uid = ScriptLib.GetSceneOwnerUid(context)

    if evt.source_name == "challengeTimer" then
        -- 更新阶段
        local temp = evt.param1 + 1
        ScriptLib.SetGroupVariableValue(context, "stage", temp)
        ScriptLib.PrintContextLog(context, "## [UnstableSpray] group variable stage is set to "..temp)

    
        -- 【时间轴总长度会比90s多一点，应该跑不到这里gallery就已经结束并强制卸载group了，目前走event gallery stop】
        if evt.param1 == 3 then
            -- -- 第三轮结束，停止刷怪
            -- -- ScriptLib.KillMonsterTide(context, base_info.group_falseid, 1)
            -- ScriptLib.ClearPoolMonsterTide(context, base_info.group_id, 1)
            -- ScriptLib.ClearPoolMonsterTide(context, base_info.group_id, 2)

		    -- -- gallery成功
		    -- ScriptLib.StopGallery(context, defs.galleryId, false)

        end
    elseif evt.source_name == "poolTimer" then
        -- 关闭上一个怪物潮
        ScriptLib.EndPoolMonsterTide(context, base_info.group_id, 1)
        ScriptLib.SetGroupVariableValue(context, "firstTideClose", 1)

    else
        -- 不是challenge timer也不是怪物潮timer就肯定是sgv timer
        -- SGV设为0，buff效果结束
        ScriptLib.SetTeamServerGlobalValue(context, uid, evt.source_name, 0)        
        ScriptLib.PrintContextLog(context, "## [UnstableSpray] "..evt.source_name.." is set to 0")

    end
   
    return 0
end

function action_MONSTER_DIE(context, evt)
    local monsterId = ScriptLib.GetMonsterIdByEntityId(context, evt.source_eid)
    ScriptLib.UpdatePlayerGalleryScore(context, defs.galleryId, {["monster_id"] = monsterId})

    ScriptLib.PrintContextLog(context, "## [UnstableSpray] monster id = "..monsterId..", config id = "..evt.param1..
        ", entity id =  "..evt.source_eid.." is dead")

    local firstTideClose = ScriptLib.GetGroupVariableValue(context, "firstTideClose")
    local remainMax = 0
    if defs.remainMax ~= nil then
        remainMax = defs.remainMax
    end
    if firstTideClose == 1 and #ScriptLib.GetGroupAliveMonsterList(context, base_info.group_id) == remainMax then

        if defs.monsterPoolTable[2] == nil then
            return 0
        end

        -- 第一波怪物潮都死了
        -- 开下一个怪物潮
        ScriptLib.AutoPoolMonsterTide(context, 2, base_info.group_id, defs.monsterPoolTable[2].pool_list, defs.monsterPoolTable[2].point_array_id, 
        defs.monsterPoolTable[2].point_id_list, defs.monsterPoolTable[2].affix_list, defs.monsterPoolTable[2].param)

        ScriptLib.SetGroupVariableValue(context, "firstTideClose", 2)

    end

    return 0
end

function action_GALLERY_STOP(context, evt)
    ScriptLib.PrintContextLog(context, "## [UnstableSpray] gallery = "..evt.param1.." finishes, fail = "..evt.param2)

    local uid = ScriptLib.GetSceneOwnerUid(context)

    -- gallery结束，停止刷怪
    ScriptLib.ClearPoolMonsterTide(context, base_info.group_id, 1)
    ScriptLib.ClearPoolMonsterTide(context, base_info.group_id, 2)

    -- 只有gallery成功才算这一轮结束
    if evt.param2 == 0 then
        -- 通知下一个group，加载下一轮的group的操作台
        if defs.nextGroupId ~= -1 then
            ScriptLib.SetGroupVariableValueByGroup(context, "levelEnabled", 1, defs.nextGroupId)
        end
    end
    
    -- 所有buff sgv保底归零
    for i = 1, 4 do
       local buffIdx = ScriptLib.GetGroupVariableValue(context, "sgv"..i)
       
       local sgv = ScriptLib.InstableSprayGetSGVByBuffId(context, buffIdx)
       if sgv ~= "" then
            ScriptLib.EndTimeAxis(context, sgv)

            ScriptLib.SetTeamServerGlobalValue(context, uid, sgv, 0)            
            local v = ScriptLib.GetTeamServerGlobalValue(context, uid, sgv)
            ScriptLib.PrintContextLog(context, "## [UnstableSpray] level ends and "..sgv.." = "..v)
       end

    end

    return 0
end

function action_DUNGEON_ALL_AVATAR_DIE(context, evt)
    ScriptLib.PrintContextLog(context, "## [UnstableSpray] all avatar dies in dungeon"..evt.source_name.."uid = "..evt.uid)

	ScriptLib.CauseDungeonFail(context)
    
    -- gallery失败
	ScriptLib.StopGallery(context, defs.galleryId, true)
	return 0
end

-- 副本结算
function action_DUNGEON_SETTLE(context, evt)
    ScriptLib.PrintContextLog(context, "## [UnstableSpray] dungeon settles, result = "..evt.param1)

    -- gallery失败
	ScriptLib.StopGallery(context, defs.galleryId, true)
    return 0
end

function action_VARIABLE_CHANGE(context, evt)
    ScriptLib.PrintContextLog(context, "## [UnstableSpray] variable "..evt.source_name.." changes from "..evt.param2.." to "..evt.param1 )

	if evt.source_name ~= "levelEnabled" or evt.param2 == evt.param1 then
        return 0
    end

    if evt.param1 == 1 then
        -- 加载操作台
        LF_LevelStart(context)
    end
	return 0
end


--================================================================
-- Server Lua Call Functions
--================================================================
function SLC_TriggerAbility(context, evt)
    ScriptLib.PrintContextLog(context, "## [UnstableSpray] SLC_TriggerAbility is called")

    local uid = ScriptLib.GetSceneOwnerUid(context)


    local stage = ScriptLib.GetGroupVariableValue(context, "stage")

    -- 本次随机出可用的buff index list，idx为活动表中idx
    local curBuffIdx = ScriptLib.InstableSprayRandomBuffs(context, defs.galleryId, stage)
    LF_PrintList(context, "curBuffIdx", curBuffIdx)

    for i = 1, #curBuffIdx do
        local sgv = ScriptLib.InstableSprayGetSGVByBuffId(context, curBuffIdx[i])

        -- 修改team身上sgv为1
        ScriptLib.AddTeamServerGlobalValue(context, uid, sgv, 0)
        local var = ScriptLib.SetTeamServerGlobalValue(context, uid, sgv, 1)

        local v = ScriptLib.GetTeamServerGlobalValue(context, uid, sgv)
        ScriptLib.PrintContextLog(context, "## [UnstableSpray] "..sgv.." is set to "..v..", var = "..var)

        -- 通知gallery重置buff icon时间轴
        ScriptLib.UpdatePlayerGalleryScore(context, defs.galleryId, {buff_id = curBuffIdx[i], buff_max_time = defs.buffDuration})

        -- 起控制modifier生效时间长度的时间轴
        -- 时间轴的key就是SGV name
        ScriptLib.InitTimeAxis(context, sgv, {defs.buffDuration}, false)

        -- 50000201开始的4个id专门用来记录本局的4个buff
        -- group var名称为sgv1,sgv2,sgv3,sgv4
        -- group var值为活动表中buff idx
        -- 更新group var
        LF_CheckAndRecordBuff(context, curBuffIdx[i])

        -- local var1 = ScriptLib.SetGroupVariableValue(context, "sgv"..i, curBuffIdx[i])
        
        -- local r = ScriptLib.GetGroupVariableValue(context, "sgv"..i)
        -- ScriptLib.PrintContextLog(context, "## [UnstableSpray] group variable sgv"..i.." is set to "..r..", var = "..var1)

    end

    return 0
end


--================================================================
-- Initialize
--================================================================
LF_Initialize_Group(triggers, suites, variables, gadgets, regions)
