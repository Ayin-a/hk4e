--[[======================================
||	filename:	V2_8ArenaChallenge_Quest
||	owner: 		luyao.huang
||	description:	2.8幻影心流复刻活动-活动任务
||	LogName:	V2_8ArenaChallenge_Quest
||	Protection:	
=======================================]]--


------

local local_defs = 
{
    father_challenge_index = 101,
    time_challenge_index = 11,
    kill_monster_challenge_index = 12,
    state_change_challenge_index = 13,
    reminder_id = 400157,
    stage_1_weather_id = 1011,
    stage_2_weather_id = 1010,

    success_quest_param = "133001096",
    fail_quest_param = "1330010960",


}

local time_axis = {
    ELITE_INTERVAL_AXIS = {defs.elite_interval},
    
    CHANGE_STAGE_INTERVAL_AXIS = {defs.change_stage_interval}
}

--计数型挑战
local counting_challenge = 
{
    [1] = {challenge_id = defs.kill_monster_challenge_id, tag = tostring(defs.kill_monster_challenge_id), var_name = "challenge_kill_monster"},
}

local Tri = {
    [1] = { name = "group_load", config_id = 10000001, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0},
    [3] = { name = "time_axis_pass", config_id = 10000003, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
    [4] = { name = "monstert_die_before_leave_scene", config_id = 10000004, event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die_before_leave_scene", trigger_count = 0},
    [5] = { name = "challenge_fail", config_id = 10000005, event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0},
    [6] = { name = "pool_monster_tide_over", config_id = 10000006, event = EventType.EVENT_POOL_MONSTER_TIDE_OVER, source = "", condition = "", action = "action_pool_monster_tide_over", trigger_count = 0},
    
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

    for k,v in pairs(counting_challenge) do
        if v.challenge_id ~= nil then
            local t = {name = "variable_change_"..v.challenge_id, config_id = 1000000+k, event = EventType.EVENT_VARIABLE_CHANGE,source = v.var_name, condition = "", action = "", trigger_count = 0, tag = v.tag}
            
		    table.insert(triggers, t)
		    table.insert(suites[1].triggers, t.name)

            table.insert(variables,{config_id = 20000000+k, name = v.var_name, value = 0})
        end
    end
    --阶段数
    table.insert(variables,{config_id = 20000100, name = "current_stage", value = 0})
    --小怪潮的index
    table.insert(variables,{config_id = 20000101, name = "current_monster_tide", value = 0})
    --精英怪的index
    table.insert(variables,{config_id = 20000102, name = "current_elite", value = 1})
    --小怪潮的计数，当计数为0时，才能继续怪物潮
    table.insert(variables,{config_id = 20000103, name = "tide_op_num", value = 0})

    --是否是第一组精英怪
    table.insert(variables,{config_id = 20000104, name = "is_first_elite", value = 1})
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                      触发器回调                                  ||
||                                                                 ||
-----------------------------------------------------------------]]--

function action_group_load(context,evt)
    LF_Init_Play(context)
    LF_Start_Play(context)
    return 0
end



function action_time_axis_pass(context,evt)
    --精英怪刷新时间轴
    if (evt.source_name == "ELITE_INTERVAL_AXIS") then
        ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]action_time_axis_pass: 精英怪时间轴tick，刷出精英怪")

        ScriptLib.PauseTimeAxis(context,"ELITE_INTERVAL_AXIS")

        LF_Create_Elite(context)

        LF_Goto_Next_Elite_Index(context)


        LF_Try_Pause_Monster_Tide(context)
    end
    --简单模式转阶段时间轴
    if (evt.source_name == "CHANGE_STAGE_INTERVAL_AXIS") then
        ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]action_time_axis_pass: 简单模式转阶段tick，转阶段")

        ScriptLib.EndTimeAxis(context,"CHANGE_STAGE_INTERVAL_AXIS")

        LF_Change_To_Second_Stage(context)
    end

    return 0
end


