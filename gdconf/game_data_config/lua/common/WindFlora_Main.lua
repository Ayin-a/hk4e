local GalleryNum = 3

local extrTriggers = {
	initialtrigger = {
		["Player_In"] = { config_id = 8000001, name = "Player_In", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_wait_all_player", trigger_count = 0 },
		--["Buffer_Timer"] = { config_id = 8000002, name = "Buffer_Timer", event= EventType.EVENT_TIMER_EVENT, source = "", condition = "", action = "buffer_timeout", trigger_count = 0 },
		["Gallery_Stop"] = { config_id = 8000003, name = "Gallery_Stop", event= EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0 },
		["MultiStage_End"] = { config_id = 8000004, name = "MultiStage_End", event= EventType.EVENT_SCENE_MULTISTAGE_PLAY_STAGE_END, source = "", condition = "", action = "action_multistage_end", trigger_count = 0 },
		--["Transplayer_Region"] = { config_id = 8000005, name = "Trans_Player_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_transplayer_region", action = "action_transplayer_region" },
		["Achiv_Time"] = {name = "Achiv_Time", config_id = 8000006, event = EventType.EVENT_TIMER_EVENT, source = "achivetimedelay", condition = "", action = "action_achive_time_delay", trigger_count = 0},
		["Trans_Delay"] = {name = "Trans_Delay", config_id = 8000007, event = EventType.EVENT_TIMER_EVENT, source = "transdelaytime", condition = "", action = "action_trans_time_delay", trigger_count = 0},
		["Ready_To_Start"] = {name = "Ready_To_Start", config_id = 8000008, event = EventType.EVENT_FLEUR_FAIR_DUNGEON_ALL_PLAYER_ENTER, source = "", condition = "", action = "action_player_ready_to_go", trigger_count = 0}
	}
}

--用于其他gadget或者group调用的部分

--风之花玩法加减分
function SubWindFloraScore( context )

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : WINDFLORAGAME Player Who SubSocre Is -> "..context.uid)
	-- 扣除单个玩家分数
	ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, context.uid, -10)

	ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_bombflower", context.uid, 1)

	return 0
end

function SubController( context, SubSocre, Tag)
    -- 取出要减分数的绝对值
    local absSubScore = math.abs(SubSocre)
    local CurScore = ScriptLib.GetFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, context.uid)

    if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid) == 0 then
        ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid, 0)
    end

    if CurScore >= absSubScore then
        ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid, SubSocre)
    else
        ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, Tag, context.uid, -1 * CurScore)
    end
end

function AddWindFloraScore( context )
	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : WINDFLORAGAME Player Who AddSocre Is -> "..context.uid)
	-- 风之花增加单个玩家分数

	if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "get_random_flora", context.uid) == 0 then
		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "get_random_flora", context.uid, 1)
	else
		ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, "get_random_flora", context.uid, 1)
	end

	ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, context.uid, RandomFlower_Bonus)
	return 0
end

--弹幕游戏加减分
function SubBulletGameScore( context )
	--ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : BULLETGAME Player Who SubSocre Is -> "..context.uid)
	-- 扣除单个玩家分数

	if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_bullet", context.uid) == 0 then
		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_bullet", context.uid, 1)
	else
		ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_bullet", context.uid, 1)
	end


	SubController(context, Bullet_Hit_Dedection, "bullet_sub_score")


	ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, context.uid, Bullet_Hit_Dedection)

	return 0
end

--水泡长廊加减分
function SubBubbleGameScore( context )

	--ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : BUBBLEGAME Player Who SubSocre Is -> "..context.uid)


	SubController(context, Bubble_Hit_Deduction, "bubble_sub_score")


	-- 扣除单个玩家分数
	ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, context.uid, Bubble_Hit_Deduction)

	ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_bubble", context.uid, 1)

	return 0
end

--射线加减分
function SubRayHitScore( context )

	--ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Player Who SubSocre Is -> "..context.uid)
	-- 扣除单个玩家分数
	ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, context.uid, -10)

	ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_ray", context.uid, 1)

	return 0
