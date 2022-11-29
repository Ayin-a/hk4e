--- ServerUploadTool Save to [/root/env/data/lua/common/V2_8]  ---
--[[======================================
||  filename:   DLActivityDungeon
||  owner:      weiwei.sun
||  description:    DreamLand大活动角色地城通用Buff控制器 挂在挑战Group上
||  LogName:    ## [DLDungeon]
||  Protection: 
=======================================]]
--[[
local defs = {
    --是否教学关
    is_tutorial = 1,
    --起始操作台
    starter = ,
    --起始操作台选项
    option_id = ,
    --波次之间延时 秒
    delay = ,
    --挑战总时限 秒
    time_limit = ,

    --怪物潮信息
    --monsters填入怪物configID，
    --当场上本列表的怪数量小于min时触发补怪，补至max。max勿超过mosnters数量
    --mona_buffs:莫娜地城限定，本次怪物潮对应的buff。为LD约定好的枚举。
    tide_cfg = {

        [1] = { monsters = {1001,1002,1003,1004}, min = 3, max = 4},
        [2] = { monsters = {1001,1002,1003,1004}, min = 3, max = 4, mona_buffs = {}},
    },
    --怪物潮随机表
    --随机固定顺序怪物潮组合 每次进地城随机取key。
    --key对应value代表依序出现的MonsterTide，小花括号内配置复数个表示同时刷出。
    rand_table = {
        [1] = 
        {
            {1,2},
            {3},
            {4}
        },
    },
    --谁的地城 1-万叶 2-辛焱 3-菲谢尔 4-莫娜
    type = ,

    --莫娜、辛焱需配这里-随机suite池
    rand_suites = {},

    --万叶、菲谢尔需配这里-生成buff随机点位configIDs
    point_list = {},
    --万叶、菲谢尔需配这里-普通buff物件池
    buff_pool = {},
    --万叶、菲谢尔需配这里-限定buff物件池
    buff_pool_spec = {},
    --万叶、菲谢尔需配这里-buff物件每次刷几个
    buff_count = ,
    --莫娜地城星星和压板对应关系
    stars = {
        --suite x
        [x] = {{星星configID1, 板子configID1}, {星星configID2, 板子configID2}},
        ....
    },

}
]]