function action_monster_die_before_leave_scene(context,evt)

    if LF_Is_Elite(evt.param1) then
        LF_Trigger_Challenge_Count(context,1)
        if LF_Is_Current_Elite_All_Dead(context) then
            ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]action_monster_die_before_leave_scene: 精英怪死亡，恢复小怪潮")


            LF_Trigger_Challenge_Count(context,1)

           --这里如果是第一组精英怪死亡，则是init一个时间轴而不是continue
           if ScriptLib.GetGroupVariableValue(context,"is_first_elite") == 1 then
                ScriptLib.InitTimeAxis(context,"ELITE_INTERVAL_AXIS",time_axis.ELITE_INTERVAL_AXIS,true)
                ScriptLib.SetGroupVariableValue(context,"is_first_elite",0)
            else
                ScriptLib.ContinueTimeAxis(context, "ELITE_INTERVAL_AXIS")
            end
            LF_Try_Continue_Monster_Tide(context)

            --如果当前的精英计数已经超过了精英总数（精英怪刷完了），玩法以成功结算
            if LF_Get_Current_Elite_Index(context) > #elite_list then
                ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]action_monster_die_before_leave_scene: 精英怪刷完了，玩法结束")
                ScriptLib.StopChallenge(context,local_defs.time_challenge_index,1)
                ScriptLib.StopChallenge(context,local_defs.kill_monster_challenge_index,1)
                ScriptLib.StopChallenge(context,local_defs.father_challenge_index,1)
                ScriptLib.AddQuestProgress(context,local_defs.success_quest_param)
                LF_Init_Play(context)
                return 0
            end
        end
    end
    return 0
end

function action_challenge_fail(context,evt)
    if evt.param1 == defs.father_challenge_id then
        ScriptLib.AddQuestProgress(context,local_defs.fail_quest_param)
        LF_Init_Play(context)
    end
    return 0
end

--如果一阶段怪刷完了，直接失败
function action_pool_monster_tide_over(context,evt)
    if LF_Get_Current_Stage(context) == 0 and LF_Get_Current_Tide(context) == 1 then
        ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]action_pool_monster_tide_over: 小怪潮刷完了，但没有转阶段，直接转到二阶段")
        LF_Change_To_Second_Stage(context)
    end
    if LF_Get_Current_Stage(context) == 1  and LF_Get_Current_Tide(context) == 2 then
        ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]action_pool_monster_tide_over: 二阶段小怪潮刷完了，挑战失败，几乎不可能出现这种情况")
        
        ScriptLib.StopChallenge(context,local_defs.father_challenge_index,0)
    end
    return 0
end
--[[-----------------------------------------------------------------
||                                                                 ||
||                     玩法流程控制                                 ||
||                                                                 ||
-----------------------------------------------------------------]]--

--玩法初始化
function LF_Init_Play(context)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Init_Play: 玩法初始化")
    LF_Clear_All(context)
    --ScriptLib.RefreshGroup(context, { group_id = base_info.group_id, suite = 1 })
    LF_Init_Variables(context)
end



--玩法启动
function LF_Start_Play(context)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Start_Play: 玩法启动")

    ScriptLib.CreateGadget(context,{config_id = defs.airwall})

    ScriptLib.CreateFatherChallenge(context, local_defs.father_challenge_index, defs.father_challenge_id, defs.challenge_time, {success = 5, fail = 10,fail_on_wipe = true})
    local uid = ScriptLib.GetSceneOwnerUid(context)
	--先开，再attach，给子挑战保序
	ScriptLib.StartFatherChallenge(context,local_defs.father_challenge_index)
	ScriptLib.AttachChildChallenge(context,local_defs.father_challenge_index, local_defs.time_challenge_index, defs.time_challenge_id,{3,666,999999},{uid},{success = 0,fail = 0}) --挑战计时	
    ScriptLib.AttachChildChallenge(context,local_defs.father_challenge_index, local_defs.kill_monster_challenge_index, defs.kill_monster_challenge_id,{3,defs.kill_monster_challenge_id,LF_Get_Elite_Num(context)},{uid},{success = 0,fail = 0}) --触发精英怪死亡计数	
    
    LF_Try_Start_Monster_Tide(context,monster_tide_config[1])

    ScriptLib.InitTimeAxis(context,"CHANGE_STAGE_INTERVAL_AXIS",time_axis.CHANGE_STAGE_INTERVAL_AXIS,false)

    --一阶段屏蔽天气，固定为晴天
    LF_Set_Weather(context,local_defs.stage_1_weather_id,true)

end



--转到二阶段
function LF_Change_To_Second_Stage(context)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Change_To_Second_Stage: 转到二阶段")
    LF_Goto_Next_Stage(context)
    LF_Stage_Environment_Change(context)
    LF_Try_Start_Monster_Tide(context,monster_tide_config[2])
    LF_Start_Elite_Tide(context)
    --ScriptLib.ShowReminder(context,local_defs.reminder_id)
    --开启二阶段天气
    LF_Set_Weather(context,local_defs.stage_1_weather_id,false)
    LF_Set_Weather(context,local_defs.stage_2_weather_id,true)
