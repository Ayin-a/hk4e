--ServerUploadTool Save to [/root/env/data/lua/common/V3_0]
--[[======================================
||	filename:       Boss_Marana
||	owner:          zijun.ma
||	description:    零级WQBoss战专用RQ
||	LogName:        TD_BossMarana
||	Protection:     [Protection]
=======================================]]

--[[
测试用
openstate all 1
-- 兰那罗出生点
goto -730 -136 3812
SCENE_TAG clear
group unload 133301038
group load 133301038
group refresh 133301038 1
DEATH_ZONE SET_OPEN 330112 0

-- 初始流程测试
QUEST Clear Father 73037
QUEST ACCEPT 7303703
group SETVAR 133301038 State_Island01 1
group SETVAR 133301038 State_Island01 2
group SETVAR 133301038 State_Island02 1
group SETVAR 133301038 State_Island02 3
group SETVAR 133301038 State_Island02 2
group SETVAR 133301038 State_Island03 1
group SETVAR 133301038 State_Island03 2
QUEST ACCEPT 7303709
SCENE_TAG clear

-- 快速召唤Boss
group refresh 133301038 1
group SETVAR 133301038 BossBattleProgress 1
进入圈内，播完CS后，Boss出现

-- 第一段打击
gadget state 72000019 202
group SETVAR 133301038 BossBattleProgress 6

-- 第二段打击
gadget state 72000019 202
group SETVAR 133301038 BossBattleProgress 11

-- 第三段打击 直接使用第三段打击会进入决战环节
gadget state 72000019 202
group SETVAR 133301038 BossBattleProgress 15

-- Boss死亡流程
group SETVAR 133301038 BossBattleProgress 19
group SETVAR 133301038 TempTest00 1
group SETVAR 133301038 TempTest01 1

-- 常用备忘
TempTest00
EQUIP ADD 23334 1 1 0
goto -679.627 -149.604 4034.534 Boss位置
DEATH_ZONE SET_OPEN 330112 0
GROUP GETVAR 133301038 BossBattleProgress
GROUP GET_TRIGGER 133301038 tri_BossMissionStart01
SceneObj_Area_Xm_Property_Ani_Unique_Marana_01
Property_Ani_Unique_Marana_01
--]]

--[[
7303713的start开始播：BOSS创生CS 播完任务结束

7303705的start开始播：BOSS挣扎CS 播完任务结束

7303707的start开始播：BOSS死亡CS 播完任务结束

7303709的start开始播：变树CS 播完任务结束
--]]

--[[
local BattleCfg = {
    -- RegionConfigID
    NearMaranaRegion = 38016,   --靠近无留坨播放CS的区域
    RanaroStartMoveRegion = 38017,  --玩家进入后，兰那罗引导玩家前往各个岛的区域
    EnterMainIslandRegion = 38018,  --判定玩家返回主岛的区域，决定Boss是否使用技能1。
    LeaveMainIslandRegion = 38019,  --判定玩家离开主岛的区域，决定Boss是否使用技能2、技能3。
    -- 回滚Point
    RevertPoint = 38045,
    -- GadgetConfigID
    BossCid = 38020,    --Boss
    LookCid = 38022,
    RanaroCid = 38023,  --兰那罗
    BlackMud = 38040,   --黑泥
    -- RanaroPointArray
    RanaroPointList = {               --兰那罗移动的路线
        [0] = {id = 330100001,list = {1,2,3,4,5,6,7,8,9,10,12,13}},
        [1] = {id = 330100003,list = {1,2,3,4,5,6,7,8}},
        [2] = {id = 330100004,list = {1,2,3,4,5,6,7,8,9,10,12,13,14}},
        [3] = {id = 330100005,list = {1,2,3,4,5,6,7,8,9,10,12,13}},
    },
    RanaroJumpPoint = {               --兰那罗在特定路线中的跳跃点
        [0] = 38015, -- 兰那罗第一次抵达岛上的点
        [1] = 38037,
        [2] = 38038,
        [3] = 38039,
        [4] = 38021, -- 兰那罗回到中间的点
    },
    -- Suite
    HookSuites = {2,3,4},           --钩爪Suite，依次对应三个小岛。
    LastBattleSuite = 5,            --与无留坨决战时Suite，有AbilityGroup和空气墙
    SalanSuite = 6,                 --endSuite，莎兰树Suite
    MonsterLoopSuite = {7,8},       --与无留坨决战时循环刷Monster的Suite
    -- CutSceneID
    BossAppearCutScene = {id = 89,time = 17}, --Cs_Sumeru_WitherForest_WQ7303713_Creation_Convert
    RanaroCrownCutScene = {id =90, time = 71}, --Cs_WQ7303705_Battle_Convert
    BossDieCutScene = {id =91, time = 10}, --Cs_Sumeru_WitherForest_WQ7303707_Die_Convert
    SalanAppearCutScene = {id =92, time = 20}, --Cs_Sumeru_WitherForest_WQ7303709_Tree_Convert
    -- 任务相关参数
    QuestMSG = "fin",
    -- Reminder相关
    ReminderList = {
        [0] = 33010045,
        -- 主岛返回中
        [1] = 33010048,
        [2] = 33010053,
        [3] = 33010058,
        -- Boss锁血中
        [4] = 33010049,
        [5] = 33010054,
    }
}

local QuestCfg = {
    MissionStart01 = "7303704",
    MissionStart02 = "7303705",
    BossAppear = "7303704",
    BossThirdDefeat01 = "7303704",
    BossThirdDefeat02 = "7303704",
    BossDie = "7303706",
    MissionOver ="7303709",
    MissionRevert = "7303702",
}
--]]

local BossState = {
    StandBy = { State = 0},
    Battle = { State = 201},
    Weak = { State = 202},
    WeakSpecial = {State = 203},
    Die = { State = 204},
    Born = { State = 901},
    WaitHit = { State = 902},
}

