--[[
	2.3雪山活动 冰骗骗花ScenePlay
]]

local cfg_watcher = {
	--果实召唤怪ID
	summon_monsterId = 20010901,
}

local watcher_triggers={

	--{ name = "Monster_Die", config_id = 8300001, event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_any_monster_die", trigger_count = 0 },
	{ name = "Monster_Die_Before_Leave_Scene", config_id = 8300001, event = EventType.EVENT_MONSTER_DIE_BEFORE_LEAVE_SCENE, source = "", condition = "", action = "action_Monster_Die_BeforeLeaveScene", trigger_count = 0 }

}


function LF_Initialize_Watcher(triggers, suites)
	for i=1,#watcher_triggers do
		table.insert(triggers, watcher_triggers[i])
		table.insert(suites[init_config.suite].triggers,watcher_triggers[i].name)
	end
end

function action_Monster_Die_BeforeLeaveScene(context, evt)

	if evt.param1 == defs.boss_id then 
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] Boss killed by uid@"..evt.param2)
		LF_Mimik_Killer(context, evt.param2)
		LF_ReportSkillExhibition(context)

	else

		local monster_id = monsters[evt.param1].monster_id

		if monster_id == cfg_watcher.summon_monsterId then
			LF_Summon_Monster_Killed(context, evt.param2) 
		end
	end

	return 0
end

--玩家击回果实
function SLC_Player_HitBack(context, evt)
	LF_Player_HitBack(context, context.uid)
	return 0
end
--玩家拾取结晶
function SLC_Player_PickUp(context, evt)
	LF_Player_PickUp(context, context.uid)
	--标记拾取过结晶的玩家
	ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_Mimik_PickUped", 1)
	return 0
end

--被SkillA打到的玩家，做个标记
function SLC_Watcher_OnHitBy_SkillA(context)

	ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_HitByMimik_SkillA", 1)
	return 0
end

--被SkillB打到的玩家，做个标记
function SLC_Watcher_OnHitBy_SkillB(context)
	ScriptLib.SetTeamServerGlobalValue(context, context.uid, "SGV_HitByMimik_SkillB", 1)
	return 0
end
--战斗胜利时，未被除名的玩家上传陈列室
function LF_ReportSkillExhibition(context)
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i, v in ipairs(uid_list) do
		local resultA = ScriptLib.GetTeamServerGlobalValue(context, v, "SGV_HitByMimik_SkillA")
		local resultB = ScriptLib.GetTeamServerGlobalValue(context, v, "SGV_HitByMimik_SkillB")
		local hasPickUp = ScriptLib.GetTeamServerGlobalValue(context, v, "SGV_Mimik_PickUped")
		ScriptLib.PrintContextLog(context, "[WinterCampMimik] LF_ReportSkillExhibition. UID@"..v.." resultA@"..resultA.." resultB"..resultB.." hasPickUp@"..hasPickUp)
		if resultA ~= 1 then 
			ScriptLib.AddExhibitionReplaceableData(context, v, "WinterCamp_Boss_NoHitBySkillA", 1)
		end
		if resultB ~= 1 then 
			ScriptLib.AddExhibitionReplaceableData(context, v, "WinterCamp_Boss_NoHitBySkillB", 1)
		end
		if hasPickUp ~= 1 then 
			ScriptLib.AddExhibitionReplaceableData(context, v, "WinterCamp_Boss_NoPickUp", 1)
		end
	end
	return 0
end

--写陈列室 - 降下最后一击的玩家
function LF_Mimik_Killer(context, uid)
	ScriptLib.AddExhibitionReplaceableData(context, uid, "WinterCamp_Boss_Mimik_Killer", 1)
	return 0 
end

--写陈列室 - 果实召唤怪的击杀数
function LF_Summon_Monster_Killed(context, uid)
	--单局
	ScriptLib.AddExhibitionReplaceableData(context, uid, "WinterCamp_Boss_SummonMonster_Killed", 1)
	--累计
	ScriptLib.AddExhibitionAccumulableData(context, uid, "WinterCamp_Boss_SummonMonster_KilledTotal", 1)
	return 0
end

--写陈列室 - 击回果实数
function LF_Player_HitBack(context, uid)
	ScriptLib.AddExhibitionReplaceableData(context, uid, "WinterCamp_Boss_HitBack", 1)
	return 0 
end

--写陈列室 - 拾取能量结晶数
function LF_Player_PickUp(context, uid)
	ScriptLib.AddExhibitionReplaceableData(context, uid, "WinterCamp_Boss_PickUp", 1)
	return 0
end

LF_Initialize_Watcher(triggers, suites)