end


function LF_Stage_Environment_Change(context)
    ScriptLib.SetGadgetStateByConfigId(context,defs.airwall,201)
end




--清理玩法
function LF_Clear_All(context)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Clear_All: 开始清理玩法")

    --清理怪物潮
    LF_Clear_Current_Monster_Tide(context)
    --清理空气墙
	ScriptLib.RemoveEntityByConfigId(context, base_info.group_id, EntityType.GADGET, defs.airwall)
    --暂停精英怪
    ScriptLib.EndTimeAxis(context,"ELITE_INTERVAL_AXIS")
    ScriptLib.EndTimeAxis(context,"CHANGE_STAGE_INTERVAL_AXIS")

    --恢复天气
    LF_Set_Weather(context,local_defs.stage_1_weather_id,false)
    LF_Set_Weather(context,local_defs.stage_2_weather_id,false)
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                    杂项功能                                      ||
||                                                                 ||
-----------------------------------------------------------------]]--

--所有变量的初始化
function LF_Init_Variables(context)
    ScriptLib.SetGroupVariableValue(context,"current_stage",0)
    ScriptLib.SetGroupVariableValue(context,"current_monster_tide",0)
    ScriptLib.SetGroupVariableValue(context,"current_elite",1)
    ScriptLib.SetGroupVariableValue(context,"tide_op_num",0)
end

--触发计数型挑战的触发器
function LF_Trigger_Challenge_Count(context,counting_challenge_id)
    ScriptLib.ChangeGroupVariableValue(context,counting_challenge[counting_challenge_id].var_name,1)
end

function LF_Set_Weather(context,weather_id,is_on)
    if is_on then
        ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Set_Weather: 打开天气"..weather_id)
	    ScriptLib.SetWeatherAreaState(context, weather_id, 1)
    else
        ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Set_Weather: 打开天气"..weather_id)
        ScriptLib.SetWeatherAreaState(context, weather_id, 0)
    end