local ProgressTable = {
    [0] = { showString = "Boss战任务开始时，在特定位置创建兰那罗", group = "BossMissionStart"},
    [1] = { showString = "进入Boss区域时。Boss入战，进入Skill1(1/3)", group = "FirstNearMarana"},
    [2] = { showString = "玩家尝试攻击Boss,被驱离。兰那罗引导(1/3)", group = "TryAttackBoss"},
    [3] = { showString = "玩家进入岛A时。开始小岛A关卡", group = "EnterLittleIsland"},
    [4] = { showString = "完成岛A关卡时。创建钩爪", group = "CompleteLittleIsland"},
    [5] = { showString = "玩家返回Boss区域时。Boss弱点暴露（1/3)", group = "ReturnMain"},
    [6] = { showString = "Boss血量告急，请求复原时。(1/3)", group = "BossRecover"},
    [7] = { showString = "玩家进入岛B时。开始小岛B关卡", group = "EnterLittleIsland"},
    [8] = { showString = "在小岛B节点死亡时，Boss变招", group = "BossSkillChange"},
    [9] = { showString = "完成岛B关卡时。创建钩爪", group = "CompleteLittleIsland"},
    [10] = { showString = "玩家返回Boss区域时。Boss弱点暴露（2/3)", group = "ReturnMain"},
    [11] = { showString = "Boss血量告急，请求复原时。(2/3)", group = "BossRecover"},
    [12] = { showString = "玩家进入岛C时。开始小岛C关卡", group = "EnterLittleIsland"},
    [13] = { showString = "完成岛C关卡时。创建钩爪", group = "CompleteLittleIsland"},
    [14] = { showString = "玩家返回Boss区域时。Boss弱点暴露（3/3)", group = "ReturnMain"},
    [15] = { showString = "Boss血量告急，请求复原时。进主角戴冠CS。(3/3)", group = "BossRecover"},
    [16] = { showString = "戴冠CS结束时。锁主角戴冠战斗。", group = "LastBattle"},
    [17] = { showString = "Boss被主角成功击杀时。播Boss死亡CS。", group = "BossDie"},
    [18] = { showString = "结束任务开始时，播CS", group = "BossMissionOver"},
    [19] = { showString = "无时点。Boss战斗已结束。", group = "BossBattleEnd"},
}

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