end

--烫脚地板减分
function SubFloorHitScore( context )
	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : SUBSOCRE FLOOR -> "..context.uid)
	-- 扣除单个玩家分数
	if ScriptLib.GetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_floor", context.uid) == 0 then
		ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_floor", context.uid, 1)
	else
		ScriptLib.AddSceneMultiStagePlayUidValue(context,235800001, 1, "hit_by_floor", context.uid, 1)
	end

	SubController(context, WindFlower_HurtFloor_Deduction, "hit_counts_falldown_6002")


	ScriptLib.AddFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, context.uid, WindFlower_HurtFloor_Deduction)

	return 0
end


function EndPlayStage( context, prev_context, is_success, GroupID)

	local CurRound = ScriptLib.GetGroupTempValue(context, "CurRound", {})

	ScriptLib.ExecuteGroupLua(context, GroupID, "StopReTransCheck", {})


	if is_success == 1 then
		ScriptLib.EndSceneMultiStagePlayStage(context, 1, "PlayRound"..CurRound, true)
	else
		ScriptLib.EndSceneMultiStagePlayStage(context, 1, "PlayRound"..CurRound, false)
	end
	
	return 0
end

function EndBossStage( context, prev_context, is_success, GroupID)

	ScriptLib.ExecuteGroupLua(context, GroupID, "StopReTransCheck", {})

	if is_success == 1 then
		ScriptLib.EndSceneMultiStagePlayStage(context, 1, "BossPlayRound", true)
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : BOSS ROUND WIND")
	else
		ScriptLib.EndSceneMultiStagePlayStage(context, 1, "BossPlayRound", false)
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : BOSS ROUND LOSE!!!")
	end
	
	return 0
end

function ReTrans( context, prev_context, uid )
	local UidList = ScriptLib.GetSceneUidList(context)
	local CurRound = ScriptLib.GetGroupTempValue(context, "CurRound", {})
	local CurSequence = ScriptLib.GetGroupTempValue(context, "sequence"..CurRound, {})
	local ActivityStage = ScriptLib.GetGroupTempValue(context, "ActivityStage", {})

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : ReTrans CurSequence ->"..CurSequence)



	if CurRound > ScriptLib.GetGroupTempValue(context, "GalleryNum_Real", {}) then
		--Boss传送
		for i,v in ipairs(UidList) do
			if v == uid then
				local ProtalPos = BossPointList[ActivityStage][i].pos
				local ProtalRot = BossPointList[ActivityStage][i].rot
				ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Player ->"..v.." ReTrans")
				ScriptLib.TransPlayerToPos(context, {uid_list = {v}, pos = ProtalPos, radius = 0, rot = ProtalRot , is_skip_ui = false}) 
			end	
		end
	else
		--非Boss传送
		for i,v in ipairs(UidList) do
			if v == uid then
				local ProtalPos = ProtalPointList[CurSequence][i].pos
				local ProtalRot = ProtalPointList[CurSequence][i].rot
				ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Player ->"..v.." ReTrans")
				ScriptLib.TransPlayerToPos(context, {uid_list = {v}, pos = ProtalPos, radius = 0, rot = ProtalRot , is_skip_ui = false}) 
			end	
		end
	end
	
	return 0
end


--其他gadget和group调用的部分结束