end
--[[-----------------------------------------------------------------
||                                                                 ||
||                    精英怪操作                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

function LF_Start_Elite_Tide(context)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Start_Elite_Tide: 启动精英怪怪物潮")

    --转到二阶段时，直接生成一波精英怪
    LF_Create_Elite(context)
    LF_Goto_Next_Elite_Index(context)
    LF_Try_Pause_Monster_Tide(context)

end

function LF_Create_Elite(context)
    local elite_index = LF_Get_Current_Elite_Index(context)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Create_Elite: 生成精英怪"..elite_index)
    if elite_list[elite_index] ~= nil then
        for i = 1, #elite_list[elite_index] do
            ScriptLib.CreateMonster(context, { config_id = elite_list[elite_index][i], delay_time = 0 })
        end
    end
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                    怪物潮操作                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

--尝试暂停当前的怪物潮
function LF_Try_Pause_Monster_Tide(context)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Try_Pause_Monster_Tide: 尝试暂停怪物潮")
    LF_Change_Tide_Op_Num(context,1)
    ScriptLib.PauseAutoPoolMonsterTide(context, base_info.group_id, LF_Get_Current_Tide(context))
end

--尝试继续当前的怪物潮
function LF_Try_Continue_Monster_Tide(context)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Try_Continue_Monster_Tide: 尝试继续怪物潮")
    LF_Change_Tide_Op_Num(context,-1)
    local op_num = LF_Get_Tide_Op_Num(context)
    if op_num <= 0 then
        ScriptLib.ResumeAutoPoolMonsterTide(context, base_info.group_id, LF_Get_Current_Tide(context))
    end
end

--尝试清理当前的怪物潮
function LF_Try_Kill_Monster_Tide(context)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Try_Kill_Monster_Tide: 尝试清理当前怪物潮")
    ScriptLib.ClearPoolMonsterTide(context, base_info.group_id, LF_Get_Current_Tide(context))
    LF_Set_Tide_Op_Num(context,0)
end

--尝试开启/重启一个怪物潮
function LF_Try_Start_Monster_Tide(context,monster_tide_config)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Try_Start_Monstert_Tide: 尝试开启一波新的怪物潮")
    --如果当前怪物潮index已超过1，说明怪物潮开启中，需要先清理当前的怪物潮
    if LF_Get_Current_Tide(context) > 0 then
        ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Try_Start_Monstert_Tide: 需要清理上一波怪物潮，当前波次为"..LF_Get_Current_Tide(context))
        LF_Try_Kill_Monster_Tide(context)
    end
    LF_Goto_Next_Tide(context)
    local ret = ScriptLib.AutoPoolMonsterTide(context, LF_Get_Current_Tide(context), base_info.group_id, {monster_tide_config.pool_id}, 0, {}, {}, {total_count=monster_tide_config.total_num, min_count=monster_tide_config.min, max_count=monster_tide_config.max, tag=1, fill_time=0, fill_count=0})
    
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Try_Start_Monstert_Tide: 怪物潮成功返回值为"..ret)
    LF_Set_Tide_Op_Num(context,0)
end



--清理当前的怪物潮
function LF_Clear_Current_Monster_Tide(context)
    ScriptLib.PrintContextLog(context,"## [V2_8ArenaChallenge]LF_Clear_Current_Monster_Tide: 清理当前怪物潮")

    --清干净场上残存的怪物
    local alive_monster_list = ScriptLib.GetGroupAliveMonsterList(context,base_info.group_id)
    for i = 1,#alive_monster_list do
        ScriptLib.RemoveEntityByConfigId(context,base_info.group_id,EntityType.MONSTER,alive_monster_list[i])
    end

    --清理小怪潮、清理精英怪潮
    LF_Try_Kill_Monster_Tide(context)
end

--[[-----------------------------------------------------------------
||                                                                 ||
||                    CRUD类方法                                    ||
||                                                                 ||
-----------------------------------------------------------------]]--

----------------------怪物相关查询-----------------------------------
--检查一个monster_id是否是精英怪
function LF_Is_Elite(monster_id)
    for i = 1, #elite_list do
        for j = 1, #elite_list[i] do
            if monster_id == elite_list[i][j] then
                return true
            end
        end
    end
    return false
end

--返回当前场上精英怪是否全死了
function LF_Is_Current_Elite_All_Dead(context)

    local alive_monster_list = ScriptLib.GetGroupAliveMonsterList(context,base_info.group_id)
    for i = 1, #alive_monster_list do
        if (LF_Is_Elite(alive_monster_list[i])) then
            return false
        end
    end
    return true
end

--获取精英怪的总数
function LF_Get_Elite_Num(context)
    local num = 0
    for i = 1, #elite_list do
        num = num + #elite_list[i]
    end
    return num
end


----------------------当前阶段数-----------------------------------
function LF_Get_Current_Stage(context)
    return ScriptLib.GetGroupVariableValue(context,"current_stage")
end

function LF_Set_Current_Stage(context,stage)
    ScriptLib.SetGroupVariableValue(context,"current_stage",stage)
end

function LF_Goto_Next_Stage(context)
    local stage = LF_Get_Current_Stage(context)
    LF_Set_Current_Stage(context,stage+1)
end

----------------------当前精英怪索引数------------------------------
function LF_Get_Current_Elite_Index(context)
    return ScriptLib.GetGroupVariableValue(context,"current_elite")
end

function LF_Set_Current_Elite_Index(context,elite)
    ScriptLib.SetGroupVariableValue(context,"current_elite",elite)
end

function LF_Goto_Next_Elite_Index(context)
    local elite = LF_Get_Current_Elite_Index(context)
    LF_Set_Current_Elite_Index(context,elite+1)
end

----------------------当前怪物潮索引数------------------------------
function LF_Get_Current_Tide(context)
    return ScriptLib.GetGroupVariableValue(context,"current_monster_tide")
end

function LF_Set_Current_Tide(context,tide)
    ScriptLib.SetGroupVariableValue(context,"current_monster_tide",tide)
end

function LF_Goto_Next_Tide(context)
    local tide = LF_Get_Current_Tide(context)
    LF_Set_Current_Tide(context,tide+1)
end


----------------------怪物潮引用计数相关------------------------------
function LF_Get_Tide_Op_Num(context)
    return ScriptLib.GetGroupVariableValue(context,"tide_op_num")
end

function LF_Change_Tide_Op_Num(context,delta)
    local tide_op_num = LF_Get_Tide_Op_Num(context)
    if tide_op_num + delta < 0 then
        ScriptLib.SetGroupVariableValue(context,"tide_op_num",0)
    else
        ScriptLib.SetGroupVariableValue(context,"tide_op_num",tide_op_num+delta)
    end
end

function LF_Set_Tide_Op_Num(context,op_num)
    ScriptLib.SetGroupVariableValue(context,"tide_op_num",op_num)
end



--[[-----------------------------------------------------------------
||                                                                 ||
||                    server lua call                              ||
||                                                                 ||
-----------------------------------------------------------------]]--


------------------------------------------------------------------
Initialize()