local BossMarana_Trigger = {
    -- Boss战的初始化
    { keyWord = "BossBattleInit",event = EventType.EVENT_GROUP_LOAD, source = "", trigger_count = 0},
    -- 检查Event
    { keyWord = "RegionCheck",event = EventType.EVENT_ENTER_REGION, source = "", trigger_count = 0},
    { keyWord = "GadgetCheck",event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", trigger_count = 0},
    { keyWord = "AvatarNearCheck",event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", trigger_count = 0},
    -- 进入离开主岛相关的各种区域时触发
    { keyWord = "FirstNearMarana",event = EventType.EVENT_ENTER_REGION, source = "", trigger_count = 0},
    --{ keyWord = "RanaroStartMove", event = EventType.EVENT_LEAVE_REGION, source = "", trigger_count = 0},
    { keyWord = "LeaveMainIslandRegion", event = EventType.EVENT_LEAVE_REGION, source = "", trigger_count = 0},
    { keyWord = "EnterMainIslandRegion", event = EventType.EVENT_ENTER_REGION, source = "", trigger_count = 0},
    { keyWord = "ReturnMainIsland", event = EventType.EVENT_ENTER_REGION, source = "", trigger_count = 0},
    -- 由其它Group使用ExecuteGroupLua，尝试使Group修改此Var,并尝试反过来向对应Group去ExecuteGroupLua
    { keyWord = "EnterLittleIsland", keyWordType = "01", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Island01", trigger_count = 0},
    { keyWord = "EnterLittleIsland", keyWordType = "02", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Island02", trigger_count = 0},
    { keyWord = "EnterLittleIsland", keyWordType = "03", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Island03", trigger_count = 0},
    { keyWord = "CompleteLittleIsland", keyWordType = "01",event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Island01", trigger_count = 0},
    { keyWord = "CompleteLittleIsland", keyWordType = "02",event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Island02", trigger_count = 0},
    { keyWord = "CompleteLittleIsland", keyWordType = "03",event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Island03", trigger_count = 0},
    -- 特殊节点通知
    { keyWord = "BossSkillChange", event = EventType.EVENT_VARIABLE_CHANGE, source = "State_Island02", trigger_count = 0},
    -- 兰纳罗移动相关
    { keyWord = "RanaroGuideMove", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", trigger_count = 0},
    { keyWord = "RanaroReach", event = EventType.EVENT_PLATFORM_ARRIVAL, source = "", trigger_count = 0},
    { keyWord = "RanaroMoveNext", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", trigger_count = 0},
    -- 任务配合流程
    { keyWord = "BossMissionStart", keyWordType = "01",event = EventType.EVENT_QUEST_START, source = QuestCfg.MissionStart01, trigger_count = 0},
    { keyWord = "BossMissionStart", keyWordType = "02",event = EventType.EVENT_QUEST_START, source = QuestCfg.MissionStart02, trigger_count = 0},
    { keyWord = "BossMissionOver", event = EventType.EVENT_QUEST_START, source = QuestCfg.MissionOver, trigger_count = 0},
    { keyWord = "MissionRevert", event = EventType.EVENT_QUEST_START, source = QuestCfg.MissionRevert, trigger_count = 0},
    -- 配合CutScene的时间轴
    { keyWord = "TryAttackBoss", keyWordType = "01",event = EventType.EVENT_TIME_AXIS_PASS, source = "ProgressTimePush", trigger_count = 0},
    { keyWord = "RanaroStartMove", keyWordType = "01",event = EventType.EVENT_TIME_AXIS_PASS, source = "RanaroStartMove", trigger_count = 0},
    -- 配合CutScene的时间轴
    { keyWord = "BossAppearMovie", event = EventType.EVENT_TIME_AXIS_PASS, source = "BossAppearMovie", trigger_count = 0},
    { keyWord = "LastBattle", event = EventType.EVENT_LUA_NOTIFY, source = "NoticeLastBattle", trigger_count = 0},
    { keyWord = "DelayAddSuite", event = EventType.EVENT_TIME_AXIS_PASS, source = "DelayAddSuite", trigger_count = 0},
    { keyWord = "BossDieEnd", event = EventType.EVENT_TIME_AXIS_PASS, source = "BossDieEnd", trigger_count = 0},
    { keyWord = "BossBattleEnd", event = EventType.EVENT_TIME_AXIS_PASS, source = "BossBattleEnd", trigger_count = 0},
    -- 由Gadget上发的消息(打特别快可能丢消息)
    { keyWord = "TryAttackBoss", keyWordType = "02",event = EventType.EVENT_LUA_NOTIFY, source = "TryAttackBoss", trigger_count = 0},
    { keyWord = "BossRecover", keyWordType = "01",event = EventType.EVENT_LUA_NOTIFY, source = "HpPhase01", trigger_count = 1},
    { keyWord = "BossRecover", keyWordType = "02",event = EventType.EVENT_LUA_NOTIFY, source = "HpPhase02", trigger_count = 1},
    { keyWord = "BossRecover", keyWordType = "03",event = EventType.EVENT_LUA_NOTIFY, source = "HpPhase03", trigger_count = 1},
    { keyWord = "BossDie", event = EventType.EVENT_LUA_NOTIFY, source = "BossDie", trigger_count = 0},
    -- 怪物死亡
    { keyWord = "SecondMonsterWave",event = EventType.EVENT_ANY_MONSTER_DIE, source = "", trigger_count = 0},
    { keyWord = "DelaySummon", event = EventType.EVENT_TIME_AXIS_PASS, source = "SecondMonsterWave", trigger_count = 0},
    -- 辅助测试
    { keyWord = "BossSummon",keyWordType = "Test", event = EventType.EVENT_VARIABLE_CHANGE, source = "TempTest00", trigger_count = 0}, --用来快速召唤Boss出现
    { keyWord = "BossDie", keyWordType = "Test",event = EventType.EVENT_VARIABLE_CHANGE, source = "TempTest01", trigger_count = 0}, --快速切换到Boss死亡
    --{ keyWord = "RevertTeleport", keyWordType = "Test",event = EventType.EVENT_VARIABLE_CHANGE, source = "TempTest02", trigger_count = 0}, --快速切换到Boss死亡
    { keyWord = "BossBattleEnd", keyWordType = "Test",event = EventType.EVENT_VARIABLE_CHANGE, source = "TempTest03", trigger_count = 0}, --快速切换到Boss死亡
}

function LF_Initialize_BossMarana()
    local startConfigID = 50000001
    for _,v in pairs(BossMarana_Trigger) do
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
    LF_InsertTriggers(BossMarana_Trigger,{ 1})

    local var = { config_id= 50000101, name = "BossBattleProgress", value = 0, no_refresh = false }  --Boss战的步骤计数器
    variables[var.name] = var
    local var = { config_id= 50000102, name = "State_Island01", value = 0, no_refresh = false }  --岛A的状态 1表示进入 2表示完成
    variables[var.name] = var
    local var = { config_id= 50000103, name = "State_Island02", value = 0, no_refresh = false }  --岛B的状态 1表示进入 2表示完成 3表示切换技能
    variables[var.name] = var
    local var = { config_id= 50000104, name = "State_Island03", value = 0, no_refresh = false }  --岛C的状态 1表示进入 2表示完成
    variables[var.name] = var
    local var = { config_id= 50000105, name = "SGV_NextSkill", value = 1, no_refresh = false }  --Boss的下一个技能(弃用)
    variables[var.name] = var
    local var = { config_id= 50000106, name = "CurrentSkill", value = 0, no_refresh = false }  --Boss当前释放的技能
    variables[var.name] = var
    local var = { config_id= 50000107, name = "RanaroPointIndex", value = 0, no_refresh = false }  -- 兰纳罗的线路
    variables[var.name] = var
    local var = { config_id= 50000108, name = "RanaroPointStep", value = 1, no_refresh = false }  -- 兰纳罗线路的步数
    variables[var.name] = var
    local var = { config_id= 50000109, name = "SGV_BattleState", value = 0, no_refresh = false }  -- 天驹可能需要使用的独立SGV
    variables[var.name] = var
    local var = { config_id= 50000110, name = "Protect", value = 0, no_refresh = true }  -- 保底刷新
    variables[var.name] = var
    local var = { config_id= 50000210, name = "TempTest00", value = 0, no_refresh = false }
    variables[var.name] = var
    local var = { config_id= 50000211, name = "TempTest01", value = 0, no_refresh = false }
    variables[var.name] = var
    local var = { config_id= 50000212, name = "TempTest02", value = 0, no_refresh = false }
    variables[var.name] = var
    local var = { config_id= 50000213, name = "TempTest03", value = 0, no_refresh = false }
    variables[var.name] = var

    gadgets[BattleCfg.BossCid].server_global_value_config = {["SGV_BattleState"] = 0}
    return 0
end

-- EVENT_GROUP_LOAD
function action_BossBattleInit(context,evt)
    -- Boss死后不再刷新
    LF_InitLevel(context)
    ScriptLib.PrintContextLog(context, "## TD_BossMarana BossBattleInit| 玩法初始化")

    return 0
end

function action_RegionCheck(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_BossMarana  RegionCheck| RegionID = " .. evt.param1 )
    return 0
end

function action_GadgetCheck(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_BossMarana  GadgetCheck| configID = " .. evt.param2 .. " 的状态被修改为" .. evt.param1 )
    return 0
end

function action_AvatarNearCheck(context,evt)
    ScriptLib.PrintContextLog(context, "## TD_BossMarana  AvatarNearCheck| configID = " .. evt.param1)
    return 0
end

-- 关卡回滚时发生的传送
function action_MissionRevert(context,evt)

    LF_InitLevel(context)
    ScriptLib.PrintContextLog(context, "## TD_BossMarana BossBattleInit| 玩法初始化")

    return 0
end

-- 任务开始时，创生兰那罗移动平台
function action_BossMissionStart(context,evt)
    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.BossMissionStart, "action_BossMissionStart") then
        return 0
    end
    
    --进度推进
    LF_ProgressPush(context,"action_BossMissionStart")
    -- 创建兰那罗
    ScriptLib.CreateGadget(context, { config_id = BattleCfg.RanaroCid })

    return 0
end

-- 进度0:第一次接近Marana，Boss出现。Var记录Boss情况
function action_FirstNearMarana(context,evt)

    local regionConfigID = evt.param1
    if regionConfigID ~= BattleCfg.NearMaranaRegion then
        return 0
    end

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.FirstNearMarana, "action_FirstNearMarana") then
        return 0
    end

    --进度推进
    LF_ProgressPush(context,"action_FirstNearMarana")
    --播放CutScene
    ScriptLib.PlayCutScene(context, BattleCfg.BossAppearCutScene.id, 0)
    ScriptLib.InitTimeAxis(context, "BossAppearMovie",{BattleCfg.BossAppearCutScene.time + 0.5}, false)
    --令兰那罗快速靠近
    LF_MoveToPointEnd(context, "action_FirstNearMarana")
    -- 移除黑泥
    ScriptLib.KillEntityByConfigId(context, { config_id = BattleCfg.BlackMud })

    return 0
end

-- 时间轴中做好Boss战铺垫
function action_BossAppearMovie(context,evt)

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.TryAttackBoss,"action_BossAppearMovie") then
        return 0
    end

    -- Boss创生
    ScriptLib.CreateGadget(context, { config_id = BattleCfg.BossCid })
    -- 天气切换
    ScriptLib.SetWeatherAreaState(context, 4087, 1) -- 凋零之森 BOSS入战天气
    ScriptLib.SetWeatherAreaState(context, 4035, 0) -- 凋零之森Boss战环境（打斗前）
    -- 启TryAttackBoss保底时间轴
    ScriptLib.InitTimeAxis(context, "ProgressTimePush",{5.0}, false)
    return 0
end

-- 尝试攻击Boss节点,此时兰纳罗会开始彻底
function action_TryAttackBoss(context,evt)

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.TryAttackBoss,"action_TryAttackBoss") then
        return 0
    end

    -- 流程推进
    LF_ProgressPush(context,"action_TryAttackBoss")
    -- 弹出Reminder
    ScriptLib.ShowReminder(context, BattleCfg.ReminderList[0])
    -- Boss开始发飙
    ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, BattleCfg.BossCid, BossState.Battle.State)
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, BattleCfg.BossCid,"SGV_BattleState", 1)

    -- 兰纳罗开始移动
    ScriptLib.InitTimeAxis(context, "RanaroStartMove",{6.0}, false)

    return 0
end

-- 离开Boss，兰纳罗仓鼠球开始移动
function action_RanaroStartMove(context,evt)

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.EnterLittleIsland,"action_RanaroStartMove") then
        return 0
    end

    -- 开始移动
    -- 根据波次，设置兰纳罗的移动路线
    ScriptLib.SetGroupVariableValue(context,"RanaroPointIndex",1)
    -- 将当前设为第一步，之后兰纳罗每次被贴近会移动到下一个点
    ScriptLib.SetGroupVariableValue(context,"RanaroPointStep",1)
    -- 立刻开始移动
    LF_MoveToNextPoint(context, "action_RanaroMoveNext")

    return 0
end
--]]

-- 离开主岛,不推进    ["EnterLittleIsland"] = {2,7,13},
function action_LeaveMainIslandRegion(context,evt)

    local regionConfigID = evt.param1
    if regionConfigID ~= BattleCfg.LeaveMainIslandRegion then
        return 0
    end

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.EnterLittleIsland,"action_LeaveMainIslandRegion") then
        return 0
    end

    local waveNum = LF_GetWaveNum(context,ProgressGroup.EnterLittleIsland,"action_LeaveMainIslandRegion")

    ScriptLib.SetEntityServerGlobalValueByConfigId(context, BattleCfg.BossCid,"SGV_BattleState", 2)

    return 0

end

-- 重新返回主岛，不推进     ["EnterLittleIsland"] = {2,7,13},
function action_EnterMainIslandRegion(context,evt)

    local regionConfigID = evt.param1
    if regionConfigID ~= BattleCfg.EnterMainIslandRegion then
        return 0
    end

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.EnterLittleIsland,"action_EnterMainIslandRegion")
    and LF_CheckProgressNoMatchGroup(context,ProgressGroup.BossSkillChange,"action_EnterMainIslandRegion")
    and LF_CheckProgressNoMatchGroup(context,ProgressGroup.CompleteLittleIsland,"action_EnterMainIslandRegion")  then
        return 0
    end

    -- Boss下一个技能切回1
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, BattleCfg.BossCid,"SGV_BattleState", 1)
    return 0

