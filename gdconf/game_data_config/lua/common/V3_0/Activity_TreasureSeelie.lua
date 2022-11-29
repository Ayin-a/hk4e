--[[======================================
||  filename:       Activity_TreasureSeelie
||  owner:          chao.cui
||  description:    3.0 寻宝仙灵
||  LogName:        TD
||  Protection:     ???
=======================================]]

--[[
local defs = 
{
    -- 挑战编号
    challenge_id = 2009009,
    -- 探查点交互选项ID
    starter_option_id = 175,
    -- 挖掘点交互选项ID
    dig_option_id = 39,
    -- 能量球所在suite
    energy_ball_suite = 10,
    -- 备用元素微粒suite
    -- element_suite = 11,
}

-- 各玩法阶段配置
local play_stage =
{
    [1] = 
    {
        gallery_id = 26001,
        -- 挑战限时
        challenge_time = 300, 
        -- 收集元素微粒数量
        element_target = 3,
        -- 探查点configID
        starter_operator_configID = ,
        -- 挖掘点configID
        dig_operator_configID = ,

        -- 宝箱configID
        treasure_configID = ,

        -- 探查点suite
        starter_operator_suite = ,
        -- 玩法suite
        level_suite = ,
        -- 挖掘点suite
        dig_operator_suite ,
        -- 宝箱suite
        treasure_suite = ,
    },

    [2] = 
    {

    },

    [3] = 
    {

    }
}

-- 备用元素微粒的configID
local extra_elements =
{
    73017,73018,73019,73020,73021,73022,73023,73024
}

]]--

