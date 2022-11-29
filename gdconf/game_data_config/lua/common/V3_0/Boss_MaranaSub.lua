--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
-- goto 1176 296 -1594
--[[======================================
||	filename:       Boss_MaranaSub
||	owner:          zijun.ma
||	description:    零级WQBoss战三小岛特殊RQ
||	LogName:        TD_BossMaranaSub
||	Protection:     [Protection]
=======================================]]

-- 测试用例
--[[
goto -766 -153 3947
group SETVAR 133301038 BossBattleProgress 3
--]]

-- 数据结构
--[[
local BattleCfg = {
    BossGroup = 133301038,
    VarKey = "State_Island01",
    BossCidList = {39011},
    CoreCid = 39003,
    RegionCid = 39002,
    SeedCid = 39004,
}
--]]


local ProgressGroup = {
    BossMissionStart = {0},
    FirstNearMarana = {1},
    TryAttackBoss = {2},
    EnterLittleIsland = {3,7,12},
    BossSkillChange = {8},
    CompleteLittleIsland = {4,9,13},
    ReturnMain = {5,10,14},
    BossRecover = {6,11,15},
    LastBattle = {16},
    BossDie = {17},
    BossMissionOver = {18},
    BossBattleEnd = {19},
}

local MaranaSub_Trigger = {
    { keyWord = "EnterIsland", event = EventType.EVENT_ENTER_REGION, source = "", trigger_count = 0},
    { keyWord = "CoreDie", event = EventType.EVENT_LUA_NOTIFY, source = "DF_CoreDie", trigger_count = 0},
    { keyWord = "PointDie", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", trigger_count = 0},
    { keyWord = "BossDie", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", trigger_count = 0},
    --初始化依赖任务回滚处理
    --{ keyWord = "IslandInit", event = EventType.EVENT_GROUP_LOAD, source = "", trigger_count = 0},
}

function LF_Initialize_MaranaSub()
    local startConfigID = 50030001
    for _,v in pairs(MaranaSub_Trigger) do
        v.config_id = startConfigID
        if v.keyWordType == nil then
            v.name = "tri_" .. v.keyWord
        else
            v.name = "tri_" .. v.keyWord .. v.keyWordType
        end
        v.action = "action_" .. v.keyWord
        v.condition = ""
        startConfigID = startConfigID + 1
        table.insert(triggers, v)
    end

    LF_InsertTriggers(MaranaSub_Trigger,{1})

    local var = { config_id= 50030101, name = "DeathPointNum", value = 0, no_refresh = false }  --Boss战的步骤计数器
    variables[var.name] = var

    return 0
end

--[[=====================================
||	action函数
--======================================]]
-- IslandInit
function action_IslandInit(context,evt)
    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })
    return 0
end
-- EVENT_ENTER_REGION
function action_EnterIsland(context,evt)

    if evt.param1 ~= BattleCfg.RegionCid then
        return 0
    end

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.EnterLittleIsland,"action_EnterIsland") then
        return 0
    end

    local waveNum = LF_GetWaveNum(context,ProgressGroup.EnterLittleIsland,"action_EnterIsland")
    if "State_Island0" .. waveNum ~= BattleCfg.VarKey then
        ScriptLib.PrintContextLog(context,"TD_BossMaranaSub 提前进入区域不触发")
        return 0
    end

    ScriptLib.SetGroupVariableValueByGroup(context, BattleCfg.VarKey, 1, BattleCfg.BossGroup)
    ScriptLib.SetGadgetStateByConfigId(context, BattleCfg.SeedCid, 201)
    ScriptLib.PrintContextLog(context,"TD_BossMaranaSub 进入区域，切换大草种子状态")
    return 0
end