end


-- 抵达小岛后，开始小岛关卡，推进。     ["EnterLittleIsland"] = {2,7,13},
function action_EnterLittleIsland(context,evt)

    if evt.param1 == evt.param2 or 1 ~= evt.param1 then
        return 0
    end

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.EnterLittleIsland,"action_EnterLittleIsland") then
        return 0
    end

    local waveNum = LF_GetWaveNum(context,ProgressGroup.CompleteLittleIsland,"action_EnterLittleIsland")

    if waveNum ~= LF_GetKeyWordNum(evt.source_name) then
        ScriptLib.PrintContextLog(context, "## TD_BossMarana EnterLittleIsland 玩家进了当前进度不对应的岛 waveNum =" .. waveNum .. " ,keyName = " .. evt.source_name )
        -- 尝试将对应值重新设回
        ScriptLib.SetGroupVariableValue(context, evt.source_name,0)
        ScriptLib.PrintContextLog(context, "## TD_BossMarana action_EnterLittleIsland 已经将" .. evt.source_name .. "设回0")
        return 0
    end

    LF_ProgressPush(context,"action_EnterLittleIsland")

    LF_MoveToPointEnd(context, "action_EnterLittleIsland")

    if waveNum == 1 then
        -- Boss下一个技能切回1
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, BattleCfg.BossCid,"SGV_BattleState", 3)
    end

    if waveNum == 2 then
        -- Boss下一个技能切回2
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, BattleCfg.BossCid,"SGV_BattleState", 4)
    end

    if waveNum == 3 then
        -- Boss下一个技能切回3
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, BattleCfg.BossCid,"SGV_BattleState", 5)
    end

    return 0