function action_wait_all_player( context, evt )
	-- 生成当次的Group和传送点位置组合
	ScriptLib.SetGroupTempValue(context, "Rounds", 1, {})

	ScriptLib.SetGroupTempValue(context, "Level Loading Time", ScriptLib.GetServerTime(context), {})

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Rounds Initial ！！！！！！！！！ ")

	local UidList = ScriptLib.GetSceneUidList(context)

	-- 初始化一个多阶段玩法
	ScriptLib.InitSceneMultistagePlay(context, 1, MultistagePlayType.FleurFair, {gallery_stage_count = GalleryNum}, UidList)

	local temp = ScriptLib.GetFleurFairMultistagePlayGalleryIdVec(context, 235800001, 1)

	ScriptLib.SetGroupTempValue(context, "GalleryNum_Real", #temp, {})

	ScriptLib.SetGroupTempValue(context, "ActivityStage", ScriptLib.GetFleurFairDungeonSectionId(context), {}) 

	-- for i,v in ipairs(MiniGameLevelPoll[ActivityStage]) do
	-- 	table.insert(temp,v)
	-- end

	for i=1,#temp do
		ScriptLib.SetGroupTempValue(context, "sequence"..i, temp[i], {})

		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : The Random CurSequence is -> "..ScriptLib.GetGroupTempValue(context, "sequence"..i, {}))
	end

	
	ScriptLib.StartSceneMultiStagePlayStage(context, 1, 40, Multistage.FleurFairPreview, "PlayerReady",{preview_stage_index = 0, preview_display_duration = 40})
	
	return 0
end

function action_player_ready_to_go( context,evt )
	--开启传送延迟
	if ScriptLib.GetDungeonTeamPlayerNum(context) > 1 then
		ScriptLib.CreateGroupTimerEvent(context, 235800001, "transdelaytime", 8)
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : PLAYER ALREADY！！！！ Use Time Is ->"..ScriptLib.GetServerTime(context) - ScriptLib.GetGroupTempValue(context, "Level Loading Time", {}))
	end

	return 0

end

function action_player_ready_to_go_single( context )
	--开启传送延迟
	if ScriptLib.GetDungeonTeamPlayerNum(context) == 1 then
		--ScriptLib.EndSceneMultiStagePlayStage(context, 1, "PlayerReady", true)
		ScriptLib.CreateGroupTimerEvent(context, 235800001, "transdelaytime", 8)
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : PLAYER ALREADY！！！！ FROM LEVELABILITY！！")
	end

	return 0
end

function action_trans_time_delay( context,evt )
	-- 玩家loading完后结束每个preview阶段
	local CurRound = ScriptLib.GetGroupTempValue(context, "CurRound", {})

	local Rounds = ScriptLib.GetGroupTempValue(context, "Rounds", {})

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : CUT ROUND THE ROUNDS IS "..Rounds)

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : CUT ROUND THE CURROUND IS "..CurRound)

	if CurRound == 0 then
		ScriptLib.EndSceneMultiStagePlayStage(context, 1, "PlayerReady", true)
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : CUT ROUND [PlayerReady] ")
	elseif Rounds%4 == 2 and math.ceil(Rounds/4) == CurRound then
		ScriptLib.EndSceneMultiStagePlayStage(context, 1, "WaitRound"..CurRound, true)
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : CUT ROUND [WaitRound] "..CurRound)
	end

	return 0
end

function condition_transplayer_region( context,evt )
	if evt.param1 ~= 1002 then return false end

	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end

	return true
end

function action_transplayer_region( context,evt )

	-- if ScriptLib.GetGroupTempValue(context, "Rounds", {}) == 1 then
	-- 	--初始化所有玩家能量
	-- 	ScriptLib.SetGroupTempValue(context, "player_energy"..context.uid, Initialize_Energy, {})
	-- 	ScriptLib.SetFleurFairMultistagePlayBuffEnergy(context, 235800001, 1, context.uid, Initialize_Energy)
	-- end

	return 0

end


function action_multistage_end( context, evt)

	if evt.source_name == "BossPlayRound" and evt.param3 ==1  then
		ScriptLib.EndSceneMultiStagePlay(context, 1, true)
	elseif evt.source_name == "BossPlayRound" and evt.param3 ==0  then
		ScriptLib.CauseDungeonFail(context)
		ScriptLib.EndSceneMultiStagePlay(context, 1, false)		
	elseif evt.source_name ~= "BossPlayRound" then
		StartNewPlay(context)
	end
	return 0
end

function action_gallery_stop( context, evt )
	-- 玩法结束结算
	if evt.param2 == 1 then
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Game TimeOut ")
		return 0
	end

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Game End ")
	return 0
end


function StartNewPlay(context)
	-- 根据sequence开启玩法

	local CurRound = ScriptLib.GetGroupTempValue(context, "Rounds", {})

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : StartNewPlay And Rounds Is ->"..CurRound)

	--单数开启传送、等待；偶数开启玩法
	if CurRound%4 == 1 then
		StartWaitStage(context, (CurRound+3)//4)	
	elseif CurRound%4 == 2 then
		StartIdleStage( context, (CurRound+2)//4)
	elseif CurRound%4 == 3 then
		StartPlayStage(context, (CurRound+1)//4)
	elseif CurRound%4 == 0 then
		StartAchievStage(context, CurRound//4)
	end

	ScriptLib.ChangeGroupTempValue(context, "Rounds", 1, {})
	return 0
end

function StartAchievStage( context, CurRound )
	-- 开启一个结算阶段
	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : CurAchivRound Num is -> "..CurRound)
	ScriptLib.CreateGroupTimerEvent(context, 235800001, "achivetimedelay", 10)

	return 0
end

function action_achive_time_delay( context,evt )
	-- 结算等待时间结束，开一个新玩法
	StartNewPlay(context)

	return 0
end

function StartWaitStage( context, CurRound )
	-- 等待回合，开启传送、等待
	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : CurWaitRound Num is -> "..CurRound)
		-- 如果所有sequence中的玩法都取完了，开启BOSS挑战
	ScriptLib.SetGroupTempValue(context, "CurRound", CurRound, {})

	local GalleryNum_Real = ScriptLib.GetGroupTempValue(context, "GalleryNum_Real", {})

	if CurRound == GalleryNum_Real+1 then
		BossChallengeWait(context,CurRound)
		return 0
	end
	
	local CurSequence = ScriptLib.GetGroupTempValue(context, "sequence"..CurRound, {})

	ScriptLib.StartSceneMultiStagePlayStage(context, 1, 40, Multistage.FleurFairPreview, "WaitRound"..CurRound,{preview_stage_index = CurRound, preview_display_duration = 40})

	local UidList = ScriptLib.GetSceneUidList(context)
	if UidList ~= nil then
		for i,v in ipairs(UidList) do
			local ProtalPos = ProtalPointList[CurSequence][i].pos
			local ProtalRot = ProtalPointList[CurSequence][i].rot
			ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Player ->"..v.."  Is In Trans")
			ScriptLib.TransPlayerToPos(context, {uid_list = {v}, pos = ProtalPos, radius = 0, rot = ProtalRot , is_skip_ui = true}) 
		end
	else
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : UidList Is Nil ")
	end


	local CurSequence = ScriptLib.GetGroupTempValue(context, "sequence"..CurRound, {})
	local GroupID = WindFloraGroupList[CurSequence]


	--单独创建弹幕机关
	if GroupID == 235800009 then
		ScriptLib.ExecuteGroupLua(context, 235800009, "CreateBulletController", {})
	end

	return 0
end

function StartIdleStage( context, CurRound )

	local GalleryNum_Real = ScriptLib.GetGroupTempValue(context, "GalleryNum_Real", {})

	local ActivityStage = ScriptLib.GetGroupTempValue(context, "ActivityStage", {})

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : CurPlayRound Num is -> "..CurRound)

	if CurRound == GalleryNum_Real+1 then
		BossChallengeIdle(context)
		return 0
	end
	
	ScriptLib.StartSceneMultiStagePlayStage(context, 1, 8, Multistage.Idle, "IdleRound"..CurRound,{})

	return 0
end

function StartPlayStage( context, CurRound )
	-- 开启挑战回合

	local GalleryNum_Real = ScriptLib.GetGroupTempValue(context, "GalleryNum_Real", {})

	local ActivityStage = ScriptLib.GetGroupTempValue(context, "ActivityStage", {})

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : CurPlayRound Num is -> "..CurRound)

	if CurRound == GalleryNum_Real+1 then
		BossChallengeStart(context)
		return 0
	end

	local CurSequence = ScriptLib.GetGroupTempValue(context, "sequence"..CurRound, {})

	-- 开启对应阶段
	ScriptLib.StartSceneMultiStagePlayStage(context, 1, 0, Multistage.FleurFairGallery, "PlayRound"..CurRound,{gallery_stage_index = CurRound})

	-- 开启对应的玩法
	--初始化蓝色风之花分数
	local UidList = ScriptLib.GetSceneUidList(context)
    for i,v in ipairs(UidList) do
        ScriptLib.SetSceneMultiStagePlayUidValue(context,235800001, 1, "get_random_flora", v, 0)
    end
	ScriptLib.ExecuteGroupLua(context, WindFloraGroupList[CurSequence], "StartGallery", {ActivityStage})

	--开启超界检测
	ScriptLib.ExecuteGroupLua(context, WindFloraGroupList[CurSequence], "StartReTransCheck", {})

	--ScriptLib.SetGroupGadgetStateByConfigId(context, WindFloraGroupList[CurSequence], tempGadgt[CurSequence], 201)

	return 0
end

function BossChallengeWait( context,CurRound )
	-- Boss等待回合
	local ActivityStage = ScriptLib.GetGroupTempValue(context, "ActivityStage", {})

	local CurRound = ScriptLib.GetGroupTempValue(context, "CurRound", {})

	ScriptLib.StartSceneMultiStagePlayStage(context, 1, 40, Multistage.FleurFairPreview, "WaitRound"..CurRound,{preview_stage_index = CurRound, preview_display_duration = 1})

	-- 传送到对应的位置
	local UidList = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(UidList) do
		ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Player Uid Is -> "..v.."     BossPOS Is Ready")

		local ProtalPos = BossPointList[ActivityStage][i].pos
		local ProtalRot = BossPointList[ActivityStage][i].rot

		ScriptLib.TransPlayerToPos(context, {uid_list = {v}, pos = ProtalPos, radius = 0, rot = ProtalRot, is_skip_ui = false}) 
	end

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Boss Wait Round")

	return 0

end


function BossChallengeIdle(context)

	local RealRoundNum = ScriptLib.GetGroupTempValue(context, "GalleryNum_Real", {})

	ScriptLib.ExecuteGroupLua(context, 235800002, "RemoveFloorSuite", {})
	ScriptLib.ExecuteGroupLua(context, 235800003, "RemoveFloorSuite", {})
	ScriptLib.ExecuteGroupLua(context, 235800006, "RemoveFloorSuite", {})

	ScriptLib.StartSceneMultiStagePlayStage(context, 1, 8, Multistage.FleurFairPreview, "BossIdleRound",{preview_stage_index = RealRoundNum+2, preview_display_duration = 1})
end

function BossChallengeStart( context)
	-- 获取阶段BUFF

	-- 开启Boss阶段
	local ActivityStage = ScriptLib.GetGroupTempValue(context, "ActivityStage", {})

	ScriptLib.ExecuteGroupLua(context, BossGroupList[ActivityStage], "RefreshRandomElem", {ActivityStage})

	--开启超界检测
	ScriptLib.ExecuteGroupLua(context, BossGroupList[ActivityStage], "StartReTransCheck", {})

	ScriptLib.AddExtraGroupSuite(context, BossGroupList[ActivityStage], 2)
	ScriptLib.StartSceneMultiStagePlayStage(context, 1, BossTimeLimits[ActivityStage], Multistage.FleurFairBoss, "BossPlayRound",{})
	-- 开启Boss玩法

	ScriptLib.PrintContextLog(context, "## WINDFLORA_LOG : Open Father Challenge ")
	return 0
end

function LF_Initialize_Group(triggers, suites)
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	return 0
end

LF_Initialize_Group(triggers, suites)