local extraTriggers = 
{
    --测试用
    --{ config_id = 41000001, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0 },
    --{ config_id = 49000001, name = "tri_reminder", event = EventType.EVENT_VARIABLE_CHANGE, source = "style", condition = "", action = "action_reminder_style", trigger_count = 0 },


    --
    { config_id = 40000001, name = "tri_group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
    { config_id = 40000003, name = "tri_select_option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },

    -- 挑战触发Trigger
    { config_id = 40000004, name = "tri_element_get", event = EventType.EVENT_VARIABLE_CHANGE, source = "element_counter", condition = "condition_element_get", action = "", trigger_count = 0, tag = "666" },
    --{ config_id = 40000002, name = "tri_energy_ball_get", event = EventType.EVENT_VARIABLE_CHANGE, source = "energy_ball_counter", condition = "", action = "action_energy_ball_picked", trigger_count = 0 },

    { config_id = 40000005, name = "tri_gadget_create", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_gadget_create", trigger_count = 0 },

    { config_id = 40000006, name = "tri_challenge_fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count= 0 },
    { config_id = 40000007, name = "tri_challenge_success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count= 0 },

    -- 玩法区域
    { config_id = 40000008, name = "tri_enter_play_region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", forbid_guest = false, trigger_count = 0 },
    { config_id = 40000009, name = "tri_leave_play_region", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", forbid_guest = false, trigger_count = 0 },

    -- 
    { config_id = 40000010, name = "tri_gadget_state_change", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_gadget_state_change", action = "action_gadget_state_change", trigger_count = 0 },
  
    { config_id = 40000011, name = "tri_group_will_unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0 },

    { config_id = 40000012, name = "tri_monster_die", event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die", trigger_count = 0 },

    { config_id = 40000013, name = "tri_perform_timer", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "action_perform_timer", trigger_count = 0 },

    { config_id = 40000014, name = "tri_seelie_out", event = EventType.EVENT_VARIABLE_CHANGE, source = "seelie_out", condition = "", action = "action_var_seelie_out", trigger_count = 0 },

}

---------- Basic Functions -------------
-- 打印日志
function PrintLog(context, content)
    local log = "## [Activity_TreasureSeelie] TD: "..content
    ScriptLib.PrintContextLog(context, log)
end

--------- Level Functions -----------
function LF_Initialize_Group(triggers, suites)

    -- Triggers
    for _k, _tri in pairs(extraTriggers) do
        table.insert(triggers, _tri)
        table.insert(suites[1].triggers, _tri.name)
    end

    -- Vars
    table.insert(variables, { config_id = 50000001, name = "energy_ball_counter", value = 0, no_refresh = true})
    table.insert(variables, { config_id = 50000002, name = "element_counter", value = 0, no_refresh = false})
    table.insert(variables, { config_id = 50000003, name = "current_challenge_stage", value = 0, no_refresh = false})

    -- 进度存储
    table.insert(variables, { config_id = 50000004, name = "stage_progress1", value = 0, no_refresh = true})
    table.insert(variables, { config_id = 50000005, name = "stage_progress2", value = 0, no_refresh = true})
    table.insert(variables, { config_id = 50000006, name = "stage_progress3", value = 0, no_refresh = true})
   
    -- 总进度
    table.insert(variables, { config_id = 50000007, name = "stage_counter", value = 0, no_refresh = true})

    -- 仙灵是否离体
    table.insert(variables, { config_id = 50000008, name = "seelie_out", value = 0, no_refresh = true})
    -- 仙灵是否装备
    -- var并没有什么用,改为从GV:_SeekerSeelieV3_equipped直接获取 by siyu.li
    table.insert(variables, { config_id = 50000009, name = "seelie_equipped", value = 0, no_refresh = false})

    -- 元素微粒使用计数
    table.insert(variables, { config_id = 50000010, name = "element_used", value = 0, no_refresh = false})

    return 0
end

-- 进入玩法区域弹提示
function LF_Try_StartTutorial(context)
    ScriptLib.ShowCommonPlayerTips(context, 1, {"UI_ACTIVITY_TREASURE_ENTER_AREA_REMIND_TITLE", "UI_ACTIVITY_TREASURE_ENTER_AREA_REMIND_DESC"})
    return 0
end

-- 重置关卡
function LF_Reset_Level(context)
    PrintLog(context, "LF_Reset_Level")
    -- 修复区域完成后的仙灵BUG（区域探索完成后不再重置）
    if ScriptLib.GetGroupVariableValue(context, "stage_counter") >= 3 then 
        -- 通知小道具卸下
        --ScriptLib.SetGroupVariableValue(context, "seelie_equipped", 0)
        ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_SeelieGameplayGroup", 0)
        return 0
    end

    for i = 2, #suites do
        ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i)
    end
    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })

    return 0
end

-- 第stage个探查点被发现
function LF_SearchPoint_Found(context, stage)
    PrintLog(context, "发现探查点:"..stage)
    ScriptLib.ShowReminder(context, 600128)

    -- 存档
    ScriptLib.SetGroupVariableValue(context, "stage_progress"..stage, 1)

    -- 探查点出现
    LF_Show_Search_Point(context, stage, true)
end

-- 第stage个挖掘点被发现
function LF_DigPoint_Found(context, stage)
    PrintLog(context, "发现挖掘点:"..stage)

    -- 存档
    ScriptLib.SetGroupVariableValue(context, "stage_progress"..stage, 2)

    -- 挖掘点出现
    LF_Show_Dig_Point(context, stage, true)

end

-- 与configID探查点交互（开启玩法）
function LF_Search_Point_Interacted(context, configID)

    local stage = 1
    for i = 1, #play_stage do 
        if play_stage[i].starter_operator_configID == configID then 
            stage = i
            break
        end
    end

    if ScriptLib.IsGalleryStart(context, play_stage[stage].gallery_id) then
        return -1
    end

    LF_Start_Play(context, stage)

end

-- 与挖掘点交互（挖出宝箱）
function LF_Dig_Point_Interacted(context, configID)
    --local widget_equipped = ScriptLib.GetGroupVariableValue(context, "seelie_equipped")
    local widget_equipped = ScriptLib.GetTeamAbilityFloatValue(context, context.owner_uid, "_SeekerSeelieV3_equipped")
    if widget_equipped == nil then
        widget_equipped = 0
    end
    if widget_equipped == 0 then 
        --REMINDER "请先装备小道具"
        ScriptLib.ShowReminder(context, 600132)
        return
    end

    local stage = 1
    for i = 1, #play_stage do 
        if play_stage[i].dig_operator_configID == configID then 
            stage = i
            break
        end
    end

    -- 存档
    ScriptLib.SetGroupVariableValue(context, "stage_progress"..stage, 3) 

    -- 隐藏挖掘点
    -- 宝箱不开不隐藏mark,只隐藏效果 by siyu.li
    ScriptLib.SetGadgetStateByConfigId(context, play_stage[stage].dig_operator_configID, 202)
    ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, play_stage[stage].dig_operator_configID, defs.dig_option_id)
    -- LF_Show_Dig_Point(context, stage, false)

    -- 加载宝箱suite
    suite_index = play_stage[stage].treasure_suite
    ScriptLib.AddExtraGroupSuite(context, base_info.group_id, suite_index)
    
    -- 仙灵回身边
    PrintLog(context, "仙灵回身边")
    ScriptLib.SetGroupVariableValue(context, "seelie_out", 0)

    LF_Objects_Display(context, true)
end

-- （根据小道具是否离体）控制【能量球】和【探查点】的显隐
function LF_Objects_Display(context, is_display)
    if is_display == true then 
        -- 恢复能量球显示
        LF_Show_Energy_Balls(context, true)

        -- 恢复所有未完成的探查点
        for i = 1, #play_stage do 
            local progress = ScriptLib.GetGroupVariableValue(context, "stage_progress"..i)
            if progress == 1 then 
                LF_Show_Search_Point(context, i, true)
            -- 如果宝箱未开启,则额外标记mark by siyu.li
            elseif progress == 3 then
                ScriptLib.SetGadgetStateByConfigId(context, play_stage[i].dig_operator_configID, 202)
            end
        end

        PrintLog(context, "显示能量球&探查点")
    else 

        -- 隐藏全部探查点
        for i = 1, #play_stage do 
            local progress = ScriptLib.GetGroupVariableValue(context, "stage_progress"..i)
            LF_Show_Search_Point(context, i, false)
            -- 若宝箱未开启,同时隐藏mark by siyu.li
            if progress == 3 then
                ScriptLib.SetGadgetStateByConfigId(context, play_stage[i].dig_operator_configID, 201)
            end
        end

        -- 卸载能量球suite
        LF_Show_Energy_Balls(context, false)

        PrintLog(context, "隐藏能量球&探查点")
    end
end

-- 开启第stage个玩法
function LF_Start_Play(context, stage)

    PrintLog(context, "开启玩法阶段"..stage)

    ScriptLib.SetGroupVariableValue(context, "current_challenge_stage", stage)
    ScriptLib.SetGroupVariableValue(context, "element_used", 0)

    -- 重置element_counter
    ScriptLib.SetGroupVariableValue(context, "element_counter", 0)

    -- 加载玩法suite
    LF_Show_Level(context, stage, true)

    local configID = play_stage[stage].starter_operator_configID
    --切探查点状态（发射子弹）
    ScriptLib.SetGadgetStateByConfigId(context, configID, 201) 
    ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, configID, defs.starter_option_id)

    -- 隐藏小道具
    PrintLog(context, "仙灵飞出去")
    ScriptLib.SetGroupVariableValue(context, "seelie_out", 1)

    -- 能量球和探查点不可见
    LF_Objects_Display(context, false)

    -- 开挑战
    LF_Init_Challenge(context, stage)


    -- 开Gallery
    local gallery_id = play_stage[stage].gallery_id
    if 0 ~= ScriptLib.StartGallery(context, gallery_id) then 
        PrintLog(context, "开启Gallery失败")
    end
    local progress_tbl = {0, play_stage[stage].element_target}
    PrintLog(context, "进度需求："..play_stage[stage].element_target)
    ScriptLib.InitGalleryProgressScore(context, "Seelie", gallery_id, progress_tbl, GalleryProgressScoreUIType.GALLERY_PROGRESS_SCORE_UI_TYPE_TREASURE, GalleryProgressScoreType.GALLERY_PROGRESS_SCORE_NO_DEGRADE)

end

function LF_Stop_Play(context, stage, success)

    PrintLog(context, "stop stage"..stage)


    ScriptLib.SetGroupVariableValue(context, "element_counter", 0)

    -- 停Gallery (param3-is_fail)
    ScriptLib.StopGallery(context, play_stage[stage].gallery_id, not success)

    -- 移除玩法suite
    LF_Show_Level(context, stage, false)

    -- 移除动态添加的元素微粒
    local num = ScriptLib.GetGroupVariableValue(context, "element_used")
    for i = 1, num do
        local cid = extra_elements[i]
        ScriptLib.KillEntityByConfigId(context, { config_id = cid })
    end

    ScriptLib.SetGroupVariableValue(context, "current_challenge_stage", 0)

end

-- 检查是否满足【能量球】和【探查点】的显示条件（小道具装备&&仙灵未离体）
function LF_Player_Can_See(context)
    if not ScriptLib.IsInRegion(context, context.owner_uid, suites[1].regions[1]) then
        return false
    end
    local seelie_out = ScriptLib.GetGroupVariableValue(context, "seelie_out")
    PrintLog(context, "小道具离体:"..seelie_out)

    --local widget_equipped = ScriptLib.GetGroupVariableValue(context, "seelie_equipped")
    --[[if context.owner_uid == nil then
        PrintLog(context, "LF_Player_Can_See : owner_uid=nil")
    else
        PrintLog(context, "LF_Player_Can_See : owner_uid="..context.owner_uid)
    end--]]
    local uid_list = ScriptLib.GetSceneUidList(context)
    host_uid = context.owner_uid
    if uid_list[1] ~= nil then
        host_uid = uid_list[1]
    end
    local widget_equipped = ScriptLib.GetTeamAbilityFloatValue(context, host_uid, "_SeekerSeelieV3_equipped")
    if widget_equipped == nil then
        widget_equipped = 0
    end

    PrintLog(context, "小道具装备:"..widget_equipped)

    if seelie_out == 0 and widget_equipped == 1 then 
        return true
    end
    return false
end

-- function LF_Get_Owner_UID(context)
--     local UidList = ScriptLib.GetSceneUidList(context)
--     local ownerUid = UidList[1]
--     PrintLog(context, "OWNER_UID:"..ownerUid)
--     return ownerUid
-- end

-- 显示/隐藏【能量球】
function LF_Show_Energy_Balls(context, show)
    if show == true then 
        ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.energy_ball_suite)
    else 
        ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, defs.energy_ball_suite)
    end
end

-- 显示/隐藏某阶段的【探查点】
function LF_Show_Search_Point(context, stage, show)
    local configID = play_stage[stage].starter_operator_configID
    if show == true then 
        ScriptLib.SetGadgetStateByConfigId(context, configID, 0) 
        ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, configID, {defs.starter_option_id})
    else 
        ScriptLib.SetGadgetStateByConfigId(context, configID, 202)
        ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, configID, defs.starter_option_id)
    end