end

--  完成岛A关卡时。创建钩爪    ["CompleteLittleIsland"] = {3,9,14},
function action_CompleteLittleIsland(context,evt)

    if 2 ~= evt.param1 or evt.param1 == evt.param2 then
        return 0
    end

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.CompleteLittleIsland,"action_CompleteLittleIsland") then
        return 0
    end

    local waveNum = LF_GetWaveNum(context,ProgressGroup.CompleteLittleIsland,"action_CompleteLittleIsland")

    if waveNum ~= LF_GetKeyWordNum(evt.source_name) then
        -- 正常逻辑中不应出现的操作，需关注
        ScriptLib.PrintContextLog(context, "## TD_BossMarana CompleteLittleIsland 玩家完成现在不应完成的岛 waveNum =" .. waveNum .. " ,keyName = " .. evt.source_name )
        return 0
    end

    LF_ProgressPush(context,"action_CompleteLittleIsland")

    -- Boss结束当前技能
    -- Boss状态改变（直接改状态）
    ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, BattleCfg.BossCid, BossState.Weak.State)
    -- 注目Boss ( 创生一个注目Gadget，然后一段时间后自我销毁）
    ScriptLib.CreateGadget(context, { config_id = BattleCfg.LookCid })
    -- 根据当前波数加载不同钩爪点的Suite
    ScriptLib.AddExtraGroupSuite(context, base_info.group_id, BattleCfg.HookSuites[waveNum])
    -- 兰那罗遁地
    ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, BattleCfg.RanaroCid, 1)
    -- 提示玩家返回主岛的Reminder
    ScriptLib.ShowReminder(context, BattleCfg.ReminderList[waveNum])
    -- 设置BattleState为0
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, BattleCfg.BossCid,"SGV_BattleState", 0)

    return 0
end

--  特殊节点用于处理Boss变招 BossSkillChange = {8},
function action_BossSkillChange(context,evt)

    if 3 ~= evt.param1 or evt.param1 == evt.param2 then
        return 0
    end

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.BossSkillChange,"action_BossSkillChange") then
        return 0
    end

    LF_ProgressPush(context,"action_BossSkillChange")

    return 0
end

-- 玩家返回Boss区域时。Boss弱点暴露    ["ReturnMain"] = {4,10,15},
function action_ReturnMainIsland(context,evt)

    local regionConfigID = evt.param1
    if regionConfigID ~= BattleCfg.NearMaranaRegion then
        return 0
    end

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.ReturnMain,"action_ReturnMainIsland") then
        return 0
    end

    local waveNum = LF_GetWaveNum(context,ProgressGroup.ReturnMain,"action_ReturnMainIsland")
    LF_ProgressPush(context,"action_ReturnMainIsland")

    -- 移除钩爪
    ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, BattleCfg.HookSuites[waveNum])
    -- 移除兰纳罗仓鼠球
    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, BattleCfg.RanaroCid )
    -- 兰纳罗仓鼠球重新创生
    local pointCid = BattleCfg.RanaroJumpPoint[4]
    ScriptLib.CreateGadgetByConfigIdByPos(context, BattleCfg.RanaroCid, points[pointCid].pos, points[pointCid].rot)

    return 0
end

-- Boss血量告急，请求复原时
function action_BossRecover(context,evt)

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.BossRecover,"action_BossRecover") then
        return 0
    end

    local waveNum = LF_GetWaveNum(context,ProgressGroup.BossRecover,"action_BossRecover")

    LF_ProgressPush(context,"action_BossRecover")

    if waveNum >= 3 then
        -- 播放戴冠CS
        ScriptLib.PlayCutScene(context, BattleCfg.RanaroCrownCutScene.id, 0)
        -- PS4经验参数大约6秒进CS
        ScriptLib.InitTimeAxis(context, "DelayAddSuite",{8.0}, false)
        ScriptLib.PrintContextLog(context, "## TD_BossMarana action_BossRecover CheckPoint03")
    else
        -- 不是第三波的场合，Boss进入WeakEnd
        ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, BattleCfg.BossCid, BossState.Battle.State)
        ScriptLib.SetEntityServerGlobalValueByConfigId(context, BattleCfg.BossCid,"SGV_BattleState", 1)
        ScriptLib.PrintContextLog(context, "## TD_BossMarana action_BossRecover CheckPoint01")

        -- 播放对应Reminder
        ScriptLib.ShowReminder(context, BattleCfg.ReminderList[3+waveNum])
        -- 兰那罗开始引导赶路（可触碰)
        -- 根据波次，设置兰纳罗的移动路线
        ScriptLib.SetGroupVariableValue(context,"RanaroPointIndex",1+waveNum)
        -- 将当前设为第一步，之后兰纳罗每次被贴近会移动到下一个点
        ScriptLib.SetGroupVariableValue(context,"RanaroPointStep",1)
        -- 立刻开始移动
        LF_MoveToNextPoint(context, "action_RanaroMoveNext")

    end

    ScriptLib.PrintContextLog(context, "## TD_BossMarana action_BossRecover CheckPoint02")
    return 0
end

-- 延迟上头环
function action_DelayAddSuite(context)
    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.LastBattle,"action_DelayAddSuite") then
        return 0
    end
    -- Boss进入虚弱
    ScriptLib.SetGroupGadgetStateByConfigId(context, base_info.group_id, BattleCfg.BossCid, BossState.WeakSpecial.State)
    -- 加载LastBattle的Suite（含AB和空气墙)
    ScriptLib.AddExtraGroupSuite(context, base_info.group_id, BattleCfg.LastBattleSuite)
    -- 角色开启花环功能
    ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_Ability_ForestWQ", 1)
    return 0
end