local cfg = {
    --1-万叶 2-辛焱 3-菲谢尔 4-莫娜
    challenge_id = {2010037,2010046,2010048,2010047},
    --持续刷buff时，间隔时间
    buff_interval = 30,

    exhiKey_succ = 
    {
        [1] = {"Activity_SummerTimeV2_Kazuha_Succ", "Activity_SummerTimeV2_Kazuha_SuccOnce"},
        [2] = {"Activity_SummerTimeV2_Xinyan_Succ", "Activity_SummerTimeV2_Xinyan_SuccOnce"},
        [3] = {"Activity_SummerTimeV2_Fischl_Succ", "Activity_SummerTimeV2_Fischl_SuccOnce"},
        [4] = {"Activity_SummerTimeV2_Mona_Succ", "Activity_SummerTimeV2_Mona_SuccOnce"},
    },
    --需要遍历上传的玩家陈列室 累计值
    exhiKey_all ={
        "Activity_SummerTimeV2_Kazuha_TSkill",
        "Activity_SummerTimeV2_Mona_Push",
        "Activity_SummerTimeV2_Mona_Buff",
        "Activity_SummerTimeV2_Fischl_ElecShock",
        "Activity_SummerTimeV2_Fischl_Buff",
        "Activity_SummerTimeV2_Xinyan_Enbreak",
        --"Activity_SummerTimeV2_Xinyan_FallAttack",--改为单人跨局累计

    },
    --陈列室替换值，每次开挑战需要手动重置
    exhiKey_all_replace = {
        --万叶
        [1] = {
            "Activity_SummerTimeV2_Kazuha_TotalBuff", --2.8大活动地城-万叶-单局拾取Buff总数  
            "Activity_SummerTimeV2_Kazuha_TSkillOnce", --2.8大活动地城-万叶-单局使用T键技能数   
        },
        --辛焱
        [2] = {
            "Activity_SummerTimeV2_Xinyan_GadgetUsage",--2.8大活动地城-辛焱-单局交互传音花次数 
            "Activity_SummerTimeV2_Xinyan_EnbreakOnce",--2.8大活动地城-辛焱-单局传音花碎盾次数 
            "Activity_SummerTimeV2_Xinyan_FallAttackOnce",--2.8大活动地城-辛焱-单局下落冲击波击中次数
        },
        --菲谢尔
        [3] = {
            "Activity_SummerTimeV2_Fischl_BuffOnce",--2.8大活动地城-菲谢尔-单局获得奥兹buff次数
            "Activity_SummerTimeV2_Fischl_ElecShockOnce",--2.8大活动地城-菲谢尔-单局雷冲击波击中次数 
        },
        --莫娜
        [4] = {
            "Activity_SummerTimeV2_Mona_PushOnce",--2.8大活动地城-莫娜-单局撞怪数 
            "Activity_SummerTimeV2_Mona_BuffOnce",--2.8大活动地城-莫娜-单局获得星座buff次数
        }
    },
    --局内reminder
     --1-万叶 2-辛焱 3-菲谢尔 4-莫娜
    reminder = {
        [1] = 600123,--刷出buff时
        [2] = 600124,--刷出monsterTide 3、4、5、6时
        [3] = 600125,--刷出buff时
        [4] = 600126,--星星按键可踩时
    }
}
local extra_Triggers = {

    { config_id = 8000001, name = "Monster_Tide_Die", event = EventType.EVENT_MONSTER_TIDE_DIE, source = "", condition = "", action = "action_Monster_Tide_Die", trigger_count = 0},
    --每30秒一刷，直到开始新的一波怪
    { config_id = 8000004, name = "Buff_Sub_TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "routine_buff", condition = "", action = "action_RoutineBuff_TimeAxis_Pass", trigger_count = 0},
    { config_id = 8000006, name = "MonaBuff2_TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "mona_buff2", condition = "", action = "action_MonaBuff2_TimeAxis_Pass", trigger_count = 0},
    { config_id = 8000007, name = "WindField_GadgetCreate", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "", action = "action_WindField_GadgetCreate", trigger_count = 0},
    { config_id = 8000008, name = "WindField_GadgetDie", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_WindField_GadgetDie", trigger_count = 0},
    
    { config_id = 8000009, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0},
    { config_id = 8000010, name = "Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_Select_Option", trigger_count = 0},

    { config_id = 8000011, name = "Dungeon_All_Avatar_Die", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_Dungeon_All_Avatar_Die", trigger_count = 0},
    { config_id = 8000012, name = "Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_Challenge_Success", trigger_count = 0},
    { config_id = 8000013, name = "Challenge_Fail", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_Challenge_Fail", trigger_count = 0},

}

function LF_Initialize(triggers, suites)
    for i=1,#extra_Triggers do
        table.insert(triggers, extra_Triggers[i])
        table.insert(suites[init_config.suite].triggers,extra_Triggers[i].name)
    end
    --本次打哪个怪物潮套餐
    table.insert(variables,{ config_id = 50000001, name = "rand_index", value = 1, no_refresh = true })
    --本次创哪个suite
    table.insert(variables,{ config_id = 50000002, name = "rand_suite", value = 0, no_refresh = true })
end

function action_Group_Load(context, evt)
    --莫娜、辛焱地城add随机suite
    if 2 == defs.type or 4 == defs.type then 
        LF_AddRandomSuite(context)
    end
    return 0
end

function action_Select_Option(context, evt)
    -- 判断是starter
    if evt.param1 ~= defs.starter then
        return 0
    end
    if nil ~= defs.option_id then 
        ScriptLib.DelWorktopOptionByGroupId(context, base_info.group_id, defs.starter, defs.option_id)
    end

    LF_SetRandIndex(context)

    LF_InitChallenge(context)

    LF_InitExhibitionTemp(context)

    if nil == defs.is_tutorial then
        LF_ClearReplacableExhibition(context)
        if 2 == defs.type then 
            LF_Init_XinyanWatcherCounter(context)
        end
    end
    
    ScriptLib.SetGroupTempValue(context, "wave", 1, {})
    LF_StartMonsterTide(context, 1)

    --辛焱 风场计数
    if 2 == defs.type then
         ScriptLib.SetGroupTempValue(context, "xinyan_wind", 0,{}) 
    end
    --ability SGVchange触发器   
    ScriptLib.SetGroupTempValue(context, "sgv_changer", 1, {})
    return 0
end

--每次挑战清除翻牌子的陈列室替换值
function LF_ClearReplacableExhibition(context)
    local uid_list = ScriptLib.GetSceneUidList(context)
    for k, v in pairs(uid_list) do
        for ik, iv in pairs(cfg.exhiKey_all_replace[defs.type]) do
            ScriptLib.ClearExhibitionReplaceableData(context, v, iv)
        end
    end
    return 0
end

function LF_SetRandIndex(context)
    local rand_index = 1
    --若配置了复数个，则随机一个
    if 1 < #defs.rand_table then
        math.randomseed(ScriptLib.GetServerTime(context))
        rand_index = math.random(#defs.rand_table)
    end
    ScriptLib.SetGroupVariableValue(context, "rand_index", rand_index)
    ScriptLib.PrintContextLog(context, "## [DLDungeon] LF_SetRandIndex. Monster tide table index@"..rand_index)
    return 0
end

function action_RoutineBuff_TimeAxis_Pass(context)
    ScriptLib.PrintContextLog(context, "## [DLDungeon] RoutineBuff_TimeAxis_Pass.")
    LF_ClearBuffGadget(context)
    LF_CreateRandomBuff(context, defs.buff_count)
    return 0
end

function LF_InitChallenge(context)
    local rand_index = ScriptLib.GetGroupVariableValue(context, "rand_index")

    --计算怪物数量
    local tide_queue = defs.rand_table[rand_index]
    local sum = 0
    for k,v in pairs(tide_queue) do 
        for ik, iv in pairs(v) do
            sum = sum + #defs.tide_cfg[iv].monsters
        end
    end
    --开启挑战
    ScriptLib.StartChallenge(context, defs.challenge_id, defs.challenge_id, { defs.time_limit, base_info.group_id, sum })
    return 0
end

function action_Dungeon_All_Avatar_Die(context, evt)

    local uid_list = ScriptLib.GetSceneUidList(context)   
    for k,v in pairs(uid_list) do
        local is_all_dead = ScriptLib.IsPlayerAllAvatarDie(context, v)
        if false == is_all_dead then
            return 0
        end
    end 
    ScriptLib.SetGroupTempValue(context, "is_all_dead", 1, {})
    ScriptLib.CauseDungeonFail(context)
    ScriptLib.StopChallenge(context, defs.challenge_id, 0)
    return 0
end

function LF_ClearAllMonsterTide(context)

    --取得rand_index
    local rand_index = ScriptLib.GetGroupVariableValue(context, "rand_index")
    --取得波次。找已刷出的，所以应该-1
    local wave = ScriptLib.GetGroupTempValue(context, "wave", {}) - 1

    --数值越界 由于tide_index获取不正确，所以直接return不清怪了
    if nil == defs.rand_table[rand_index] or nil == defs.rand_table[rand_index][wave] then
        return 0
    end

    --正常值 clear指定的怪物潮
    for k,v in pairs(defs.rand_table[rand_index][wave]) do 
        --怪物潮索引
        local tide_index = wave*1000 + v  
        ScriptLib.PrintContextLog(context, "## [DLDungeon] Clear monster tide. tide_cfg@"..v.." tide_index@"..tide_index)
        ScriptLib.KillMonsterTide(context, base_info.group_id, tide_index)
    end
    return 0 
end

--开启一个波次的怪物潮
--wave：波次序号，rand_table的key
function LF_StartMonsterTide(context, wave)

    --万叶、菲谢尔刷buff
    if 1 == defs.type or 3 == defs.type then 

        ScriptLib.EndTimeAxis(context, "routine_buff") 

        LF_ClearBuffGadget(context)
        LF_CreateRandomBuff(context, defs.buff_count)

        ScriptLib.InitTimeAxis(context, "routine_buff", {cfg.buff_interval}, true)
        ScriptLib.PrintContextLog(context, "## [DLDungeon] Buff_TimeAxis_Pass. Start routine buff time axis.")
    end
    --莫娜亮石板
    if 4 == defs.type then 
        LF_ActiveMonaStar(context)
    end

    local rand_index = ScriptLib.GetGroupVariableValue(context, "rand_index")
    --越界修正
    --rand_index异常直接取1
    if rand_index > #defs.rand_table then 
        rand_index = 1
        ScriptLib.SetGroupVariableValue(context, "rand_index", rand_index)
    end
    --波次异常直接停止 以免无限循环
    if wave > #defs.rand_table[rand_index] then 
        return 0
    end
    --本轮有几个并行怪物潮
    local tide_num = #defs.rand_table[rand_index][wave]

    --莫娜用 标记并行怪物潮的第一位
    ScriptLib.SetGroupTempValue(context, "mona_buff_idx", defs.rand_table[rand_index][wave][1],{})

    ScriptLib.SetGroupTempValue(context, "tide_num", tide_num, {})

    --启动并行怪物潮
    for k,v in pairs(defs.rand_table[rand_index][wave]) do 
        --设置怪物潮索引
        local tide_index = wave*1000 + v  
        ScriptLib.PrintContextLog(context, "## [DLDungeon] Start monster tide. tide_cfg@"..v.." tide_index@"..tide_index)
        --创建怪物潮
        ScriptLib.AutoMonsterTide(context, tide_index, base_info.group_id, defs.tide_cfg[v].monsters, #defs.tide_cfg[v].monsters, defs.tide_cfg[v].min, defs.tide_cfg[v].max)      
    end

    --波次++
    ScriptLib.ChangeGroupTempValue(context, "wave", 1, {})

    --辛焱reminder 如果本次中有 tide_cfg 3、4、5、6 则ShowHintReminder
    if 2 == defs.type and 1 ~= defs.is_tutorial then
        for k,v in pairs(defs.rand_table[rand_index][wave]) do 
            if 3 == v or 4 == v or 5 == v or 6 == v then
                LF_ShowHintReminder(context)
                return 0
            end
        end
    end 
    return 0
end

function action_Monster_Tide_Die(context, evt)

    local tide_index = tonumber(evt.source_name)
    local wave = ScriptLib.GetGroupTempValue(context, "wave", {})
    local tide_cfg_index = tide_index%10
    ScriptLib.PrintContextLog(context, "## [DLDungeon]: Tide monster die. tide_index@".. tide_index.." die_count@".. evt.param1)
    --是否杀光了一tide 如果tide_index异常，没有修正的办法了直接终止挑战
    if nil == defs.tide_cfg[tide_cfg_index] then
        ScriptLib.CauseDungeonFail(context)
        ScriptLib.StopChallenge(context, defs.challenge_id, 0)
        return 0
    end
    if evt.param1 < #defs.tide_cfg[tide_cfg_index].monsters then 
        return 0
    end

    ScriptLib.ChangeGroupTempValue(context, "tide_num", -1, {})

    --检查本轮怪物潮都已经结束
    local tide_num = ScriptLib.GetGroupTempValue(context, "tide_num", {})
    ScriptLib.PrintContextLog(context, "## [DLDungeon]: Tide index ".. tide_index.." all monster die. remain_tide_num@".. tide_num)
    if 0 >= tide_num then   
        local rand_index = ScriptLib.GetGroupVariableValue(context, "rand_index")
        if wave > #defs.rand_table[rand_index] then
            --全部完成
        else
            --刷下一轮
            ScriptLib.PrintContextLog(context, "## [DLDungeon] Monster_TimeAxis_Pass. Next wave@"..wave)
            LF_StartMonsterTide(context, wave)
        end

    end

    return 0
end

function action_Challenge_Success(context, evt)
    if defs.challenge_id ~= evt.param1 then 
        return 0
    end   
    ------清理-------
    --莫娜石板清除
    if 4 == defs.type then
        --灭掉星星和石板
        LF_CloseMonaStar(context)
    end
    --万叶、菲谢尔清理场上Buff
    if 1 == defs.type or 3 == defs.type then
        --停止所有时间轴
        ScriptLib.EndTimeAxis(context, "routine_buff")      
        LF_ClearBuffGadget(context)
    end
    if nil ~= defs.is_tutorial then 
        return 0
    end
    ------陈列室-------
    --陈列室
    LF_ReportSkillExhibition(context)
    LF_Report_XinyanWatcherCounter(context)
    LF_Exhibition_Succ(context)
    ------结算-----
    ScriptLib.CauseDungeonSuccess(context)

    return 0
end

function action_Challenge_Fail(context, evt)
     if defs.challenge_id ~= evt.param1 then 
        return 0
    end
    ------清理-------
    LF_ClearAllMonsterTide(context)

    --莫娜石板cd清除
    if 4 == defs.type then
        --灭掉星星和石板
        LF_CloseMonaStar(context)
    end

    --万叶、菲谢尔清理场上Buff
    if 1 == defs.type or 3 == defs.type then
        --停止所有时间轴
        ScriptLib.EndTimeAxis(context, "routine_buff")       
        LF_ClearBuffGadget(context)
    end

    ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = init_config.suite })

    --莫娜、辛焱地城add随机suite
    if 2 == defs.type or 4 == defs.type then 
        LF_AddRandomSuite(context)
    end
    -- 设置操作台选项
    ScriptLib.SetWorktopOptionsByGroupId(context, base_info.group_id, defs.starter, { defs.option_id })

    --教学关不DungeonFail
    if nil ~= defs.is_tutorial then 
        return 0
    end

    --超时 弹结算框
    if 0 >= evt.param2 then
        ScriptLib.CauseDungeonFail(context)
    end

    return 0
end 

function LF_AddRandomSuite(context)

    math.randomseed(ScriptLib.GetServerTime(context))

    local rand_index = math.random(#defs.rand_suites)
    ScriptLib.SetGroupVariableValue(context, "rand_suite", rand_index)
    ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.rand_suites[rand_index])
    ScriptLib.PrintContextLog(context, "## [DLDungeon]: LF_AddRandomSuite. suite_index@".. rand_index)
    return 0
end

--清场上buff
function LF_ClearBuffGadget(context)
    for k, v in pairs(defs.buff_pool) do
        ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, v)
    end
    for k, v in pairs(defs.buff_pool_spec) do
        ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, v)
    end
    return 0
end

--创建随机buff，调用之前需要清场 保证所有point都是可用的
function LF_CreateRandomBuff(context, count)

    local spawn_queue = {table.unpack(defs.buff_pool)}

    --需求：先刷0~2个限定buff(无、A、B、A+B)，其余部分刷普通buff。不需要再对buff种类做随机了
    if nil ~= defs.buff_pool_spec and 2 <= #defs.buff_pool_spec then 
        math.randomseed(ScriptLib.GetServerTime(context))
        local spec_num = math.random(0, 3)
        --数量确定，只枚举情况不洗牌了
        if 3 == spec_num then
            table.insert(spawn_queue, 1, defs.buff_pool_spec[1])
            table.insert(spawn_queue, 2, defs.buff_pool_spec[2])
        elseif 1 == spec_num or 2 == spec_num then 
            table.insert(spawn_queue, 1, defs.buff_pool_spec[spec_num])
        end
    end
    --检测count上限
    count = math.min(count, #spawn_queue)
    --依次创建spawn_queue中的buff物件，直到达到count
    local point_list = LF_Get_RandomPointList(context)
    for i = 1, count do
        --获取生成点位
        local point_configID = point_list[i] 
        ScriptLib.PrintContextLog(context, "## [DLDungeon] To Create gadget. gadget@"..spawn_queue[i].." at Point@"..point_configID)
        ScriptLib.CreateGadgetByConfigIdByPos(context, spawn_queue[i], gadgets[point_configID].pos, gadgets[point_configID].rot)
    end
    --有生成buff则提示
    if count > 0 then
        LF_ShowHintReminder(context)
    end
    return 0
end

--将point_list乱序返回
function LF_Get_RandomPointList(context)

    math.randomseed(ScriptLib.GetServerTime(context))

    local shuffled = {table.unpack(defs.point_list)}
    for i = #shuffled, 1, -1 do
        local j = math.random(i)
        local tmp = shuffled[i]
        shuffled[i] = shuffled[j]
        shuffled[j] = tmp
    end
    return shuffled
end
--辛焱 风场创建
function action_WindField_GadgetCreate(context, evt)
    if 2 ~= defs.type then
        return 0
    end
    ScriptLib.PrintContextLog(context, "## [DLDungeon] WindField_GadgetCreate. evt.param1@"..evt.param1)
    if 70220118 ~= gadgets[evt.param1].gadget_id then 
        return 0
    end  
    ScriptLib.ChangeGroupTempValue(context, "xinyan_wind", 1, {})
    LF_SetGV_AllTeam(context, "GV_XINYAN_BUFF", 1)
    return 0
end
--辛焱 风场创建
function action_WindField_GadgetDie(context, evt)
    if 70220118 ~= gadgets[evt.param1].gadget_id then 
        return 0
    end  
    ScriptLib.ChangeGroupTempValue(context, "xinyan_wind", -1, {})
    if 0 >= ScriptLib.GetGroupTempValue(context, "xinyan_wind", {}) then 
        LF_SetGV_AllTeam(context, "GV_XINYAN_BUFF", 0)
    end
    return 0
end
--莫娜 随机亮起一个当前suite的星星与石板
function LF_ActiveMonaStar(context)
    --先关闭
    LF_CloseMonaStar(context)

    ScriptLib.SetGroupTempValue(context, "mona_btn", 1,{})
    local suite_index = ScriptLib.GetGroupVariableValue(context, "rand_suite")
    --越界修正
    if nil == defs.rand_suites[suite_index] then
        suite_index = 1
        ScriptLib.SetGroupVariableValue(context, "rand_suite", suite_index)
    end
    local star_list = defs.stars[defs.rand_suites[suite_index]]
    --越界修正
    if nil == star_list then
        star_list = defs.stars[1]
    end
    math.randomseed(ScriptLib.GetServerTime(context))
    local star_idx = math.random(#star_list)

    ScriptLib.SetGadgetStateByConfigId(context, star_list[star_idx][1], 201)
    ScriptLib.SetGadgetStateByConfigId(context, star_list[star_idx][2], 201)
    --非目标石板切202假亮
    for k,v in pairs(gadgets) do
        if v.gadget_id == 70310323 and k ~= star_list[star_idx][2] then
            ScriptLib.SetGadgetStateByConfigId(context, k, 202)
        end 
    end
    LF_ShowHintReminder(context)
    return 0
end
--莫娜 关闭星星与石板
function LF_CloseMonaStar(context)

    local suite_index = ScriptLib.GetGroupVariableValue(context, "rand_suite")
    local star_list = defs.stars[defs.rand_suites[suite_index]]
    for k, v in pairs(star_list) do
        ScriptLib.SetGadgetStateByConfigId(context, v[1], 0)
        ScriptLib.SetGadgetStateByConfigId(context, v[2], 0)
    end

    return 0
end
--莫娜 石板被踩
function SLC_DLActivityDungeon_StarBtn(context)
    if 1 ~= ScriptLib.GetGroupTempValue(context, "mona_btn", {}) then 
        return 0
    end
    --施加buff
    LF_ActiveMonaBuff(context)
    ScriptLib.SetGroupTempValue(context, "mona_btn", 0,{})
    --记陈列室
    LF_DLActivityDungeon_Exhi_MonaBuff(context)

    --灭掉星星和石板
    LF_CloseMonaStar(context)
    return 0
end
--莫娜 施加当前怪物潮对应的buff，并行怪物潮取第一个
function LF_ActiveMonaBuff(context)

    local monster_tide_idx = ScriptLib.GetGroupTempValue(context, "mona_buff_idx", {})
    local buff_list = defs.tide_cfg[monster_tide_idx].mona_buffs
    if nil == buff_list then 
        return 0
    end
    math.randomseed(ScriptLib.GetServerTime(context))

    local buff_idx = math.random(#buff_list)
    ScriptLib.PrintContextLog(context, "## [DLDungeon] LF_ActiveMonaBuff. buff@"..buff_list[buff_idx])
    --开启弹飞buff
    if 1 == buff_list[buff_idx] then 
        LF_SetGV_AllTeam(context, "GV_MONA_BUFF1", 1)
    --下雨、增伤buff
    elseif 2 == buff_list[buff_idx] then 
        LF_SetGV_AllTeam(context, "GV_MONA_BUFF2", 1)
        LF_HandleMonaWater(context, 1)
    --全场控怪
    elseif 3 == buff_list[buff_idx] then
        LF_SetGV_AllMonster(context, "GV_MONA_BUFF3", 1)
        LF_SetGV_AllTeam(context, "GV_MONA_BUFF3", 1)
    end
    --埋点
    ScriptLib.MarkGroupLuaAction(context, "SummerTimeV2_Dungeon4_1", "", {["bufftype"] = buff_list[buff_idx]}) 
    return 0
end

--莫娜buff2结束
function action_MonaBuff2_TimeAxis_Pass(context, evt)
    LF_HandleMonaWater(context, 2)
    return 0
end

function LF_ShowHintReminder(context)
    ScriptLib.ShowReminder(context, cfg.reminder[defs.type])
    ScriptLib.PrintContextLog(context, "[DLDungeon] LF_ShowHintReminder. rmd@"..cfg.reminder[defs.type])
    return 0
end

--请求获取联机玩家数量
function SLC_Get_PlayerCount(context)
    local uidList = ScriptLib.GetSceneUidList(context)
    local num = #uidList
    ScriptLib.PrintContextLog(context, "[DLDungeon] SLC_Get_PlayerCount. result@"..num)
    LF_SetSGV_AllTeam(context,"SGV_DLDungeon_PlayerNum", num)
    return 0
end

--万叶地城吃球
--param1: 1-球A大跳 2-球B减T键CD 3-球C增伤至最多三层
function SLC_DLActivityDungeon_Kazuha(context, param1)
    ScriptLib.PrintContextLog(context, "## [DLDungeon] SLC_DLActivityDungeon_Kazuha. param1@"..param1.." uid@"..context.uid)
    if 1 == param1 then   
        LF_SetGV_AllTeam(context, "GV_KAZUHA_BUFF1", 1)
    elseif 2 == param1 then
        LF_SetGV_AllTeam(context,"GV_KAZUHA_BUFF2", 1)
    elseif 3 == param1 then
        LF_SetGV_AllTeam(context, "GV_KAZUHA_BUFF3", 1)
    end
    if nil ~= defs.is_tutorial or 1 ~= defs.type then
        return 0
    end
    ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_SummerTimeV2_Kazuha_TotalBuff", 1)
    --埋点
    ScriptLib.MarkGroupLuaAction(context, "SummerTimeV2_Dungeon1_2", "", {["bufftype"] = param1}) 
    return 0
end
--万叶地城减CD触发
--param1: 0-元素战技 1-元素爆发 2-下落攻击
function SLC_DLActivityDungeon_TCoolDown(context, param1)
    ScriptLib.PrintContextLog(context, "## [DLDungeon] SLC_DLActivityDungeon_TCoolDown. param1@"..param1)
    if 1 == param1 then   
        LF_TriggerSGVChangeAllTeam(context, "GV_SKILL_CD")
    elseif 2 == param1 then
        LF_TriggerSGVChangeAllTeam(context, "GV_ULTIMATESKILL_CD")
    elseif 3 == param1 then
        LF_TriggerSGVChangeAllTeam(context, "GV_FALLINGATK_CD")
    end
    LF_Exhibition_CoolDown(context, context.uid)
    return 0
end

--菲谢尔地城
--param1: 1-雷震荡波 2-奥兹 3-刷大招
function SLC_DLActivityDungeon_Fischl(context, param1)
    ScriptLib.PrintContextLog(context, "## [DLDungeon] SLC_DLActivityDungeon_Fischl. param1@"..param1.." uid@"..context.uid)
    if 1 == param1 then   
        LF_SetGV_OnePlayer(context, "GV_CREATE_ELECTRICZONE", 1)
        LF_Exhibition_FischlBuff(context)
    elseif 2 == param1 then
        LF_Exhibition_FischlBuff(context)
    elseif 3 == param1 then
        LF_SetGV_OnePlayer(context, "GV_FISCHL_BUFF3", 1)
        LF_Exhibition_FischlBuff(context)
    end
    --埋点
    ScriptLib.MarkGroupLuaAction(context, "SummerTimeV2_Dungeon3_1", "", {["bufftype"] = param1}) 
    return 0
end
--招奥兹需要冲物件SLC，所以陈列室另起一个SLC
function SLC_DLActivityDungeon_FischlOzSummon(context)
    local position = { x = 0, y = 0, z = 0}
    local pos_raw = ScriptLib.GetPosByEntityId(context, context.source_entity_id)
    position.x = pos_raw.x - pos_raw.x % 0.01
    position.y = pos_raw.y - pos_raw.y % 0.01
    position.z = pos_raw.z - pos_raw.z % 0.01  
    if nil ~= defs.crow_id then 
        for k , v in pairs(defs.crow_id) do
            local ret = ScriptLib.CreateGadgetByConfigIdByPos(context, v, position, gadgets[v].rot)
            if 0 == ret then
                break
            end
        end          
    end
    return 0
end
function LF_HandleMonaWater(context, dir)
    ScriptLib.SetPlatformPointArray(context, defs.move_water.config_id, defs.move_water.point_array, {defs.move_water.point[dir]}, {route_type = 0, turn_mode = false, record_mode = 0})
    if 1 == dir then
        ScriptLib.InitTimeAxis(context, "mona_buff2", {10}, false)
    end
    return 0
end

function LF_TriggerSGVChangeAllTeam(context, key)  
    local value = ScriptLib.GetGroupTempValue(context, "sgv_changer", {})

    local uid_list = ScriptLib.GetSceneUidList(context)    
    ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, key, value)
    ScriptLib.PrintContextLog(context, "## [DLDungeon] LF_TriggerSGVChangeAllTeam. key@"..key.." value@"..value)
    if value > 1000 then
        ScriptLib.SetGroupTempValue(context, "sgv_changer", 0, {})
    else
        ScriptLib.ChangeGroupTempValue(context, "sgv_changer", 1, {})
    end  
    return 0
end
function LF_SetGV_AllMonster(context, key, value)
    local mon_list = ScriptLib.GetGroupAliveMonsterList(context, base_info.group_id) 
    ScriptLib.AddEntityGlobalFloatValueByConfigId(context, mon_list, key, value)  
    ScriptLib.PrintContextLog(context, "## [DLDungeon] LF_SetGV_AllMonster. key@"..key.." value@"..value)
    return 0
end
function LF_SetGV_AllTeam(context, key, value)
    local uid_list = ScriptLib.GetSceneUidList(context)    
    ScriptLib.SetTeamEntityGlobalFloatValue(context, uid_list, key, value)
    ScriptLib.PrintContextLog(context, "## [DLDungeon] LF_SetGV_AllTeam. key@"..key.." value@"..value)
    return 0
end

function LF_SetGV_OnePlayer(context, key, value)
    ScriptLib.SetTeamEntityGlobalFloatValue(context, {context.uid}, key, value)
    ScriptLib.PrintContextLog(context, "## [DLDungeon] LF_SetGV_OnePlayer. key@"..key.." value@"..value.." uid@"..context.uid)
    return 0
end
function LF_SetSGV_AllTeam(context, key, value)
    local uid_list = ScriptLib.GetSceneUidList(context)  
    for k,v in pairs(uid_list) do 
        ScriptLib.SetTeamServerGlobalValue(context, v, key, value)
    end  
    ScriptLib.PrintContextLog(context, "## [DLDungeon] LF_SetSGV_AllTeam. key@"..key.." value@"..value)
    return 0
end

--群体都加的陈列室统一处理，减少遍历次数
function LF_ReportSkillExhibition(context)
     local uid_list = ScriptLib.GetSceneUidList(context)
    for k, v in pairs(cfg.exhiKey_all) do
        local record = ScriptLib.GetGroupTempValue(context, v, {})
        if 0 < record then 
            for ik,iv in pairs(uid_list) do
                ScriptLib.AddExhibitionAccumulableData(context, iv, v, record)
            end
        end
    end
    return 0
end
--陈列室 通用 全体 通关次数
function LF_Exhibition_Succ(context)
    if nil ~= defs.is_tutorial then 
        return 0
    end
    local uid_list = ScriptLib.GetSceneUidList(context)
    for k,v in pairs(uid_list) do
        ScriptLib.AddExhibitionAccumulableData(context, v, cfg.exhiKey_succ[defs.type][1], 1)
        ScriptLib.AddExhibitionReplaceableData(context, v, cfg.exhiKey_succ[defs.type][2], 1)
    end
    return 0
end
--重置陈列室缓存值
function LF_InitExhibitionTemp(context)
    if nil ~= defs.is_tutorial then 
        return 0
    end
    for k, v in pairs(cfg.exhiKey_all) do 
        ScriptLib.SetGroupTempValue(context, v, 0, {})
    end
    return 0
end
--陈列室 万叶 单人 单局减CD触发次数
function LF_Exhibition_CoolDown(context, uid)
    if nil ~= defs.is_tutorial or 1 ~= defs.type then 
        return 0
    end

    ScriptLib.AddExhibitionReplaceableData(context, uid, "Activity_SummerTimeV2_Kazuha_CoolDown", 1)
    return 0
end
--缓存陈列室 万叶 T键次数
function SLC_DLActivityDungeon_Exhi_TSkill(context)
    if nil ~= defs.is_tutorial or 1 ~= defs.type then 
        return 0
    end
    --全体
    ScriptLib.ChangeGroupTempValue(context, "Activity_SummerTimeV2_Kazuha_TSkill", 1, {})
    --单人
    ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_SummerTimeV2_Kazuha_TSkillOnce", 1)
    --埋点
    ScriptLib.MarkGroupLuaAction(context, "SummerTimeV2_Dungeon1_1", "", {}) 
    return 0
end
--缓存陈列室 莫娜 撞怪击中次数
function SLC_DLActivityDungeon_Exhi_MonaPush(context)
    if nil ~= defs.is_tutorial or 4 ~= defs.type then 
        return 0
    end
    --全体
    ScriptLib.ChangeGroupTempValue(context, "Activity_SummerTimeV2_Mona_Push", 1, {})
    --单人
    ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_SummerTimeV2_Mona_PushOnce", 1)
    return 0
end

--缓存陈列室 菲谢尔 全体 冲击波击中次数
function SLC_DLActivityDungeon_Exhi_FischlElecShock(context)
    if nil ~= defs.is_tutorial or 3 ~= defs.type then 
        return 0
    end
    --全体
    ScriptLib.ChangeGroupTempValue(context, "Activity_SummerTimeV2_Fischl_ElecShock", 1, {})
    --单人
    ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_SummerTimeV2_Fischl_ElecShockOnce", 1)
    return 0
end
--缓存陈列室 菲谢尔 获得奥兹buff次数
function LF_Exhibition_FischlBuff(context)
    if nil ~= defs.is_tutorial or 3 ~= defs.type then 
        return 0
    end
    --全体
    ScriptLib.ChangeGroupTempValue(context, "Activity_SummerTimeV2_Fischl_Buff", 1, {})
    --单人
    ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_SummerTimeV2_Fischl_BuffOnce", 1)

    return 0
end

--缓存陈列室 莫娜 全体 获得星星buff次数
function LF_DLActivityDungeon_Exhi_MonaBuff(context)
    if nil ~= defs.is_tutorial or 4 ~= defs.type then 
        return 0
    end
    --全体
    ScriptLib.ChangeGroupTempValue(context, "Activity_SummerTimeV2_Mona_Buff", 1, {})
    --单人
    ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_SummerTimeV2_Mona_BuffOnce", 1)
    return 0
end
--缓存陈列室 辛焱 全体 交互传音花次数
--param1: 1-风场 2-声波
function SLC_DLActivityDungeon_Exhi_GadgetUsage(context, param1)
    if nil ~= defs.is_tutorial or 2 ~= defs.type then 
        return 0
    end
     --单人
    ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_SummerTimeV2_Xinyan_GadgetUsage", 1)
    --埋点
    if 1 == param1 then
        ScriptLib.MarkGroupLuaAction(context, "SummerTimeV2_Dungeon2_1", "", {}) 
    elseif 2 == param1 then
        ScriptLib.MarkGroupLuaAction(context, "SummerTimeV2_Dungeon2_2", "", {}) 
    end
    return 0
end
--缓存陈列室 辛焱 全体 花冲击波击中盾怪次数
function SLC_DLActivityDungeon_Exhi_XinyanEnbreak(context)
    if nil ~= defs.is_tutorial or 2 ~= defs.type then 
        return 0
    end 
    --全体
    ScriptLib.ChangeGroupTempValue(context, "Activity_SummerTimeV2_Xinyan_Enbreak", 1, {})
    --单人
   -- ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_SummerTimeV2_Xinyan_EnbreakOnce", 1)
    return 0
end
--缓存陈列室 辛焱 全体 下落攻击击中次数
function SLC_DLActivityDungeon_Exhi_XinyanFallAttack(context)
    if nil ~= defs.is_tutorial or 2 ~= defs.type then 
        return 0
    end
    --单人跨局累计wathcer
    ScriptLib.ChangeGroupTempValue(context, tostring(context.uid), 1, {})

    --单人单局   
    ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_SummerTimeV2_Xinyan_FallAttackOnce", 1)
    return 0
end
--用于辛焱单人watcher 因为挑战完成才计数，所以缓存一下
function  LF_Init_XinyanWatcherCounter(context)
    --对每个玩家，以uid为key，创建tempValue
    local uid_list = ScriptLib.GetSceneUidList(context)
    for k,v in pairs(uid_list) do
        ScriptLib.SetGroupTempValue(context, tostring(v), 0, {})
    end
    return 0
end

function LF_Report_XinyanWatcherCounter(context)
    local uid_list = ScriptLib.GetSceneUidList(context)
    for k,v in pairs(uid_list) do
        local result = ScriptLib.GetGroupTempValue(context, tostring(v), {})
        if 0 <  result then
            ScriptLib.AddExhibitionAccumulableData(context, v, "Activity_SummerTimeV2_Xinyan_FallAttack", result)
        end
    end
    return 0
end
LF_Initialize(triggers, suites)