end

-- 显示/隐藏某阶段的【挖掘点】
function LF_Show_Dig_Point(context, stage, show)

    local suite_index = play_stage[stage].dig_operator_suite
    local configID = play_stage[stage].dig_operator_configID

    if show == true then 
        ScriptLib.AddExtraGroupSuite(context, base_info.group_id, suite_index)
        -- 切状态（显示mark）
        ScriptLib.SetGadgetStateByConfigId(context, configID, 0)
    else 
        -- 切状态（隐藏mark）
        if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, configID, 201) then 
            PrintLog(context, "隐藏挖掘点mark失败")
        end
        --ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, suite_index)
    end

end

-- 显示/隐藏某阶段的【关卡内容】
function LF_Show_Level(context, stage, show)

    local suite_index = play_stage[stage].level_suite

    if show == true then 
        ScriptLib.AddExtraGroupSuite(context, base_info.group_id, suite_index)
    else 
        ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, suite_index)
    end

end

function LF_Init_Challenge(context, stage)

    local challenge_time = play_stage[stage].challenge_time
    local target = play_stage[stage].element_target
    --参数1：限时时间 参数2：event_type所在枚举序号； 参数3： trigger_tag；参数4：次数
    local c_index = 1       --跑酷
    if #suites[play_stage[stage].level_suite].monsters > 0 then
        c_index = 2             --战斗
    end
    c_index = stage * 10 +c_index
    if 0 ~= ScriptLib.StartChallenge(context, c_index, defs.challenge_id, {challenge_time, 3, 666, target}) then 
        PrintLog(context, "开启挑战失败")
    else
        local uid_list = ScriptLib.GetSceneUidList(context)
        for i,uid in ipairs(uid_list) do
            if ScriptLib.IsInRegion(context, uid, play_stage[stage].optimize_region) then
                ScriptLib.SetPlayerGroupVisionType(context, {uid}, {0})
                ScriptLib.ForbidPlayerRegionVision(context, uid)
            end
        end 
    end
