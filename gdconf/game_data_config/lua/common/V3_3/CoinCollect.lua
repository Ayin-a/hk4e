--[[======================================
||  filename:   CoinCollect
||  owner:      shuyi.chang
||  description:    3.3短距寻物
||  LogName:    ## TD_CoinCollect：
||  Protection: 
=======================================]]

--[[
local defs = 
{
    -- 还剩多少秒的时候出现金币提示光柱
    hintTime = 30,

    -- 限时金币出现的时长
    coinTime = 10,

    -- 挑战总时长【不配的话就默认是120】
    totalTime = 120,

    -- 技能持续时长【不配的话默认是10】
    skillDuration = 10,

    -- 对应的gallery id
    galleryId = 99,
}

local defs_miscs = 
{
    -- 特殊金币和它们关联的普通金币们，有几个特殊金币就应该有几项
    specialCoinTable = {
        -- 每项格式如下
        [specialCoin_configId] = {coin_configId_01, coin_configId_02, coin_configId_03, ...},
    },
    
}
--]]

-- 注意这个动态group卸载会先于gallery结束，所以不能用event_gallery_stop，保底在group will unload里
local extraTriggers = 
{
	{ config_id = 50000001, name = "GROUP_LOAD", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
	{ config_id = 50000002, name = "TIME_AXIS_PASS", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_EVENT_TIME_AXIS_PASS", trigger_count = 0 },
	-- { config_id = 50000003, name = "GADGET_STATE_CHANGE", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE", trigger_count = 0 },
	{ config_id = 50000004, name = "ENTER_REGION", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION", forbid_guest = false, trigger_count = 0 },
    -- { config_id = 50000005, name = "VARIABLE_CHANGE_COUNT", event = EventType.EVENT_VARIABLE_CHANGE, source = "collectedCoins", condition = "condition_EVENT_VARIABLE_CHANGE_COUNT", action = "action_EVENT_VARIABLE_CHANGE_COUNT", trigger_count = 0, tag = "99" },
    -- { config_id = 50000006, name = "SELECT_OPTION", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION", trigger_count = 0, },
    { config_id = 50000009, name = "VARIABLE_CHANGE", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_EVENT_VARIABLE_CHANGE", trigger_count = 0, },
    { config_id = 50000010, name = "GALLERY_START", event = EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_EVENT_GALLERY_START", trigger_count = 0, },
	{ config_id = 50000011, name = "LEAVE_REGION", event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_EVENT_LEAVE_REGION", trigger_count = 0 },
	{ config_id = 50000012, name = "GROUP_WILL_UNLOAD", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_EVENT_GROUP_WILL_UNLOAD", trigger_count = 0 },
	{ config_id = 50000013, name = "MP_ALL_PLAYER_DIE", event = EventType.EVENT_SCENE_MP_PLAY_ALL_AVATAR_DIE, source = "", condition = "", action = "action_EVENT_MP_ALL_PLAYER_DIE", trigger_count = 0 },

}

local extraVariables = 
{
    { config_id = 50000101, name = "final", value = 0, no_refresh = false },
    { config_id = 50000102, name = "collectedCoins", value = 0, no_refresh = false },
    { config_id = 50000103, name = "levelStart", value = 0, no_refresh = false },
}

local coin_gadgetId = 70220131
local specialCoin_gadgetId = 70220132

-- 所有不跟特殊金币挂钩的普通金币
local indieCoins = {}

-- 所有跟特殊金币挂钩的普通金币
local tempCoins = {}

local abilityGroup = "ActivityAbility_CoinCollect_AbilityGroup"

local totalCoinCount = 0

local totalTime = 120

local skillTable = 
{
    ["coin"] = {name = "coin", duration = 10},
    ["charge"] = {name = "charge", duration = 10},
}

local skillDuration = 10

local coinState = {
    ["default"] = 0,
    ["show"] = 201,
    ["highlight"] = 901,
    ["special"] = 902,
    ["dead"] = 202,
}
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
        -- 都放到初始suite 1中
        table.insert(suites[1].triggers,extraTriggers[i].name)
    end

    -- insert variables
    for i = 1, #extraVariables do
        table.insert(variables, extraVariables[i])
    end

    local temp = 0
    for i, v in pairs(defs_miscs.specialCoinTable) do
        for j = 1, #v do
            -- 每个限时金币记一下自己属于哪个特殊金币
            gadgets[v[j]]["specialCoin"] = i

            -- add all temp coins to table
            table.insert(tempCoins, v[j])
        end

        -- 每个特殊金币一个group var记录自己的限时金币被吃掉了多少个
        temp = temp + 1
        local coinVar = { config_id = 60000000 + temp, name = tostring(i), value = 0, no_refresh = true }
        table.insert(variables, coinVar)
    end

    -- add all independent coins to table
    for i, v in pairs(gadgets) do
        if v.gadget_id == coin_gadgetId then
            -- 不能是跟特殊金币关联的普通金币
            for j = 1, #tempCoins do
                if v.config_id == tempCoins[j] then
                    break
                end

                if j == #tempCoins then
                    -- 最后一项还没break，就是它了
                    table.insert(indieCoins, v.config_id)
                end
            end
        end
    end

    -- add ability group
    -- regions[defs.maxRegion].team_ability_group_list = {abilityGroup}

    totalCoinCount = #indieCoins + #tempCoins

    -- 处理下挑战时长
    if defs.totalTime ~= nil then
        totalTime = defs.totalTime
    end

    -- 处理下技能时长
    if defs.skillDuration ~= nil then
        skillDuration = defs.skillDuration
    end
end

function LF_PrintList(context, name, list)
    local emptyStr = ""
    for k, v in pairs(list) do
        emptyStr = emptyStr..v..", "
    end
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect： list name = "..name..", list content = "..emptyStr)
end

-- 从所有201金币中随机1个金币（特殊金币+不和特殊金币关联的普通金币）
function LF_RandomCoin(context) 
    local tempTable = {}
    -- 特殊金币
    for i, v in pairs(defs_miscs.specialCoinTable) do
        if ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, i) == coinState.show then
            table.insert(tempTable, i)
        end
    end

    -- 不和特殊金币关联的普通金币
    for i = 1, #indieCoins do
        if ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, indieCoins[i]) == coinState.show then
            table.insert(tempTable, indieCoins[i])
        end
    end

    LF_PrintList(context, "randomCoins", tempTable)

    if #tempTable == 0 then
        ScriptLib.PrintContextLog(context, "## TD_CoinCollect： no 201 coins")

        return 0
    end

    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    local coinId = tempTable[math.random(#tempTable)]

    ScriptLib.PrintContextLog(context, "## TD_CoinCollect： LF_RandomCoin is called, coin id = "..coinId)

    return coinId
end

function LF_ThreeRandomCoins(context) 
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect： LF_ThreeRandomCoins is called")

    local tempTable = {}
    -- 特殊金币
    for i, v in pairs(defs_miscs.specialCoinTable) do
        if ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, i) == coinState.show then
            table.insert(tempTable, i)
        end
    end

    -- 不和特殊金币关联的普通金币
    for i = 1, #indieCoins do
        if ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, indieCoins[i]) == coinState.show then
            table.insert(tempTable, indieCoins[i])
        end
    end

    LF_PrintList(context, "201Coins", tempTable)

    -- 要是不足三个金币在201，有几个用几个
    if #tempTable <= 3 then
        return tempTable
    end

    -- 多余三个
    math.randomseed(tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6))
    local middle = math.random(#tempTable)
    if middle <= 1 then
        -- 随到了1，取2
        middle = 2
    elseif middle == #tempTable then
        -- 随到了最后一项，取倒数第二项
        middle = #tempTable - 1
    end
    local middleId = tempTable[middle]

    local top = math.random(middle - 1)
    local topId = tempTable[top]

    local bottom = math.random(middle + 1, #tempTable)
    local bottomId = tempTable[bottom]

    local returnTable = {}
    if topId ~= 0 then
        table.insert(returnTable, topId)
    end
    if middleId ~= 0 then
        table.insert(returnTable, middleId)
    end
    if bottomId ~= 0 then
        table.insert(returnTable, bottomId)
    end
    LF_PrintList(context, "hintCoins", returnTable)
    return returnTable
end

function LF_ResetGroup(context, start)

    for i, v in pairs(defs_miscs.specialCoinTable) do
        ScriptLib.SetGroupVariableValue(context, tostring(i), 0)
    end

    if start == false then
        -- 结束的时候不设置任何状态
        return
    end

    -- 重置所有金币
    -- 保底把所有temp coins设置为【显示】状态
    for i = 1, #tempCoins do
        ScriptLib.SetGadgetStateByConfigId(context, tempCoins[i], coinState.show)
    end
    
    -- 保底把所有indie coins设置为显示状态
    for i = 1, #indieCoins do
        ScriptLib.SetGadgetStateByConfigId(context, indieCoins[i], coinState.show)
    end

    -- 把特殊金币设置为显示状态
    for k, v in pairs(defs_miscs.specialCoinTable) do
        ScriptLib.SetGadgetStateByConfigId(context, k, coinState.show)
    end

end

function LF_ResetVariables(context, start)
    -- 各种变量都归零
    ScriptLib.SetGroupVariableValue(context, "final", 0)
    ScriptLib.SetGroupVariableValue(context, "collectedCoins", 0)
    ScriptLib.SetGroupVariableValue(context, "levelStart", 0)

    ScriptLib.SetGroupTempValue(context, "lastCoin", 0, {})

    -- 所有人的各种sgv都归零
    local value = 0
    if start == true then
        value = 0
    elseif start == false then
        value = -3
    end

    local uidList = ScriptLib.GetSceneUidList(context)
    for i = 1, #uidList do
        -- 保底，value是负数的话能量一定不会随时间增长
        ScriptLib.SetTeamServerGlobalValue(context, uidList[i], "SGV_CoinCollect_Skill_Charge", value)
        ScriptLib.SetTeamServerGlobalValue(context, uidList[i], "SGV_CoinCollect_Skill_Coin", 0)
        ScriptLib.SetTeamServerGlobalValue(context, uidList[i], "SGV_CoinCollect_Widget_SkillEnabled", 0)

        -- 小道具初始给100能量，结束的时候能量清空(上限是200，-200肯定能清空)
        local ret = ScriptLib.AddTeamEntityGlobalFloatValue(context, {uidList[i]}, "GV_CoinCollect_Widget_Energy", 100 * (value + 1))
        ScriptLib.PrintContextLog(context, "## TD_CoinCollect： GV_CoinCollect_Widget_Energy is set to "..100 * (value + 1)..", uid = "..uidList[i]..", ret = "..ret)

    end

end

function LF_LevelStart(context, start)

    LF_ResetVariables(context, start)
    LF_ResetGroup(context, start)

    if start == true then
        -- 设置vision type
        local uid_list = ScriptLib.GetSceneUidList(context)
        ScriptLib.SetPlayerGroupVisionType(context, uid_list, {0})

    elseif start == false then
        -- vision type恢复正常
        local uid_list = ScriptLib.GetSceneUidList(context)
        ScriptLib.SetPlayerGroupVisionType(context, uid_list, {1})

    end
  
end

function LF_CheckSkill(context, uid)
    local list = ScriptLib.GetCoinCollectGalleryPlayerSkillInfo(context, uid, defs.galleryId)
    LF_PrintList(context, "skillList"..uid, list)

    if #list == 0 then
        ScriptLib.PrintContextLog(context, "## TD_CoinCollect： WARNING!! no player skill data")
        return 0
    end

    ScriptLib.SetGroupTempValue(context, "skill_"..uid, list[1], {})
    ScriptLib.SetGroupTempValue(context, "charge_"..uid, list[2], {})
    ScriptLib.SetGroupTempValue(context, "coin_"..uid, list[3], {})
    ScriptLib.SetGroupTempValue(context, "times_"..uid, 0, {})

    ScriptLib.PrintContextLog(context, "## TD_CoinCollect： LF_CheckSkill is called, uid = "..uid..", skill_id = "..list[1]..", charge = "..list[2]..", coin = "..list[3])
   
end


function LF_GetTableLength(t)
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
end

--================================================================
-- Triggers
--================================================================
function action_EVENT_GROUP_LOAD(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect： group is loaded")
    -- 打印一下各种变量
    LF_PrintList(context, "tempCoins", tempCoins)
    LF_PrintList(context, "indieCoins", indieCoins)
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect： total coins = "..totalCoinCount)

    -- 每个玩家记三个temp var给小道具技能
    local uid_list = ScriptLib.GetSceneUidList(context)
    for i = 1, #uid_list do
        ScriptLib.SetGroupTempValue(context, "skill_"..uid_list[i], 0, {})
        ScriptLib.SetGroupTempValue(context, "charge_"..uid_list[i], 0, {})
        ScriptLib.SetGroupTempValue(context, "coin_"..uid_list[i], 0, {})

    end

    -- 初始化其他group temp var
    ScriptLib.SetGroupTempValue(context, "galleryStart", 0, {})

    -- 气球默认0不出现，这个时候就要设置气球状态了！
    LF_ResetGroup(context, true)

    return 0
end

function action_EVENT_GROUP_WILL_UNLOAD(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect： group will unload")
    -- 埋点:每个玩家用了多少次技能
    local transaction = ScriptLib.GetGalleryTransaction(context, defs.galleryId)
    local uidList = ScriptLib.GetSceneUidList(context)
    for i = 1, #uidList do
        local skill_id = ScriptLib.GetGroupTempValue(context, "skill_"..uidList[i], {})
        local times = ScriptLib.GetGroupTempValue(context, "times_"..uidList[i], {})
        ScriptLib.PrintContextLog(context,"## TD_CoinCollect: transaction = "..transaction..
            ", skill_id = "..skill_id..", times = "..times..", gallery_id = "..defs.galleryId)
        ScriptLib.MarkGroupLuaAction(context, "CoinCollect_1", transaction,
            {["gallery_id"] = defs.galleryId, ["skill_id"] = skill_id, ["times"]= times})
    end

    -- 保底
    LF_LevelStart(context, false)

    return 0
end


function action_EVENT_ENTER_REGION(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect： player enters region")
    -- 玩家加载时间过长，可能会导致gallery开启后才enter scene(大世界均可传送)，如果enter scene的时候gallery已经开了，再统计一次技能
    if ScriptLib.GetGroupTempValue(context, "galleryStart", {}) == 1 then
        LF_CheckSkill(context, context.uid)
    end
    return 0
end

function action_EVENT_LEAVE_REGION(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect： player leaves region")

    LF_LevelStart(context, false)
    return 0
end

function action_EVENT_TIME_AXIS_PASS(context, evt)
    local timeProcess = evt.param1
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect: time axis "..evt.source_name..", stage "..timeProcess.. " is finished")

    if evt.source_name == "levelCountDown" then
        -- 随机若干普通金币和特殊金币光柱提示
        ScriptLib.SetGroupVariableValue(context, "final", 1)
        ScriptLib.ShowReminder(context, 400902)
        local randomCoins = LF_ThreeRandomCoins(context)
        for i = 1, #randomCoins do
            ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, randomCoins[i], coinState.highlight)

            -- 在对应位置生成一个雷达显示专用物件
            if gadgets[randomCoins[i]] ~= nil then
                local pos = gadgets[randomCoins[i]].pos
                local rot = gadgets[randomCoins[i]].rot
                ScriptLib.CreateGadgetByParamTable(context, {config_id = bait, pos = pos, rot = rot})
            end
        end
        
    elseif string.sub(evt.source_name, 1, 12) == "specialCoin_" then
        -- 所有201限时金币都消失回到0，特殊金币重新出现
        local configId = tonumber(string.sub(evt.source_name, 13))
        local tempCoins = defs_miscs.specialCoinTable[configId]
        ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, configId, coinState.show)
        for i = 1, #tempCoins do
            -- 还在902的金币消失
            if ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, tempCoins[i]) == coinState.special then
                ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, tempCoins[i], 0)
            end
        end
    else
        -- 技能结束
        local uid = tonumber(evt.source_name)
        if uid == nil then
            ScriptLib.PrintContextLog(context, "## TD_CoinCollect: WARNING!!! no valid uid when widget skill is supposed to end")
            return 0
        end
        
        -- 不在乎这个技能有没有金币和充能，都可以归零
        ScriptLib.SetTeamServerGlobalValue(context, uid, "SGV_CoinCollect_Skill_Charge", 0)
        ScriptLib.SetTeamServerGlobalValue(context, uid, "SGV_CoinCollect_Skill_Coin", 0)
        ScriptLib.SetTeamServerGlobalValue(context, uid, "SGV_CoinCollect_Widget_SkillEnabled", 0)
        
        ScriptLib.PrintContextLog(context, "## TD_CoinCollect: uid = "..uid..", skill end")
    -- elseif string.sub(evt.source_name, 1, 4) == "coin" then
    --     -- 金币技能结束
    --     local uid = tonumber(string.gsub(evt.source_name, "coin_", ""))

    --     if uid == nil then
    --         ScriptLib.PrintContextLog(context, "## TD_CoinCollect: WARNING!!! no valid uid when coin skill is supposed to end")
    --         return 0
    --     end

    --     ScriptLib.SetTeamServerGlobalValue(context, uid, "SGV_CoinCollect_Skill_Coin", 0)
    --     ScriptLib.PrintContextLog(context, "## TD_CoinCollect: uid = "..uid..", skill = coin, end")

    -- elseif string.sub(evt.source_name, 1, 6) == "charge" then
    --     -- 充能技能结束
    --     local uid = tonumber(string.gsub(evt.source_name, "charge_", ""))

    --     if uid == nil then
    --         ScriptLib.PrintContextLog(context, "## TD_CoinCollect: WARNING!!! no valid uid when charge skill is supposed to end")
    --         return 0
    --     end

    --     ScriptLib.SetTeamServerGlobalValue(context, uid, "SGV_CoinCollect_Skill_Charge", 0)
    --     ScriptLib.PrintContextLog(context, "## TD_CoinCollect: uid = "..uid..", skill = charge, end")
    end

    return 0
end

-- function condition_EVENT_VARIABLE_CHANGE_COUNT(context, evt)
--     if evt.param2 ~= evt.param1 then return true end
--     return false
-- end

-- function action_EVENT_VARIABLE_CHANGE_COUNT(context, evt)
--     ScriptLib.PrintContextLog(context, "## TD_CoinCollect: "..evt.source_name.." changes from "..evt.param2.." to ".. evt.param1)

--     return 0
-- end

function action_EVENT_VARIABLE_CHANGE(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect: "..evt.source_name.." changes from "..evt.param2.." to ".. evt.param1)

    if evt.param1 == evt.param2 then
        return 0
    end

    if evt.param1 == 1 and evt.source_name == "levelStart" then

        -- todo 应该服务器开启gallery，暂时先lua这里手动开
        local ret = ScriptLib.StartGallery(context, defs.galleryId)
        ScriptLib.PrintContextLog(context, "## TD_CoinCollect: start gallery = "..defs.galleryId..", ret = "..ret)

    end
  
    return 0
end

function action_EVENT_GALLERY_START(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect: gallery = "..evt.param1.." starts")

    ScriptLib.SetGroupTempValue(context, "galleryStart", 1, {})

    -- 重置变量，小道具初始给100，所有金币都显示
    LF_LevelStart(context, true)

    -- gallery开启后开始时间轴计时
    ScriptLib.InitTimeAxis(context, "levelCountDown", {totalTime - defs.hintTime, totalTime}, false)

  -- 把所有temp coins设置为【隐藏】状态
    for i = 1, #tempCoins do
        ScriptLib.SetGadgetStateByConfigId(context, tempCoins[i], coinState.default)
    end

    -- -- todo 应该gallery自带左侧进度显示，客户端还没接，先用挑战代替
    -- ScriptLib.StartChallenge(context, defs.challengeId, defs.challengeId, {totalTime, 3, 99, totalCoinCount})

    -- 判断此局使用的技能
    local uid_list = ScriptLib.GetSceneUidList(context)
    for i = 1, #uid_list do
        LF_CheckSkill(context, uid_list[i])
    end
    
    return 0
end

function action_EVENT_MP_ALL_PLAYER_DIE(context, evt)
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect: all players die in mp mode")

    return 0
end



--================================================================
-- SLCs
--================================================================
function SLC_Player_Approach_Coin(context, param1, param2)
    -- param1是金币的类型，param2
    local configId = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
    local gadgetState = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, configId)
    if configId == 0 then
        ScriptLib.PrintContextLog(context, "## TD_CoinCollect： SLC_Player_Approach_Coin is called, configId = "..configId..", empty config id, return immediately")
        return 0
    end

	if gadgets[configId] == nil or ScriptLib.CheckIsInGroup(context, 0, configId) == false then
        ScriptLib.PrintContextLog(context, "## TD_CoinCollect： SLC_Player_Approach_Coin is called, configId = "..configId..", cannot find entity in group, return immediately")
        return 0
    end

    if gadgets[configId].gadget_id ~= coin_gadgetId and gadgets[configId].gadget_id ~= specialCoin_gadgetId then
        ScriptLib.PrintContextLog(context, "## TD_CoinCollect： SLC_Player_Approach_Coin is called, configId = "..configId..", illegal gadget id, return immediately")
        return 0
    end

    ScriptLib.PrintContextLog(context, "## TD_CoinCollect： SLC_Player_Approach_Coin is called, configId = "..configId)
    
    -- 1普通金币，2特殊金币
    if param1 == 1 then
		-- ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, configId, 202)
        ScriptLib.KillEntityByConfigId(context, { config_id = configId })


        -- todo 通知gallery修改计分，暂时先用挑战做了
        ScriptLib.ChangeGroupVariableValue(context, "collectedCoins", 1)
        local collectedCoins = ScriptLib.GetGroupVariableValue(context, "collectedCoins")
        
        -- param2是消耗了多少时间
        -- local timePassed = totalTime - param2/1000
        local timePassed = param2/1000
        ScriptLib.UpdatePlayerGalleryScore(context, defs.galleryId, {["coin_collect_num"] = collectedCoins, ["last_collect_coin_left_time"] = timePassed})
        ScriptLib.PrintContextLog(context, "## TD_CoinCollect： a coin is picked up, gallery score: coin_collect_num = "..collectedCoins..", last_collect_coin_left_time = "..timePassed)

        -- 如果是特殊金币关联的限时金币
        local specialCoin_configId = gadgets[configId].specialCoin
        if specialCoin_configId ~= nil then
        -- if evt.param3 == 902 then
            ScriptLib.ChangeGroupVariableValue(context, tostring(specialCoin_configId), 1)
    
            -- 如果某一个特殊金币周围的限时金币都被拾取了，关联的特殊金币消失，时间轴取消(不能把关联的限时金币重置回来了)
            if ScriptLib.GetGroupVariableValue(context, tostring(specialCoin_configId)) == #defs_miscs.specialCoinTable[specialCoin_configId] then
                ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, specialCoin_configId, coinState.dead)
                ScriptLib.EndTimeAxis(context, "specialCoin_"..specialCoin_configId)
            end
        end

        -- 如果已经吃完所有金币，直接触发gallery成功结算
        if collectedCoins >= totalCoinCount then
            -- true是fail
		    ScriptLib.StopGallery(context, defs.galleryId, false)
        end
    elseif param1 == 2 then
        -- 2特殊金币，特殊金币消失，通知这个特殊金币关联的限时普通金币出现
		ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, configId, coinState.special)

        local tempCoins = defs_miscs.specialCoinTable[configId]
        for i = 1, #tempCoins do
            ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, tempCoins[i], coinState.special)
            ScriptLib.InitTimeAxis(context, "specialCoin_"..configId, {defs.coinTime}, false)
        end
    end

     -- 如果是最后高亮提示时刻，吃掉一个高亮金币就得再随机一个出来
     if gadgetState == coinState.highlight and ScriptLib.GetGroupVariableValue(context, "final") == 1 then
        ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, LF_RandomCoin(context), coinState.highlight)
    end

    return 0
end

function SLC_CoinCollect_WidgetUsed(context)
    
    -- 使用了一次小道具，需要判断是否需要修改小道具tick速度和金币拾取范围（别的技能的开关是SGV_CoinCollect_Widget_SkillEnabled）
    local coin = ScriptLib.GetGroupTempValue(context, "coin_"..context.uid,{})
    local charge = ScriptLib.GetGroupTempValue(context, "charge_"..context.uid,{})
    ScriptLib.PrintContextLog(context, "## TD_CoinCollect： SLC_CoinCollect_WidgetUsed is called, uid = "..context.uid..", coin = "..coin..", charge = "..charge)

    local times = ScriptLib.GetGroupTempValue(context, "times_"..context.uid, {})
    ScriptLib.SetGroupTempValue(context, "times_"..context.uid, times + 1, {})

    if coin == 1 then
        -- 能扩大金币范围
		ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_CoinCollect_Skill_Coin", 1)
        -- ScriptLib.InitTimeAxis(context, "coin_"..context.uid, {skillTable.coin.duration}, false)
    end

    if charge == 1 then
        -- 充能加速
        ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_CoinCollect_Skill_Charge", 1)
        -- ScriptLib.InitTimeAxis(context, "charge_"..context.uid, {skillTable.coin.duration}, false)
    end

    -- 其他战斗负责的技能，只听这个sgv控制
    local ret = ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_CoinCollect_Widget_SkillEnabled", 1)
    -- ScriptLib.PrintContextLog(context, "## TD_CoinCollect： SGV_CoinCollect_Widget_SkillEnabled is set to 1, ret = "..ret)

    -- 据说所有技能持续时长是一致的，只起一个时间轴统一管了
    ScriptLib.InitTimeAxis(context, tostring(context.uid), {skillDuration}, false)
    return 0
end


--================================================================
-- Initialization
--================================================================
LF_Initialize_Group(triggers, suites, variables, gadgets, regions)