function action_PointDie(context,evt)
    if gadgets[evt.param2].gadget_id ~= 70310195 or 202 ~= evt.param1 then
        local msg = "TD_BossMaranaSub PointDie 未进入，检测到物件状态改变。"
        msg = msg .. "ConfigID为" .. evt.param2
        msg = msg .. "GadgetState为" .. evt.param1
        ScriptLib.PrintContextLog(context,msg)
        return  0
    end

    local curDeathPointNum = ScriptLib.GetGroupVariableValue(context, "DeathPointNum")
    ScriptLib.SetGroupVariableValue(context,"DeathPointNum",curDeathPointNum + 1)
    ScriptLib.PrintContextLog(context,"TD_BossMaranaSub 节点死亡流程：DeathPointNum + 1 = " .. curDeathPointNum + 1)

    if curDeathPointNum == 0 then
        if not LF_CheckProgressNoMatchGroup(context,ProgressGroup.BossSkillChange,"action_PointDieSP") then
            -- 第二场Boss战专用
            ScriptLib.SetGroupVariableValueByGroup(context, BattleCfg.VarKey, 3, BattleCfg.BossGroup)
        end
    end

    if curDeathPointNum + 1 >= 3 then
        -- 核心状态切换为1
        ScriptLib.SetGadgetStateByConfigId(context, BattleCfg.CoreCid, 1)
        -- 召唤怪物
        ScriptLib.AddExtraGroupSuite(context, 0, 2)
        -- 处理计数
        ScriptLib.SetGroupTempValue(context, "BossDieNum", #BattleCfg.BossCidList, {})
        ScriptLib.PrintContextLog(context,"TD_BossMaranaSub 节点死亡流程：侦测到全部节点死亡，核心状态切换为1")
    end

    return 0
end

function action_BossDie(context,evt)
    if not LF_IsInTable(evt.param1,BattleCfg.BossCidList) then
        ScriptLib.PrintContextLog(context,"TD_BossMaranaSub BossDie未进入，检测到怪物死亡，ConfigID为 " .. evt.param1)
        return  0
    end

    ScriptLib.ChangeGroupTempValue(context, "BossDieNum", -1, {})
    local BossDieNum = ScriptLib.GetGroupTempValue(context, "BossDieNum", {})
    ScriptLib.PrintContextLog(context,"TD_BossMaranaSub 死域之主战死，Cid =" .. evt.param1 .. "||BossDieNum = " .. BossDieNum)

    if BossDieNum == 0 then
        -- 核心切换到201
        ScriptLib.SetGadgetStateByConfigId(context, BattleCfg.CoreCid, 201)
        ScriptLib.PrintContextLog(context,"TD_BossMaranaSub 死域之主已全部死亡,核心状态切换为201")
    end

    return 0
end

function action_CoreDie(context,evt)
    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.CompleteLittleIsland,"action_EnterIsland") then
        -- 进度不对，不接受核心死亡消息
        return 0
    end
    ScriptLib.SetGadgetStateByConfigId(context, BattleCfg.CoreCid, 202)
    ScriptLib.SetGroupVariableValueByGroup(context, BattleCfg.VarKey, 2, BattleCfg.BossGroup)
    ScriptLib.PrintContextLog(context,"TD_BossMaranaSub 死域核心已被玩家破坏")
    return 0
end


--[[=====================================
||	流程函数
--======================================]]
function LF_CheckProgressNoMatchGroup(context,groupKey,functionName)
    local targetProgressList = groupKey
    local bossBattleProgress = ScriptLib.GetGroupVariableValueByGroup(context, "BossBattleProgress", 133301038)
    local targetProgress = targetProgressList[#targetProgressList]
    for i = #targetProgressList,1,-1 do
        if bossBattleProgress <= targetProgressList[i] then
            targetProgress = targetProgressList[i]
        end
    end

    if bossBattleProgress == targetProgress then
        ScriptLib.PrintContextLog(context, "## TD_BossMaranaSub From:" .. functionName .." ||  当前[Progress:".. bossBattleProgress .."]符合目标进度" ..targetProgress  )
        return false
    end
    ScriptLib.PrintContextLog(context, "## TD_BossMaranaSub From:" .. functionName .." ||  当前[Progress:".. bossBattleProgress .."]不符合目标进度" ..targetProgress .."!!!" )
    return true
end

function LF_GetWaveNum(context,groupKey,functionName)
    local targetProgressList = groupKey
    local bossBattleProgress = ScriptLib.GetGroupVariableValueByGroup(context, "BossBattleProgress", 133301038)

    local waveNum = #targetProgressList
    for i = #targetProgressList,1,-1 do
        if bossBattleProgress <= targetProgressList[i] then
            waveNum = i
        end
    end
    ScriptLib.PrintContextLog(context, "## TD_BossMarana From:" .. functionName .." ||  WaveNum = " .. waveNum )
    return waveNum
end
--[[=====================================
||	常用工具包
--======================================]]

-- 标准的InsertTriggers方法
function LF_InsertTriggers(TempTrigger,TempRequireSuite)
    local hasRequireSuitList = not (TempRequireSuite == nil or #TempRequireSuite <=0)
    if hasRequireSuitList then
        if (init_config.io_type ~= 1) then
            --常规group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for k,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suites) then
                        table.insert(suites[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        else
            --flow group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for k,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suite_disk) then
                        table.insert(suite_disk[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        end
    else
        --不存在白名单设置，走常规的trigger注入流程
        if (init_config.io_type ~= 1) then
            for i = 1, #suites do
                for k,v in pairs(TempTrigger) do
                    table.insert(suites[i].triggers, v.name)
                end
            end
        else
            for i = 1, #suite_disk do
                for k,v in pairs(TempTrigger) do
                    table.insert(suite_disk[i].triggers, v.name)
                end
            end
        end
    end
end

-- 简单拆分一个数组
function LF_ArrayToString(array)
    local s = "{"
    for k,v in pairs(array) do
        if k < #array then
            s = s .. v ..","
        else
            s = s .. v
        end
    end
    s = s .."}"
    return s
end

-- 根据数组的长度修饰num
function Fix(value,array,error)
    if value < 1 then
        ScriptLib.PrintLog(error .. "value = " .. value)
        return 1
    end
    if value > #array then
        ScriptLib.PrintLog(error .. "value = " .. value)
        return #array
    end

    return value
end

-- 判断特定值是否在Table中
function LF_IsInTable(value, table)
    for k,v in ipairs(table) do
        if v == value then
            return true;
        end
    end
    return false;
end

LF_Initialize_MaranaSub()