end

function LF_Set_Seelie_Light_Level(context, light_level)
    --local ownerUid = LF_Get_Owner_UID(context)
    local ownerUid = ScriptLib.GetSceneOwnerUid(context)
    if 0 == ScriptLib.SetTeamServerGlobalValue(context, ownerUid, "SGV_SeelieLightLevel", light_level) then
        PrintLog(context, "设置仙灵亮度等级："..light_level)
    end

    if light_level == 3 then 
        -- 延时X秒设亮度为0
        ScriptLib.CreateGroupTimerEvent(context, base_info.group_id, "PerformEnd", 4)
    end
end

-- 恢复存档
function LF_Load_Level(context)
    -- progress 存档
    -- 1- 探查点出现
    -- 2- 挖掘点出现
    -- 3- 宝箱出现
    -- 4- 宝箱开启

    -- 能量球
    -- if LF_Player_Can_See(context) == true then 
    --     LF_Show_Energy_Balls(context, true)
    -- end

    -- 服务器core可能引起seelie_out未能重置,以及原始能量球残留
    ScriptLib.SetGroupVariableValue(context, "seelie_out", 0)
    for i = 1, #play_stage do
        LF_Show_Level(context, i, false)
    end
    
    -- 加载所有探查点suite。（探查点的可见性与物件状态关联）
    for i = 1, #play_stage do 
        local suite_index = play_stage[i].starter_operator_suite
        ScriptLib.AddExtraGroupSuite(context, base_info.group_id, suite_index)    
    end

    -- 根据存档加载挖掘点&宝箱
    for i = 1, #play_stage do 
        local progress = ScriptLib.GetGroupVariableValue(context, "stage_progress"..i)
        -- 宝箱未开恢复mark by siyu.li
        if progress == 2 or progress == 3 then 
            local suite_index = play_stage[i].dig_operator_suite
            ScriptLib.AddExtraGroupSuite(context, base_info.group_id, suite_index)
            if progress == 3 then
                if ScriptLib.IsInRegion(context, context.owner_uid, suites[1].regions[1]) then
                    ScriptLib.SetGadgetStateByConfigId(context, play_stage[i].dig_operator_configID, 202)
                else
                    ScriptLib.SetGadgetStateByConfigId(context, play_stage[i].dig_operator_configID, 201)
                end
            end 
        end
       --[[ if progress == 3 then 
            local suite_index = play_stage[i].treasure_suite
            ScriptLib.AddExtraGroupSuite(context, base_info.group_id, suite_index) 
        end--]]
    end
