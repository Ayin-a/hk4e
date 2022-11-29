local extrTriggers = {
	initialtrigger = {
		--["Group_Load"] = { config_id = 8000001, name = "Group_Load", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_on_group_load", trigger_count = 0 },
		["TimeAxis_Event"] = { config_id = 7000001, name = "TimeAxis_Event", event= EventType.EVENT_TIME_AXIS_PASS, source = "BulletGameTimmer", condition = "", action = "action_trigger_timeacis", trigger_count = 0 },
		["Flora_LifeTime"] = {name = "Flora_LifeTime", config_id = 7000002, event = EventType.EVENT_TIMER_EVENT, source = "floralifetime", condition = "", action = "action_flora_life_time", trigger_count = 0},
		["Gallery_Stop"] = {name = "gallery_stop", config_id = 7000003, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0}
	}
}

function StartGallery( context, prev_context, activeStage )
	-- 开启小游戏玩法
	ScriptLib.AddExtraGroupSuite(context, GroupId, 2)

	ScriptLib.SetGroupTempValue(context, "Times", 1, {})
	--初始化一个时间轴
	ScriptLib.PrintContextLog(context, "BulletGame Start")

	ScriptLib.InitTimeAxis(context, "BulletGameTimmer", TimeAxis, false)

	ScriptLib.SetGroupTempValue(context, "activeStage", activeStage, {})

	ScriptLib.SetGroupGadgetStateByConfigId(context, 235800009, BulletConfigId, 201)

	-- 开启gallery
	ScriptLib.StartGallery(context, 6005)

	return 0
end

--创建弹幕机关
function CreateBulletController( context, prev_context )
	ScriptLib.CreateGadgetWithGlobalValue(context, BulletConfigId, { ["SGV_BulletType"]= 0})

	return 0
end

function HitByBullet( context)
	ScriptLib.UpdatePlayerGalleryScore(context, 6005,{["add_hit_count"] = 1})

	return 0
end

function action_gallery_stop( context,evt )
	-- 游廊结束时，判断是否超时

	ScriptLib.PrintContextLog(context, "BulletGame Stop!!!!!!!!!")

	ScriptLib.SetGroupGadgetStateByConfigId(context, 235800009, BulletConfigId, 0)

	Achivement(context)

	for i=2,#suites do
		ScriptLib.RemoveExtraGroupSuite(context, 235800009, i)
	end

	if evt.param2 == 0 then
		ScriptLib.ExecuteGroupLua(context, 235800001, "EndPlayStage", {0,GroupId})
	else
		ScriptLib.ExecuteGroupLua(context, 235800001, "EndPlayStage", {1,GroupId})
	end

	return 0

end


function Achivement( context )
	-- 结算，被命中N次以下的玩家获得加分
	local UidList = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(UidList) do

		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "collect_energy_6005", v, 5 * ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "get_random_flora", v))

		if ScriptLib.GetSceneMultiStagePlayUidValue(context, 235800001, 1, "hit_by_bullet", v) < Bullet_PerfectScore_count then
			ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, v, Bullet_PerfectScore)
			ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_counts_lessthan_5_6005", v, Bullet_PerfectScore)
		end

		if ScriptLib.GetSceneMultiStagePlayUidValue(context, 235800001, 1, "hit_by_bullet", v) == 0 then
			--watcher结算
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_hit_by_bullet", v, 0)
		else
			--watcher结算
            ScriptLib.SetSceneMultiStagePlayUidValue(context, 235800001, 1, "watcher_hit_by_bullet", v, -1)
		end
	end

	return 0
end

function action_trigger_timeacis( context,evt)
	-- 触发时间轴
	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : TIMER IS TRIGGERED")

	local activeStage = ScriptLib.GetGroupTempValue(context, "activeStage", {})

	local bulletTypeList = BulletStep[activeStage].list

	ChangeBulletType(context, bulletTypeList)
	RandomFlora(context,random_flower_sum.min, random_flower_sum.max)

	return 0
end

function RandomFlora( context, minNum, maxNum )
	-- 随机抽取suit中的蓝色风之花创建

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : RandomFlora IS Create")
	local GadgetList = {}

	for i,v in ipairs(suites[flower_suite_index].gadgets) do
		table.insert(GadgetList,v)
	end

	math.randomseed(ScriptLib.GetServerTime(context))
	randomNum = math.random(minNum, maxNum)

	for i=1,randomNum do
		local configIndex = math.random(#GadgetList)
		ScriptLib.CreateGadget(context, { config_id = GadgetList[configIndex] })
		table.remove(GadgetList,configIndex)
	end

	ScriptLib.CreateGroupTimerEvent(context, 235800009, "floralifetime", flower_life_time)

	return 0
end

function action_flora_life_time( context,evt )
	-- 蓝色风之花生命周期
	ScriptLib.KillExtraGroupSuite(context, 235800009, flower_suite_index)

	return 0
end

function ChangeBulletType(context, bulletTypeList)
	math.randomseed(ScriptLib.GetServerTime(context))
	randomWeight = math.random(100)

	local TargetType = 0

	local Times = ScriptLib.GetGroupTempValue(context, "Times", {})

	--ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Times Is -> "..Times)

	for i,v in ipairs(bulletTypeList[Times]) do
		if v.weight >= randomWeight then
			TargetType = v.gadgetstate
			break
		end
		randomWeight = randomWeight - v.weight
	end

	ScriptLib.ChangeGroupTempValue(context, "Times", 1, {})
	Times = ScriptLib.GetGroupTempValue(context, "Times", {})
	if Times > #bulletTypeList then
		ScriptLib.SetGroupTempValue(context, "Times", 1, {})
	end

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Bullet GadgetState Is -> "..TargetType)

	ScriptLib.SetEntityServerGlobalValueByConfigId(context, BulletConfigId, "SGV_BulletType", TargetType)

	-- local CurType =ScriptLib.GetGadgetAbilityFloatValue(context, GroupId, BulletConfigId, "WINDFLORA_BULLETTYPE")

	-- local DeltType = TargetType - CurType
	-- ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Bullet DeltType Is -> "..math.ceil(DeltType))

	-- ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : SET BULLETTYPE ALREADY ->"..ScriptLib.AddEntityGlobalFloatValueByConfigId(context, {BulletConfigId}, "WINDFLORA_BULLETTYPE", math.ceil(DeltType)))


	return 0
end


function LF_Initialize_Group()
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	return 0
end

LF_Initialize_Group()