--[[======================================
||	filename:	ElectroherculesBattle
||	owner: 		luyao.huang
||	description:	3.4鬼兜虫斗虫活动
||	LogName:	ElectroherculesBattle
||	Protection:	
=======================================]]--

------
local local_defs = 
{
    gallery_id = 32001
}
local Tri = {
    --后续换成select_difficulty
    --[1] = { name = "select_difficulty", config_id = 8000001, event = EventType.EVENT_SELECT_DIFFICULTY, source = "", condition = "", action = "action_select_difficulty", trigger_count = 0},
    [1] = { name = "variable_change_GM", config_id = 8000001, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_variable_change_GM", trigger_count = 0},
    [2] = { name = "monster_die", config_id = 8000002, event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_monster_die", trigger_count = 0},
    [3] = { name = "group_will_unload", config_id = 8000003, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
    --测试时间轴:每1秒显示一次血量
    [4] = { name = "time_axis_pass", config_id = 8000004, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
}

function Initialize()
    for k,v in pairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
    table.insert(variables,{config_id = 110000001, name = "difficulty", value = 0})

    table.insert(variables,{config_id = 210000001, name = "GM_Select_Difficulty", value = 0})
end

------------------------------------------------------------------
--测试时间轴:每1秒打印一次血量
function action_time_axis_pass(context,evt)
    local difficulty = ScriptLib.GetGroupVariableValue(context,"difficulty")

    EnemyHP = ScriptLib.GetMonsterHpPercent(context, base_info.group_id, EnemyElectrohercules[difficulty])
    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_time_axis_pass: 敌方生命:"..EnemyHP.."%")

    return 0
end
--正式的开启流程
function action_select_difficulty(context,evt)
    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_select_difficulty： 玩家选择挑战难度，加载对应suite")
    --设置difficulty
    local difficulty = evt.param2
    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_select_difficulty： 玩家选择挑战难度，难度为："..difficulty)
    ScriptLib.SetGroupVariableValue(context,"difficulty",difficulty)
    --拉起Gallery
    local gallery_id = evt.param1
    local_defs.gallery_id = gallery_id
    LF_Start_Play(context,difficulty,gallery_id)
    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_select_difficulty： 拉起Gallery，ID="..gallery_id)
    ScriptLib.SetGroupVariableValue(context,"GM_Select_Difficulty",0)
    --测试:每1秒显示一次血量
    ScriptLib.InitTimeAxis(context,"Sand_Flow",{1},true)
    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_select_difficulty：开启测试时间轴")
    return 0
end
--白盒版本：修改GM后，开始加载
function action_variable_change_GM(context,evt)
    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_variable_change_GM： 玩家选择挑战难度，加载对应suite")
    if evt.source_name == "GM_Select_Difficulty" and evt.param1 ~= 0 then
        local difficulty = evt.param1
        --local difficulty = evt.param3
        ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_variable_change_GM： 玩家选择挑战难度，难度为："..difficulty)
        ScriptLib.SetGroupVariableValue(context,"difficulty",difficulty)

        local gallery_id = 32001
        local_defs.gallery_id = gallery_id
        LF_Start_Play(context,difficulty,gallery_id)
        ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_variable_change_GM： 拉起默认Gallery，ID="..gallery_id)
        ScriptLib.SetGroupVariableValue(context,"GM_Select_Difficulty",0)
        ScriptLib.InitTimeAxis(context,"Sand_Flow",{1},true)
        ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_variable_change_GM：开启测试时间轴")
    end
    return 0
end

function action_group_will_unload(context,evt)
    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_group_will_unload：group即将卸载，回滚所有玩法状态")
    LF_Stop_Play(context)
    return 0
end

function action_monster_die(context,evt)

    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_monster_die: 怪物死亡")
    local difficulty = ScriptLib.GetGroupVariableValue(context,"difficulty")
    if evt.param1 == PlayerElectrohercules then
        ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_monster_die: 角色死亡，失败")
        ScriptLib.StopGallery(context,local_defs.gallery_id,true)
    end
    
    if evt.param1 == EnemyElectrohercules[difficulty] then
        ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_monster_die: 敌人死亡，成功")
        ScriptLib.StopGallery(context,local_defs.gallery_id,false)
    end
    --运营埋点，获得结束时敌我双方的生命值百分比
    local PlayerHP = ScriptLib.GetMonsterHpPercent(context, base_info.group_id, PlayerElectrohercules)
    local EnemyHP = ScriptLib.GetMonsterHpPercent(context, base_info.group_id, EnemyElectrohercules[difficulty])
    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] action_monster_die: 对局结束，玩家生命:"..PlayerHP.."% 敌方生命:"..EnemyHP.."%")
    ScriptLib.MarkGroupLuaAction(context, "ElectroherculesBattleEnd", "", {["self_hp"] = PlayerHP,["enemy_hp"] = EnemyHP})

    LF_Stop_Play(context)
    return 0
end

------------------------------------------------------------------
function LF_Start_Play(context, difficulty, gallery_id)
    --改变斗虫台stage，增加空气墙
    ScriptLib.SetGroupGadgetStateByConfigId(context, Battlefield.group_id, Battlefield.config_id, 201)
    --屏蔽天气
	ScriptLib.SetWeatherAreaState(context, weather_id, 1)
    --创建敌我Monster
    ScriptLib.CreateMonster(context, { config_id = PlayerElectrohercules, delay_time = 0 })
    local ret = ScriptLib.CreateMonster(context, { config_id = EnemyElectrohercules[difficulty], delay_time = 0 })
    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] LF_Start_Play: 创建敌人结果为"..ret)
    --拉起Gallery
    ScriptLib.StartGallery(context,gallery_id)
    --ScriptLib.StartGallery(context,defs.gallery_id)
    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] LF_Start_Play: 拉起Gallery，ID="..gallery_id)
end


function LF_Stop_Play(context)
    ScriptLib.PrintContextLog(context,"## [ElectroherculesBattle] LF_Stop_Play：开始重置玩法")
    ScriptLib.RemoveEntityByConfigId(context,base_info.group_id,EntityType.MONSTER, PlayerElectrohercules)
    for k,v in pairs(EnemyElectrohercules) do
        ScriptLib.RemoveEntityByConfigId(context,base_info.group_id,EntityType.MONSTER, v)
    end
    --移除空气墙
    ScriptLib.SetGroupGadgetStateByConfigId(context, Battlefield.group_id,Battlefield.config_id , 0)
    --开启天气
    ScriptLib.SetWeatherAreaState(context, weather_id, 0)
    ScriptLib.SetGroupVariableValue(context,"difficulty",0)
    --移除测试时间轴
    ScriptLib.EndTimeAxis(context,"Sand_Flow")
end
------------------------------------------------------------------
Initialize()