end

--------- Server Lua Call -----------

-- 拾取能量球
function SLC_Activity_TreasureSeelie_PickEnergyBall(context)

    -- 能量球计数
    local num = ScriptLib.GetGroupVariableValue(context, "energy_ball_counter")
    num = num + 1
    ScriptLib.SetGroupVariableValue(context, "energy_ball_counter", num)

    PrintLog(context, "拾取能量球"..num)


    -- 仙灵表现（亮度）
    local light_level = num % 3

    if light_level == 0 then 
        light_level = 3
    end
    LF_Set_Seelie_Light_Level(context, light_level)

        -- 显示能量球进度的定制REMINDER "x/3"
        ScriptLib.TreasureSeelieCollectOrbsNotify(context, light_level, 3)

    local order = ScriptLib.GetTreasureSeelieDayByGroupId(context, 0)
    -- 发现新的探查点
    if num == 3 or num == 6 or num == 9 then
        local stage = math.floor(num/3)
        LF_SearchPoint_Found(context, stage)

        -- 运营埋点：能量球进度 & 探查点发现进度
        ScriptLib.MarkGroupLuaAction(context, "ActivityTreasureSeelie1", "", {["region_order"] = order, ["energy_ball_counter"] = num, ["find_point"] = stage})
    else
        -- 运营埋点：能量球进度 & 探查点发现进度
        ScriptLib.MarkGroupLuaAction(context, "ActivityTreasureSeelie1", "", {["region_order"] = order, ["energy_ball_counter"] = num})
    end

    return 0
end

