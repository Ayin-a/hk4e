--[[======================================
||	filename:       Activity_BattleMushroomMonster
||	owner:          chen.chen
||	description:    蕈兽战斗白盒
||	LogName:        TD
||	Protection:     [Protection]
=======================================]]



local battleStartConsole = 1001
local beastSkillConsole={
	[1]=1033,
	[2]=1034,
	[3]=1035,
	[4]=1036,
}
local gearOptionInfo=
{
	summonBeastInfo=
	{
		[906]=1023,
		[907]=1024,
		[908]=1025,
		[909]=1026,
		[910]=1027,
		[911]=1028,
		[912]=1029,
		[913]=1030,
		[914]=1031,
		[915]=1032,
	},
	challengeInfo=
	{
		attackChallenge=900,
		defenseChallenge=901
	},
	beastSillInfo=
	{
		[1]=902,
		[2]=903,
		[3]=904,
		[4]=905,
	}	
}




-- 打印日志
function PrintLog(context, content)
	local log = "## [Activity_BattleMushroomMonster] TD: "..content
	ScriptLib.PrintContextLog(context, log)
end

local extraTriggers = 
{
    { config_id = 40000001, name = "group_load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD", trigger_count = 0 },
    { config_id = 40000002, name = "select_option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_EVENT_SELECT_OPTION", trigger_count = 0 },
    { config_id = 40000003, name = "monster_die", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE", trigger_count = 0 },
}

------ Local Functions -----------
function LF_Initialize_Level()
    --- TRIGGER
	for i, _suite in ipairs(suites) do
		for _, _trigger in pairs(extraTriggers) do
			table.insert(_suite.triggers, _trigger.name)
		end
	end
	for _, _trigger in pairs(extraTriggers) do
		table.insert(triggers, _trigger)
	end
	for i=1,#beastSkillConsole do
		table.insert(variables,{ config_id=50000000+i,name = beastSkillConsole[i].."BeastConfigId", value = 0})
	end
	table.insert(variables,{ config_id=51000000,name = "wave", value = 1})
	table.insert(variables,{ config_id=51000001,name = "strategy", value = 1})
	table.insert(variables,{ config_id=51000002,name = "index", value = 1})
    return 0
end

function LF_StartAttackChanllenge(context)
	PrintLog(context, "测试关卡开启")
	local wave=ScriptLib.GetGroupVariableValue(context,"wave")
	local strategy=ScriptLib.GetGroupVariableValue(context,"strategy")
	local index=ScriptLib.GetGroupVariableValue(context,"index")
	local waveInfo=random_strategy_info[strategy][wave][index]
	--零时测试数据
	ScriptLib.ActiveChallenge(context, 1, 1, 0, waveInfo.total_count, 0, 0)
	ScriptLib.AutoPoolMonsterTide(context, 1, base_info.group_id, waveInfo.monster_package,0, {}, {}, {total_count=waveInfo.total_count, min_count=waveInfo.min_count, max_count=waveInfo.max_count,fill_time=0,fill_count=0,is_ordered = true})
	--ScriptLib.AutoMonsterTide(context, 100, 251009001, {1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048}, 100, 2, 5)
	return 0
end
------ Server Lua Call Functions -----------
--怪物cd重置
function SLC_MushroomMonsterAlertRefreshSkill(context)
	PrintLog(context,"蕈兽技能CD重置")
	--进入惊吓状态
	local beast = ScriptLib.GetMonsterConfigId(context, { monster_eid = context.source_entity_id })
	--local beast = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, beast, "SGV_Fungus_StartBurst_Immediately",0)
	for k,v in pairs(beastSkillConsole) do
		if ScriptLib.GetGroupVariableValue(context, v.."BeastConfigId")==beast then
			ScriptLib.AssignPlayerShowTemplateReminder(context, 200, {param_vec={k},param_uid_vec={},uid_vec={context.owner_uid}})
		end
	end
	return 0
end
--蕈兽放技能
function SLC_MushroomMonsterAlertDoSkill(context)
	PrintLog(context,"蕈兽开始释放技能")
	local beast = ScriptLib.GetMonsterConfigId(context, { monster_eid = context.source_entity_id })
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, beast, "SGV_Fungus_StartBurst_Immediately",1)
	return 0