-- 戴冠CS结束时。锁主角戴冠战斗。 17
function action_LastBattle(context,evt)

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.LastBattle,"action_LastBattle") then
        return 0
    end

    ScriptLib.PrintContextLog(context, "## TD_BossMarana LastBattle 播放CutScene中")

    LF_ProgressPush(context,"action_LastBattle")

    -- 发消息
    local questMsg = LF_CurBattleMSG(QuestCfg.BossThirdDefeat01)
    ScriptLib.AddQuestProgress(context, questMsg)
    -- 发消息
    questMsg = LF_CurBattleMSG(QuestCfg.BossThirdDefeat02)
    ScriptLib.AddQuestProgress(context, questMsg)
    -- 刷第一波怪
    ScriptLib.AddExtraGroupSuite(context, base_info.group_id, 7)
    ScriptLib.SetGroupTempValue(context,"NextWave",1,{})

    -- 通知Boss进入6
    ScriptLib.SetEntityServerGlobalValueByConfigId(context, BattleCfg.BossCid,"SGV_BattleState", 6)

    return 0
end

-- AnyMonsterDie
function action_SecondMonsterWave( context, evt )
    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.BossDie,"action_BossDie") then
        return 0
    end

    local nextWave = ScriptLib.GetGroupTempValue(context, "NextWave", {})
    local tempList = ScriptLib.GetGroupAliveMonsterList(context, base_info.group_id)

    if next(tempList)==nil and nextWave > 0 then
        nextWave = nextWave +1
        if nextWave > #BattleCfg.MonsterLoopSuite then
            nextWave = 1
        end
        -- 记录Wave数
        ScriptLib.SetGroupTempValue(context,"NextWave",nextWave,{})
        -- 处理时间轴
        ScriptLib.InitTimeAxis(context, "SecondMonsterWave",{1.6}, false)
    end

    return 0
end

function action_DelaySummon(context)
    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.BossDie,"action_BossDie") then
        return 0
    end
    local nextWave = ScriptLib.GetGroupTempValue(context, "NextWave", {})
    ScriptLib.AddExtraGroupSuite(context, base_info.group_id, BattleCfg.MonsterLoopSuite[nextWave])

    return 0
end

-- Boss被主角成功击杀时。播Boss死亡CS。
function action_BossDie(context,evt)

    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.BossDie,"action_BossDie") then
        return 0
    end

    LF_ProgressPush(context,"action_BossDie")
    --清空所有怪物Suite
    for i = 1,#BattleCfg.MonsterLoopSuite do
        ScriptLib.RemoveExtraGroupSuite(context, 133301038, BattleCfg.MonsterLoopSuite[i])
    end

    --结束操作
    ScriptLib.RefreshGroup(context, { group_id = 133301039, suite = 3 })
    ScriptLib.RefreshGroup(context, { group_id = 133301040, suite = 3 })
    ScriptLib.RefreshGroup(context, { group_id = 133301041, suite = 3 })
    ScriptLib.ChangeDeathZone(context,0,{is_open = false})
    -- 关闭地上死域
    ScriptLib.ChangeDeathZone(context,330111,{is_open = false})
    --开播CS
    ScriptLib.PlayCutScene(context, BattleCfg.BossDieCutScene.id, 0)
    ScriptLib.InitTimeAxis(context, "BossDieEnd",{BattleCfg.BossDieCutScene.time + 0.5}, false)
    -- 移除Boss
    ScriptLib.KillEntityByConfigId(context, { config_id = BattleCfg.BossCid })
    -- 移除AB和空气墙
    ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, BattleCfg.LastBattleSuite)
    -- 角色关闭花环功能
    ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_Ability_ForestWQ", 0)
    return 0
end

-- BossDieEnd结束后
function action_BossDieEnd(context,evt)
    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.BossMissionOver,"action_BossDieEnd") then
        return 0
    end

    -- 移除兰纳罗仓鼠球
    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, BattleCfg.RanaroCid )
    -- 推进指定任务
    local questMsg = LF_CurBattleMSG(QuestCfg.BossDie)
    ScriptLib.AddQuestProgress(context, questMsg)
    -- 角色关闭花环功能
    ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_Ability_ForestWQ", 0)

    ScriptLib.PrintContextLog(context, "## TD_BossMarana action_BossDieEnd Boss死亡的CS结束，移除了仓鼠球和Boss，并且推进了" .. QuestCfg.BossDie)
    return 0
end

-- 响应关卡结束
function action_BossMissionOver(context,evt)
    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.BossMissionOver,"action_BossMissionOver") then
        return 0
    end

    LF_ProgressPush(context,"action_BossMissionOver")
    -- 莎兰树CS
    ScriptLib.PlayCutScene(context, BattleCfg.SalanAppearCutScene.id, 0)
    ScriptLib.InitTimeAxis(context, "BossBattleEnd",{BattleCfg.SalanAppearCutScene.time + 0.5}, false)
    -- 移除压草
    ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, 38034)
    return 0
end

-- 莎兰树CS 结束后执行
function action_BossBattleEnd(context,evt)
    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.BossBattleEnd,"action_BossBattleEnd") then
        return 0
    end

    -- 发消息
    local questMsg = LF_CurBattleMSG(QuestCfg.MissionOver)
    ScriptLib.AddQuestProgress(context, questMsg)
    ScriptLib.PrintContextLog(context, "## TD_BossMarana action_BossBattleEnd 莎兰树CS结束，切SceneTag、任务"..questMsg.."进度推进、切Suite")
    
    -- 切Suite(压草片调整)
    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = BattleCfg.SalanSuite })
    -- 任务切SceneTag(走LevelTag或者任务）
    ScriptLib.DelSceneTag(context,3,1101)
    ScriptLib.DelSceneTag(context,3,1103)
    ScriptLib.DelSceneTag(context,3,1105)
    ScriptLib.AddSceneTag(context,3,1102)
    ScriptLib.AddSceneTag(context,3,1104)
    ScriptLib.AddSceneTag(context,3,1106)
    -- 天气变化
    ScriptLib.SetWeatherAreaState(context, 4012, 0) -- 凋零之森 无光水室天气
    ScriptLib.SetWeatherAreaState(context, 4087, 0) -- 凋零之森 BOSS入战天气
    ScriptLib.SetWeatherAreaState(context, 4032, 0) -- 凋零之森死域环境（任务前）
    ScriptLib.SetWeatherAreaState(context, 4033, 1) -- 凋零之森死域环境（任务后）
    ScriptLib.SetWeatherAreaState(context, 4035, 0) -- 凋零之森Boss战环境（打斗前）
    ScriptLib.SetWeatherAreaState(context, 4036, 1) -- 凋零之森Boss战环境（打斗后）

    return 0
end

-- 兰纳罗前往下一个目标点
function action_RanaroMoveNext(context,evt)
    -- 这个事件触发时，移动平台必定静止
    -- 检查Gadget
    if BattleCfg.RanaroCid ~= evt.param1 then
        return 0
    end

    -- 检查反馈组
    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.EnterLittleIsland,"RanaroMoveNext") then
        return 0
    end

    -- 兰纳罗移动逻辑
    LF_MoveToNextPoint(context, "action_RanaroMoveNext")


    return 0