-- 拾取元素微粒
function SLC_Activity_TreasureSeelie_PickElementParticle(context)

    local num = ScriptLib.GetGroupVariableValue(context, "element_counter")
    num = num + 1
    ScriptLib.SetGroupVariableValue(context, "element_counter", num)
    PrintLog(context, "拾元素微粒"..num)

    -- Gallery通信
    local stage = ScriptLib.GetGroupVariableValue(context, "current_challenge_stage")
    PrintLog(context, "stage:"..stage)

    if stage > 0 then 
        local gallery_id = play_stage[stage].gallery_id
        PrintLog(context, "galleryID:"..gallery_id)
        ScriptLib.AddGalleryProgressScore(context, "Seelie", gallery_id, 1)
    end

    return 0
end

-- 仙灵小道具玩家主动操作 (0-卸下, 1-装备)
function SLC_Activity_TreasureSeelie_SeelieEquipStateChanged(context, equipped)
    PrintLog(context, "仙灵小道具装备状态："..equipped)
    --ScriptLib.SetGroupVariableValue(context, "seelie_equipped", math.floor(equipped))

    if equipped == 1 then
        if LF_Player_Can_See(context) == true then 
            if ScriptLib.GetGroupTempValue(context, "widget_first_used", {}) == 0 then
                local _r = suites[1].regions[1]
                if ScriptLib.IsInRegion(context, context.owner_uid, _r) then
                    local order = ScriptLib.GetTreasureSeelieDayByGroupId(context, base_info.group_id)
                    ScriptLib.MarkGroupLuaAction(context, "ActivityTreasureSeelie2", "", {["region_order"] = order, ["widget_first_use"] = ScriptLib.GetServerTime(context)}) 
                    ScriptLib.SetGroupTempValue(context, "widget_first_used", 1, {})
                end
            end
            LF_Objects_Display(context, true)
        end
    else
        LF_Objects_Display(context, false)
    end
    return 0
end

---------- Triggers -----------
function condition_element_get(context, evt)
    if evt.param1 > evt.param2 then
        return true
    end
    return false
end


function action_group_load(context, evt)
    PrintLog(context, "寻宝仙灵 GROUP LOAD: 0610-1314")
    LF_Load_Level(context)
    return 0
end

-- 进入玩法区域
function action_enter_region(context, evt)
    if evt.param1 == suites[1].regions[1] then
        if context.uid ~= context.owner_uid then
            return -1
        end
        PrintLog(context, "进入玩法区域")
        
        if ScriptLib.GetGroupVariableValue(context, "stage_counter") >= 3 then 
            return 0
        end

        -- 弹引导REMINDER
        LF_Try_StartTutorial(context)

        -- 通知team（仙灵小道具）已进入玩法区域（可装备）
        ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_SeelieGameplayGroup", 1)
        
        -- 根据关卡进度通知team仙灵是否可见
        local seelie_out = ScriptLib.GetGroupVariableValue(context, "seelie_out")
        ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_SeelieInvisible", seelie_out)
        
        -- 根据关卡进度还原仙灵亮度
        local num = ScriptLib.GetGroupVariableValue(context, "energy_ball_counter")
        local light_level = num % 3
        LF_Set_Seelie_Light_Level(context, light_level)

        -- 
        if LF_Player_Can_See(context) == true then  
            LF_Objects_Display(context, true)
        else 
            LF_Objects_Display(context, false)
        end

        for i = 1, #play_stage do 
            local progress = ScriptLib.GetGroupVariableValue(context, "stage_progress"..i)
            if progress == 3 then 
                ScriptLib.SetGadgetStateByConfigId(context, play_stage[i].dig_operator_configID, 201)
                local suite_index = play_stage[i].treasure_suite
                ScriptLib.AddExtraGroupSuite(context, base_info.group_id, suite_index) 
            end
        end
        return 0
    else
        for stage=1,#play_stage do
            if evt.param1 == play_stage[stage].optimize_region then
                if ScriptLib.IsChallengeStartedByChallengeId(context, defs.challenge_id) then
                    ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
                    ScriptLib.ForbidPlayerRegionVision(context, context.uid)
                    PrintLog(context, "进入挑战区域")
                    return 0
                else
                    break
                end
            end
        end
        return -1
    end
end