end

------ conditions & actions ------
--group加载
function action_EVENT_GROUP_LOAD(context, evt)
    PrintLog(context, "group load")
    --variable重置
    for i=1,#beastSkillConsole do
    	ScriptLib.SetGroupVariableValue(context, beastSkillConsole[i].."BeastConfigId", 0)
	end
    --开启挑战台子增加按钮
    ScriptLib.SetWorktopOptionsByGroupId(context, 0, battleStartConsole, {gearOptionInfo.challengeInfo.attackChallenge,gearOptionInfo.challengeInfo.defenseChallenge})

    --给四个台子增加创建蕈兽的按钮
    local insertTableValue=function(input)
    	local output={}
    	for k,v in pairs(input) do
    		table.insert(output,k)
    	end
    	return output
    end
    local tempTbl=insertTableValue(gearOptionInfo.summonBeastInfo)
    for i=1,#beastSkillConsole do
    	ScriptLib.SetWorktopOptionsByGroupId(context, 0, beastSkillConsole[i], tempTbl)
    end
    return 0
end

function action_EVENT_SELECT_OPTION(context, evt)
	PrintLog(context, "select option")
	--先看看是不是开启挑战
	if evt.param1 == battleStartConsole then
		if evt.param2 == gearOptionInfo.challengeInfo.attackChallenge then
			PrintLog(context, "开启挑战关")
			ScriptLib.AddExtraGroupSuite(context, 0, 2)
			LF_StartAttackChanllenge(context)
		elseif evt.param2 == gearOptionInfo.challengeInfo.defenseChallenge then
			PrintLog(context, "开启防守关")
			ScriptLib.AddExtraGroupSuite(context, 0, 3)

		else
			PrintLog(context, "挑战台上了错误的按钮")
		end
		return 0
	end
	--看看是不是召唤蕈兽
	for k,v in pairs(gearOptionInfo.summonBeastInfo) do
		if k==evt.param2 then
			monsterConfigId=gearOptionInfo.summonBeastInfo[evt.param2]
			--先把自己的按钮只换了
			for a,b in pairs(beastSkillConsole) do
				if evt.param1==b then
					ScriptLib.SetWorktopOptionsByGroupId(context, 0, b, {gearOptionInfo.beastSillInfo[a]})
				else
					--其他几个操作台删掉对应按钮
					ScriptLib.DelWorktopOptionByGroupId(context, 0, b, evt.param2)
				end
			end
			--然后把怪物创建出来
			if -1==ScriptLib.CreateMonster(context, { config_id = monsterConfigId,delay_time = 0,server_global_value={["SGV_Fungus_StartBurst_Immediately"]=0,["SGV_Fungus_StartBurst_WaitForStandby"]=0}}) then
				PrintLog(context, "怪物创建失败")
			else
				PrintLog(context, "怪物创建成功，configID:"..monsterConfigId)
			end
			--最近记录下怪物和操作台的绑定关系
			ScriptLib.SetGroupVariableValue(context, evt.param1.."BeastConfigId",monsterConfigId)
			return 0
		end
	end
	--看看是不是要放蕈兽技能
	for k,v in pairs(gearOptionInfo.beastSillInfo) do
		if v==evt.param2 then
			local consoleId=beastSkillConsole[k]
			local monsterId=ScriptLib.GetGroupVariableValue(context, consoleId.."BeastConfigId")
			ScriptLib.SetEntityServerGlobalValueByConfigId(context, monsterId, "SGV_Fungus_StartBurst_Immediately", 1)
			--起一个时间轴给它设回来，这个先改成用词缀加SLC做
			return 0
		end
	end


	--如果无事发生
	PrintLog(context, "按钮配置有误，未触发任何逻辑")
	return 0
end

function action_EVENT_ANY_MONSTER_DIE(context, evt)
	for i=1,#beastSkillConsole do
		if ScriptLib.GetGroupVariableValue(context, beastSkillConsole[i].."BeastConfigId") == evt.param1 then
			PrintLog(context, "蕈兽死亡:"..evt.param1)
			ScriptLib.SetGroupVariableValue(context, beastSkillConsole[i].."BeastConfigId",0)
		end
	end
	return 0
end

LF_Initialize_Level()