end

-- 兰纳罗抵达目标点
function action_RanaroReach(context,evt)

    if BattleCfg.RanaroCid ~= evt.param1 then
        return 0
    end

    local currentPointIndex= ScriptLib.GetGroupVariableValue(context, "RanaroPointIndex")
    ScriptLib.PrintContextLog(context, "## TD_BossMarana RanaroReach currentPointIndex = " .. currentPointIndex)
    if currentPointIndex > #BattleCfg.RanaroPointList then
        ScriptLib.PrintContextLog(context, "## TD_BossMarana RanaroReach currentPointIndex 不在RanaroPointList 中")
        return 0
    end

    local reachPointArray = BattleCfg.RanaroPointList[currentPointIndex].list
    local curStep = ScriptLib.GetGroupVariableValue(context, "RanaroPointStep")

    ScriptLib.PrintContextLog(context, "## TD_BossMarana RanaroReach curStep =" .. curStep .. " || evt.param3 = " .. evt.param3)

    if evt.param3 >= reachPointArray[curStep] then
        -- 已抵达阶段目标点，等待玩家过来
        ScriptLib.StopPlatform(context, BattleCfg.RanaroCid)
    end

    if curStep > #reachPointArray then
        -- 抵达终点可能要触发的一些逻辑
        ScriptLib.PrintContextLog(context, "## TD_BossMarana RanaroReach 兰纳罗已抵达reachPointArray的终点 curStep =" .. curStep)

        ScriptLib.SetGroupVariableValue(context, "RanaroPointStep",0)

    end

    return 0
end

-- 初始兰纳罗的引导移动
function action_RanaroGuideMove(context,evt)
    -- 这个事件触发时，移动平台必定静止
    -- 检查Gadget
    if BattleCfg.RanaroCid ~= evt.param1 then
        return 0
    end

    -- 检查反馈组
    if LF_CheckProgressNoMatchGroup(context,ProgressGroup.FirstNearMarana, "action_RanaroGuideMove") then
        return 0
    end

    -- 兰纳罗移动逻辑
    LF_MoveToNextPoint(context,"action_RanaroGuideMove")


    return 0
end

-- 快速测试用
function action_BossSummon(context,evt)
    if evt.param1 ~= 1 then
        return 0
    end
    ScriptLib.CreateGadget(context, { config_id = BattleCfg.BossCid })
    LF_MoveToPointEnd(context, "action_BossSummon")
    ScriptLib.KillEntityByConfigId(context, { config_id = BattleCfg.BlackMud })
    return 0
end

--[[=====================================
||	流程函数
--======================================]]
-- 关卡初始化
function LF_InitLevel(context)
    -- 天气初始化(方便测试)
    ScriptLib.SetWeatherAreaState(context, 4012, 1) -- 凋零之森 无光水室天气
    ScriptLib.SetWeatherAreaState(context, 4087, 0) -- 凋零之森 BOSS入战天气
    ScriptLib.SetWeatherAreaState(context, 4032, 1) -- 凋零之森死域环境（任务前）
    ScriptLib.SetWeatherAreaState(context, 4033, 0) -- 凋零之森死域环境（任务后）
    ScriptLib.SetWeatherAreaState(context, 4035, 1) -- 凋零之森Boss战环境（打斗前）
    ScriptLib.SetWeatherAreaState(context, 4036, 0) -- 凋零之森Boss战环境（打斗后）

    -- 回滚时刷新Group
    ScriptLib.RefreshGroup(context, { group_id = 133301039, suite = 1 })
    ScriptLib.RefreshGroup(context, { group_id = 133301040, suite = 1 })
    ScriptLib.RefreshGroup(context, { group_id = 133301041, suite = 1 })
    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })

    -- 恢复死域
    if ScriptLib.GetDeathZoneStatus(context,0) == 0 then
        ScriptLib.ChangeDeathZone(context,0,{is_open = true})
    end
    -- 恢复地上死域
    if ScriptLib.GetDeathZoneStatus(context,330111) == 0 then
        ScriptLib.ChangeDeathZone(context,330111,{is_open = true})
    end

    -- 角色关闭花环功能
    ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_Ability_ForestWQ", 0)

    ScriptLib.PrintContextLog(context, "## TD_BossMarana LF_InitLevel| 初始化全部完成")
    return 0
end

-- 向下一个点移动
function LF_MoveToNextPoint(context,functionName)
    -- 向下一个点移动
    local currentPointIndex= ScriptLib.GetGroupVariableValue(context, "RanaroPointIndex")
    ScriptLib.PrintContextLog(context, "## TD_BossMarana From：" .. functionName .."  || 兰纳罗点阵移动 currentPointIndex = " .. currentPointIndex)
    if currentPointIndex > #BattleCfg.RanaroPointList then
        return 0
    end

    local reachPointArray = BattleCfg.RanaroPointList[currentPointIndex].list
    local pointArrayID = BattleCfg.RanaroPointList[currentPointIndex].id
    -- 更新RanaroPointStep
    local nextStep = ScriptLib.GetGroupVariableValue(context, "RanaroPointStep") + 1
    if nextStep > #reachPointArray then
        -- 已经转移到终点
        ScriptLib.PrintContextLog(context, "## TD_BossMaranaFrom：" .. functionName .."  || 兰纳罗点阵移动 兰纳罗已抵达当前reachPointArray的终点")
        return 0
    end

    ScriptLib.SetGroupVariableValue(context,"RanaroPointStep",nextStep)
    ScriptLib.PrintContextLog(context, "## TD_BossMarana From：" .. functionName .."  || 兰纳罗点阵移动 reachPointArray =" .. LF_ArrayToString(reachPointArray)  .. " ,nextStep = " .. nextStep)

    local curPath = LF_GetNextPath(reachPointArray,nextStep)

    -- 向下一个点进发

    ScriptLib.PrintContextLog(context, "## TD_BossMarana From：" .. functionName .."  || 兰纳罗点阵移动 下一个点列 curPath =" .. LF_ArrayToString(curPath))
    ScriptLib.SetPlatformPointArray(context, BattleCfg.RanaroCid, pointArrayID, curPath, { route_type = 0 })

    return 0