-- 离开玩法区域
function action_leave_region(context, evt)
    local stage = ScriptLib.GetGroupVariableValue(context, "current_challenge_stage")
    if evt.param1 == suites[1].regions[1] then
        if context.uid ~= context.owner_uid then
            return -1
        end
        PrintLog(context, "离开玩法区域")
        ScriptLib.SetGroupTempValue(context, "widget_first_used", 0, {})
        -- 将未结束的挑战设置失败
        
        if stage > 0 then 
            ScriptLib.StopChallenge(context, 1, 0)
        end

        -- 通知小道具卸下
        --ScriptLib.SetGroupVariableValue(context, "seelie_equipped", 0)
        ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_SeelieGameplayGroup", 0)
        -- 隐藏能量球和探查点
        LF_Objects_Display(context, false)
        return 0
    elseif stage ~= 0 and evt.param1 == play_stage[stage].optimize_region then
        if ScriptLib.IsChallengeStartedByChallengeId(context, defs.challenge_id) then
            PrintLog(context, "离开玩法区域")
            ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
            ScriptLib.RevertPlayerRegionVision(context, context.uid)
            if context.uid ~= context.owner_uid then
                return -1
            end
            -- 将未结束的挑战设置失败
            local c_index = 1
            if #suites[play_stage[stage].level_suite].monsters > 0 then 
                c_index = 2
            end
            c_index = stage * 10 + c_index
            ScriptLib.StopChallenge(context, c_index, 0)
        end
        return 0
    else
         return -1
    end
end

function action_gadget_create(context, evt)

    local configID = evt.param1
    
    -- 给探查点和挖掘点分别上选项
    for i = 1, #play_stage do 
        local progress = ScriptLib.GetGroupVariableValue(context, "stage_progress"..i)
        if configID == play_stage[i].starter_operator_configID then 
            if progress == 1 and LF_Player_Can_See(context) == true then 
                LF_Show_Search_Point(context, i, true)
            else
                LF_Show_Search_Point(context, i, false)
            end
        elseif configID == play_stage[i].dig_operator_configID then 
            PrintLog(context, "挖掘点create")
            if progress == 2 then
                ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, configID, {defs.dig_option_id})
            end
        end
    end

    return 0
end

function action_var_seelie_out(context, evt)
    PrintLog(context, "seelie_out变化")
    ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_SeelieInvisible", evt.param1)
    return 0
end

-- 操作台交互
function action_select_option(context, evt)

    PrintLog(context, "操作台选项事件")

    local config_id = evt.param1
    local option_id = evt.param2

    if option_id == defs.starter_option_id then 
        LF_Search_Point_Interacted(context, config_id)
    end
    if option_id == defs.dig_option_id then 
        LF_Dig_Point_Interacted(context, config_id)
    end

    return 0

end

function action_challenge_success(context, evt)
    local stage = ScriptLib.GetGroupVariableValue(context, "current_challenge_stage")
    local uid_list = ScriptLib.GetSceneUidList(context)
    for i,uid in ipairs(uid_list) do
        -- 防止联机玩家提前出圈被强迫处理视野
        if ScriptLib.IsInRegion(context, uid, play_stage[stage].optimize_region) then
            ScriptLib.SetPlayerGroupVisionType(context, {uid}, {1})
            ScriptLib.RevertPlayerRegionVision(context, uid)
        end
    end
    local stage = ScriptLib.GetGroupVariableValue(context, "current_challenge_stage")
    local order = ScriptLib.GetTreasureSeelieDayByGroupId(context, 0)
    -- 运营埋点：探查点stage完成
    ScriptLib.MarkGroupLuaAction(context, "ActivityTreasureSeelie2", "", {["region_order"] = order, ["region_progress_type"] = 3, ["challenge_order"] = stage})

    -- 发现挖掘点
    LF_DigPoint_Found(context, stage)

    LF_Stop_Play(context, stage, true)


    return 0
end

function action_challenge_fail(context, evt)
    local stage = ScriptLib.GetGroupVariableValue(context, "current_challenge_stage")
    local uid_list = ScriptLib.GetSceneUidList(context)
    for i,uid in ipairs(uid_list) do
        -- 防止联机玩家提前出圈被强迫处理视野
        if ScriptLib.IsInRegion(context, uid, play_stage[stage].optimize_region) then
            ScriptLib.SetPlayerGroupVisionType(context, {uid}, {1})
            ScriptLib.RevertPlayerRegionVision(context, uid)
        end
    end
    LF_Stop_Play(context, stage, false)
    
    -- 仙灵回身边
    PrintLog(context, "仙灵回身边")
    ScriptLib.SetGroupVariableValue(context, "seelie_out", 0)
    LF_Objects_Display(context, true)
    -- 联机不能确保情况
    local uid_list = ScriptLib.GetSceneUidList(context)
    --PrintLog(context, "离开玩法区域")
    return 0