end

-- 快速移动到终点，实际上只移动最后一小段
function LF_MoveToPointEnd(context,functionName)
    local currentPointIndex= ScriptLib.GetGroupVariableValue(context, "RanaroPointIndex")
    ScriptLib.PrintContextLog(context, "## TD_BossMarana From：" .. functionName .."  || 兰纳罗快速移动 currentPointIndex = " .. currentPointIndex)
    if currentPointIndex > #BattleCfg.RanaroPointList then
        return 0
    end

    local reachPointArray = BattleCfg.RanaroPointList[currentPointIndex].list
    ScriptLib.PrintContextLog(context, "## TD_BossMarana From：" .. functionName .."  || 兰纳罗快速移动 reachPointArray =" .. LF_ArrayToString(reachPointArray))

    -- step直接跳到最终步
    local curStep = ScriptLib.GetGroupVariableValue(context, "RanaroPointStep")

    if curStep == #reachPointArray then
        ScriptLib.PrintContextLog(context, "## TD_BossMarana From：" .. functionName .."  || 兰纳罗快速移动 已移动至终点不触发此Action")
        return 0
    end

    -- 更新Step
    ScriptLib.SetGroupVariableValue(context, "RanaroPointStep", #reachPointArray)
    -- 移除兰纳罗仓鼠球
    ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, BattleCfg.RanaroCid )
    -- 兰纳罗仓鼠球重新创生
    local pointCid = BattleCfg.RanaroJumpPoint[currentPointIndex]
    ScriptLib.CreateGadgetByConfigIdByPos(context, BattleCfg.RanaroCid, points[pointCid].pos, points[pointCid].rot)
    ScriptLib.PrintContextLog(context, "## TD_BossMarana From：" .. functionName .."  || 兰纳罗快速移动 强行移除后创生")

end

-- 检查最小进度是否不匹配
function LF_CheckProgressNoMatchGroup(context,groupKey,functionName)
    local targetProgressList = groupKey
    local bossBattleProgress = ScriptLib.GetGroupVariableValue(context, "BossBattleProgress")
    local targetProgress = targetProgressList[#targetProgressList]
    for i = #targetProgressList,1,-1 do
        if bossBattleProgress <= targetProgressList[i] then
            targetProgress = targetProgressList[i]
        end
    end

    if bossBattleProgress == targetProgress then
        ScriptLib.PrintContextLog(context, "## TD_BossMarana From:" .. functionName .." ||  当前[Progress:".. bossBattleProgress .."]符合目标进度" ..targetProgress  )
        return false
    end
    ScriptLib.PrintContextLog(context, "## TD_BossMarana From:" .. functionName .." ||  当前[Progress:".. bossBattleProgress .."]不符合目标进度" ..targetProgress .."!!!" )
    return true
end

-- 获取对应Group的波次
function LF_GetWaveNum(context,groupKey,functionName)
    local targetProgressList = groupKey
    local bossBattleProgress = ScriptLib.GetGroupVariableValue(context, "BossBattleProgress")

    local waveNum = #targetProgressList
    for i = #targetProgressList,1,-1 do
        if bossBattleProgress <= targetProgressList[i] then
            waveNum = i
        end
    end
    ScriptLib.PrintContextLog(context, "## TD_BossMarana From:" .. functionName .." ||  WaveNum = " .. waveNum )
    return waveNum
end

-- 进度推进流程
function LF_ProgressPush(context,functionName)
    local bossBattleProgress = ScriptLib.GetGroupVariableValue(context, "BossBattleProgress")
    local showString = ProgressTable[bossBattleProgress + 1].group
    ScriptLib.ChangeGroupVariableValue(context, "BossBattleProgress", 1)
    ScriptLib.PrintContextLog(context, "## TD_BossMarana From：" .. functionName .."  || 流程进度推进，当前[Progress:"..bossBattleProgress + 1 .."] : " .. showString )
    return 0
end

function LF_CurBattleMSG(questid)
    return BattleCfg.QuestMSG .."_".. tostring(questid)
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
                for _,v in pairs(TempTrigger) do
                    if (TempRequireSuite[i]<=#suites) then
                        table.insert(suites[TempRequireSuite[i]].triggers, v.name)
                    end
                end
            end
        else
            --flow group注入。trigger注入白名单定义的suite list
            for i = 1, #TempRequireSuite do
                for _,v in pairs(TempTrigger) do
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
                for _,v in pairs(TempTrigger) do
                    table.insert(suites[i].triggers, v.name)
                end
            end
        else
            for i = 1, #suite_disk do
                for _,v in pairs(TempTrigger) do
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
-- 根据点阵获得一个简单路径
function LF_GetNextPath(pointArray, step)
    local path = {}

    if step == 1 or step > #pointArray then
        path = { pointArray[step] }
        return path
    end

    local pointFrom = pointArray[step - 1]
    local pointTo = pointArray[step]
    for i=  pointFrom,pointTo do
        table.insert(path,i)
    end

    return path
end

function LF_GetKeyWordNum(keyName)
    if keyName == "State_Island01" then
        return 1
    end
    if keyName == "State_Island02" then
        return 2
    end
    if keyName == "State_Island03" then
        return 3
    end
    return 0
end


LF_Initialize_BossMarana()