end

function condition_gadget_state_change(context, evt)
    PrintLog(context, evt.param2.."|"..evt.param1.."->"..evt.param3)
    if evt.param1 ~= 102 then
        return false
    else return true
    end
end

function action_gadget_state_change(context, evt)

    local new_state = evt.param1

    if new_state == 102 then 
        PrintLog(context, "宝箱打开")

        -- 宝箱的configID
        local configID = evt.param2

        local stage = 1
        for i = 1, #play_stage do 
            if play_stage[i].treasure_configID == configID then 
                stage = i
                break
            end
        end

        ScriptLib.SetGroupVariableValue(context, "stage_progress"..stage, 4)
        -- 开宝箱删除mark by siyu.li
        -- LF_Show_Dig_Point(context, stage, false)
        ScriptLib.SetGadgetStateByConfigId(context, play_stage[stage].dig_operator_configID, 203)

        -- 总进度+1
        ScriptLib.ChangeGroupVariableValue(context, "stage_counter", 1)
        local counter = ScriptLib.GetGroupVariableValue(context, "stage_counter")
        PrintLog(context, "区域完成进度:"..counter)
        local order = ScriptLib.GetTreasureSeelieDayByGroupId(context, 0)
        -- Reminder "显示宝箱进度" 
        if counter == 1 then
            ScriptLib.ShowReminder(context, 600129)
            -- 运营埋点：挖掘点1完成
            ScriptLib.MarkGroupLuaAction(context, "ActivityTreasureSeelie2", "", {["region_order"] = order, ["region_progress_type"] = 2, ["dig_point_order"] = stage, ["token_progress"] = 60, ["token_goal"] = 180})
        elseif counter == 2 then
            ScriptLib.ShowReminder(context, 600130)
            -- 运营埋点：挖掘点2完成
            ScriptLib.MarkGroupLuaAction(context, "ActivityTreasureSeelie2", "", {["region_order"] = order, ["region_progress_type"] = 2, ["dig_point_order"] = stage, ["token_progress"] = 120, ["token_goal"] = 180})
        elseif counter == 3 then
            ScriptLib.ShowReminder(context, 600131)
            PrintLog(context, "区域完成")
            -- 运营埋点：区域完成（挖掘点3完成）
            ScriptLib.MarkGroupLuaAction(context, "ActivityTreasureSeelie2", "", {["region_order"] = order, ["region_progress_type"] = 1, ["dig_point_order"] = stage, ["token_progress"] = 180, ["token_goal"] = 180})
            -- 活动cond中直接做掉了,按理不需要lua处理,改为卸载自身 by siyu.li
            --if 0 ~= ScriptLib.DeactivateGroupLinkBundle(context, base_info.group_id) then
            --    PrintLog(context, "关闭黄圈失败")
            --end
            ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_SeelieGameplayGroup", 0)
            --ScriptLib.updateBundleMarkShowStateByGroupId(context, base_info.group_id, false)
            ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, 1)
        end

    end
    return 0
end

--卸载保护
function action_group_will_unload(context,evt)
    PrintLog(context, "GROUP UNLOAD.")
    LF_Reset_Level(context)
    return 0
end

function action_monster_die(context, evt)

    local eid = evt.source_eid

    local pos = ScriptLib.GetPosByEntityId(context, eid)

    
    local index = ScriptLib.GetGroupVariableValue(context, "element_used")
    index = index + 1
    ScriptLib.SetGroupVariableValue(context, "element_used", index)

    local cid = extra_elements[index]

    local ret = ScriptLib.CreateGadgetByConfigIdByPos(context, cid, {x=pos.x,y=pos.y,z=pos.z}, {x=0.000,y=0.000,z=0.000})
    --PrintLog(context, "ret"..ret)

    -- if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, cid, 201) then
    --     PrintLog(context, "改元素微粒状态失败")
    -- end

    return 0
end

function action_perform_timer(context, evt)
    ScriptLib.SetTeamServerGlobalValue(context, context.owner_uid, "SGV_SeelieLightLevel", 0)
    return 0
end

LF_Initialize_Group(triggers, suites)