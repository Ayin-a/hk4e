
local GroupID = 144003005
local smallRegion = 5039
local bigRegion = 5040

--自定义函数部分
local extrTriggers = {
	initialtrigger = {
		["Start_Gallery"] = { config_id = 8000001, name = "Start_Gallery", event= EventType.EVENT_GALLERY_START, source = "", condition = "", action = "action_whern_gallery_start", trigger_count = 0 },
		["MultiStage_End"] = { config_id = 8000002, name = "MultiStage_End", event= EventType.EVENT_SCENE_MULTISTAGE_PLAY_STAGE_END, source = "", condition = "", action = "action_multistage_end", trigger_count = 0 },
		["Shooter_Die"] = { config_id = 8000003, name = "Shooter_Die", event= EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_whern_shooter_die", trigger_count = 0 },
		["Group_Ready"] = { config_id = 8000004, name = "Group_Ready", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_ready", trigger_count = 0 },
		["MultiStage_Start"] = { config_id = 8000005, name = "MultiStage_Start", event= EventType.EVENT_SCENE_MULTISTAGE_PLAY_STAGE_START, source = "", condition = "", action = "action_multistage_start", trigger_count = 0 },
		--["GadgetSate_Change"] = { config_id = 8000006, name = "GadgetSate_Change", event= EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_gadgetstate_change", trigger_count = 0 },
		["Gallery_Stop"] = { config_id = 8000007, name = "Gallery_Stop", event= EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_whern_gallery_stop", trigger_count = 0 },
		["Random_Buff"] = { config_id = 8000008, name = "Random_Buff", event= EventType.EVENT_TIME_AXIS_PASS, source = "randombuff", condition = "", action = "action_timeaxis_randombuff", trigger_count = 0 },
		["Shooter_Reborn"] = { config_id = 8000009, name = "Shooter_Reborn", event= EventType.EVENT_TIMER_EVENT, source = "shooterreborn", condition = "", action = "action_timer_shooterreborn", trigger_count = 0 },
		["Group_Unload"] = {name = "Group_Unload", config_id = 8000010, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
		["Small_Region"] = { config_id = 9000001, name = "Small_Region", event= EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "player_in_optimizationRegion", trigger_count = 0, forbid_guest = false },
		["Big_Region"] = { config_id = 9000002, name = "Big_Region", event= EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "player_leave_optimizationRegion", trigger_count = 0, forbid_guest = false }
	}
}

local extrSuites = {
	{
		monsters = { },
		gadgets = { },
		regions = {smallRegion, bigRegion },
		triggers = { "Small_Region","Big_Region"},
		rand_weight = 100
	}
}


function FeverStart( context )

	ScriptLib.PrintContextLog(context, "##BD LOG : Fever Start")
	-- Fever状态开始
	ScriptLib.SetGroupTempValue(context, "ISFEVERSTAGE", 1, {})
	ScriptLib.EndSceneMultiStagePlayStage(context, 1, "NormalRound", true)

	return 0
end

function FeverEnd( context )

	ScriptLib.PrintContextLog(context, "##BD LOG : Fever End")
	-- Fever状态结束

	ScriptLib.EndSceneMultiStagePlayStage(context, 1, "FeverRound", true)

	return 0
end

function GetRandomType(context, randomList, isFerver)
	local MaxNum = #randomList
	local CurStage = ScriptLib.GetGroupTempValue(context, "StageCount", {})
	math.randomseed(ScriptLib.GetServerTime(context))
	
	if CurStage > MaxNum then
		CurStage = MaxNum
	end

	return randomList[CurStage][math.random(#randomList[CurStage])]
end



function CurveBallCount( context )
	-- 曲线球计数

	ScriptLib.PrintContextLog(context, "##BD LOG : player  "..context.uid.."CurveBallCount ++")

	ScriptLib.AddExhibitionAccumulableData(context, context.uid, "Activity_BD_CurveCount"..ScriptLib.GetGroupTempValue(context, "GalleryID", {}), 1)

	return 0
end

function IceBallCount( context )

	ScriptLib.PrintContextLog(context, "##BD LOG : player  "..context.uid.."IceBallCount ++")
	-- 冰冻球计数
	ScriptLib.AddExhibitionAccumulableData(context, context.uid, "Activity_BD_IceCount"..ScriptLib.GetGroupTempValue(context, "GalleryID", {}), 1)

	return 0
end

function SpeedBallCount( context )

	ScriptLib.PrintContextLog(context, "##BD LOG : player  "..context.uid.."SpeedBallCount ++")
	-- 高速球计数
	ScriptLib.AddExhibitionAccumulableData(context, context.uid, "Activity_BD_SpeedCount"..ScriptLib.GetGroupTempValue(context, "GalleryID", {}), 1)

	--高速球翻牌子计数
	ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_BD_SpeedValue", 1)

	return 0
end

function SoilBallCount( context )

	ScriptLib.PrintContextLog(context, "##BD LOG : player  "..context.uid.."SoilBallCount ++")
	-- 岩土球计数
	ScriptLib.AddExhibitionAccumulableData(context, context.uid, "Activity_BD_SoilCount"..ScriptLib.GetGroupTempValue(context, "GalleryID", {}), 1)

	return 0
end

function TimeLimitedShieldDieCount( context )
	-- 限时内护盾被击破翻牌子计数
	local UidList = ScriptLib.GetSceneUidList(context)

	for i,v in ipairs(UidList) do

		ScriptLib.AddExhibitionReplaceableData(context, v, "Activity_BD_ShieldDestroy", 1)

	end

	return 0
	
end

function ShieldDieCount( context)
	-- 护盾击破计数

	local UidList = ScriptLib.GetSceneUidList(context)

	for i,v in ipairs(UidList) do
		ScriptLib.PrintContextLog(context, "##BD LOG : ShieldDieCount +1 for uid"..v)

		ScriptLib.AddExhibitionAccumulableData(context, v, "Activity_BD_ShieldDieCount"..ScriptLib.GetGroupTempValue(context, "GalleryID", {}), 1)

	end

	return 0
end


function AutoReturnCount( context )

	ScriptLib.PrintContextLog(context, "##BD LOG : player  "..context.uid.."AutoReturnCount ++")
	-- 自动回球计数
	ScriptLib.AddExhibitionAccumulableData(context, context.uid, "Activity_BD_AutoReturnCount", 1)

	return 0
end

function GoldPAPACount( context )
	-- 黄金球拍计数
	local GalleryStage = ScriptLib.GetGroupTempValue(context, "GalleryStage",{})

	ScriptLib.UpdatePlayerGalleryScore(context, GalleryIDList[GalleryStage], {["catch_gadget_id"] = 70350257 ,["add_score"] = 0, ["add_destroyed_machine_count"] = 0, ["add_damage"] = 0,["add_normal_hit_count"] = 0,["add_perfect_hit_count"] = 0, ["add_fever_count"] = 0} )
	

	return 0
end

function PepperBuffCount( context )

	ScriptLib.PrintContextLog(context, "##BD LOG : player  "..context.uid.."PepperBuffCount ++")
	-- 绝云辣椒计数
	local GalleryStage = ScriptLib.GetGroupTempValue(context, "GalleryStage",{})

	ScriptLib.UpdatePlayerGalleryScore(context, GalleryIDList[GalleryStage], {["catch_gadget_id"] = 70350252 ,["add_score"] = 0, ["add_destroyed_machine_count"] = 0, ["add_damage"] = 0,["add_normal_hit_count"] = 0,["add_perfect_hit_count"] = 0, ["add_fever_count"] = 0} )

	ScriptLib.AddExhibitionAccumulableData(context, context.uid, "Activity_BD_PepperCount", 1)

	return 0
end

function SpeedBuffCount( context )
	ScriptLib.PrintContextLog(context, "##BD LOG : player  "..context.uid.."SpeedBuffCount ++")
	-- 黄金鞋计数
	local GalleryStage = ScriptLib.GetGroupTempValue(context, "GalleryStage",{})

	ScriptLib.UpdatePlayerGalleryScore(context, GalleryIDList[GalleryStage], {["catch_gadget_id"] = 70350248 ,["add_score"] = 0, ["add_destroyed_machine_count"] = 0, ["add_damage"] = 0,["add_normal_hit_count"] = 0,["add_perfect_hit_count"] = 0, ["add_fever_count"] = 0} )

	ScriptLib.AddExhibitionAccumulableData(context, context.uid, "Activity_BD_ShoesCount", 1)

	return 0
end

function BeingForzen( context )
	ScriptLib.PrintContextLog(context, "##BD LOG : player  "..context.uid.."BeingForzen ++")
	-- 冻结计数
	ScriptLib.SetGroupTempValue(context, "NoFrozenCount"..context.uid, 1, {})

	return 0
end

function BeingDirty( context )
	ScriptLib.PrintContextLog(context, "##BD LOG : player  "..context.uid.."BeingDirty ++")
	-- 脏脏球计数
	ScriptLib.SetGroupTempValue(context, "NoDirtyCount"..context.uid, 1, {})

	return 0
end

function HitByBall( context )
	ScriptLib.PrintContextLog(context, "##BD LOG : player  "..context.uid.."HitByBall ++")
	-- 被球命中翻牌子计数
	ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_BD_NoSufferHit", 1)

	return 0
end

function AddScore( context, damage, isPerfect, ballType )
	-- 计算分数

	ScriptLib.PrintContextLog(context, "##BD LOG : Score Damage == "..damage.." UID == "..context.uid)

	local GalleryStage = ScriptLib.GetGroupTempValue(context, "GalleryStage",{})

	if isPerfect == 1 then

		ScriptLib.PrintContextLog(context, "##BD LOG : updatePlayerScore  PERFECT BALL")

		--完美球翻牌子计数
		ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_BD_PerfectValue", 1)

		--完美球陈列室累计计数
		ScriptLib.AddExhibitionAccumulableData(context, context.uid, "Activity_BD_PerfectCount"..ScriptLib.GetGroupTempValue(context, "GalleryID", {}), 1)


		--伤害翻牌子计数
		ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_BD_DamageValue", -1*damage)

		--伤害实时显示
		ScriptLib.UpdatePlayerGalleryScore(context, GalleryIDList[GalleryStage], {["add_score"] = -1*damage*PerDamageScore, ["add_destroyed_machine_count"] = 0, ["add_damage"] = -1*damage,["add_normal_hit_count"] = 0,["add_perfect_hit_count"] = 1, ["add_fever_count"] = 0} )
	else

		ScriptLib.PrintContextLog(context, "##BD LOG : updatePlayerScore  NORMAL BALL ")

		--伤害翻牌子计数
		ScriptLib.AddExhibitionReplaceableData(context, context.uid, "Activity_BD_DamageValue", -1*damage)

		--伤害实时显示
		ScriptLib.UpdatePlayerGalleryScore(context, GalleryIDList[GalleryStage], {["add_score"] = -1*damage*PerDamageScore, ["add_destroyed_machine_count"] = 0, ["add_damage"] = -1*damage,["add_normal_hit_count"] = 1,["add_perfect_hit_count"] = 0, ["add_fever_count"] = 0} )
	end



	return 0
end

function SetGadgetStateByGalleryStage(context)
	local Stage = ScriptLib.GetGroupTempValue(context, "GalleryStage", {})

	ScriptLib.SetGroupGadgetStateByConfigId(context, GroupID, ShooterConfigID, 200+Stage)

	return 0
end

--自定义函数部分结束


--evt调用部分
function player_leave_optimizationRegion( context, evt )

	ScriptLib.PrintContextLog(context, "##BD LOG : optimization Stop~~~~~ regionID == "..evt.param1)

	if evt.param1 ~= bigRegion then
		return 0
	end

	--优化结束

	ScriptLib.PrintContextLog(context, "##BD LOG : optimization Stop!!!!!!!! uid == "..context.uid)

	ScriptLib.ClearPlayerEyePoint(context, smallRegion)
	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
	ScriptLib.SetLimitOptimization(context, context.uid, false)
	ScriptLib.SetGroupTempValue(context, "optimize_"..context.uid, 0, { group_id = 144002077})

	return 0
end

function player_in_optimizationRegion( context, evt )

	if evt.param1 ~= smallRegion then
		return 0
	end

	ScriptLib.PrintContextLog(context, "##BD LOG : optimization Start uid == "..context.uid)

	--优化部分
	ScriptLib.SetPlayerEyePoint(context, smallRegion, bigRegion)
	ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
	ScriptLib.SetLimitOptimization(context, context.uid, true)
	ScriptLib.SetGroupTempValue(context, "optimize_"..context.uid, 1, { group_id = 144002077})

	return 0
end


function action_group_will_unload( context, evt )
	--优化suite卸载

	local GalleryStage = ScriptLib.GetGroupTempValue(context, "GalleryStage",{})

	if GalleryStage == 0 then
		return 0
	end

	ScriptLib.PrintContextLog(context, "##BD LOG : GroupWillUnLoad gallerStage == "..GalleryStage)

	ScriptLib.PrintContextLog(context, "##BD LOG : GroupWillUnLoad gallerID == "..GalleryIDList[GalleryStage])

	ScriptLib.StopGallery(context, GalleryIDList[GalleryStage], false)

	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.REGION, bigRegion)

	return 0
end



function action_gadgetstate_change(context,evt )

	-- ScriptLib.PrintContextLog(context, "##BD LOG : GadgetState Change")
	-- if evt.param2 ~= TextEnterConfigID then
	-- 	return 0
	-- end

	-- if evt.param1 == 203 then
	-- 	ScriptLib.PrintContextLog(context, "##BD LOG : GadgetState Change GameStart")


	-- 	ScriptLib.StartGallery(context, GalleryID)
	-- elseif evt.param1 == 204 then

	-- 	local GalleryStage = ScriptLib.GetGroupTempValue(context, "GalleryStage",{})


	-- 	ScriptLib.StopGallery(context, GalleryIDList[GalleryStage], false)
	-- end

	return 0
	
end

function action_timeaxis_randombuff( context, evt )
	math.randomseed(ScriptLib.GetServerTime(context))

	local MaxNum = 0
	local CurBuffList = 0

	if ScriptLib.GetGroupTempValue(context, "GalleryStage", {})==1 then
		CurBuffList = BUffList
	elseif ScriptLib.GetGroupTempValue(context, "GalleryStage", {})==2 then
		CurBuffList = BUffList2
	else
		CurBuffList = BUffList3
	end

	for i,v in ipairs(CurBuffList) do
		MaxNum = MaxNum + v.buffWeight
	end

	local randomWeight = math.random(MaxNum)
	local CurBuffConfigID = 0

	for i,v in ipairs(CurBuffList) do
		if v.buffWeight >= randomWeight then
			CurBuffConfigID = v.buffConfigID
			break
		else
			randomWeight = randomWeight - v.buffWeight
		end
	end
	local regionPos = regions[BuffRegionID].pos
	local regionSize = regions[BuffRegionID].size

	ScriptLib.PrintContextLog(context, "##BD simple pos.x = "..regions[BuffRegionID].pos.x.." Size.x = "..regions[BuffRegionID].size.x)

	local pos_table = { x = math.random(math.ceil(regionPos.x - (regionSize.x/2)), math.ceil(regionPos.x + (regionSize.x/2))), 
					y = regionPos.y, 
					z = math.random(math.ceil(regionPos.z - (regionSize.z/2)), math.ceil(regionPos.z + (regionSize.z/2)))
				}

	ScriptLib.PrintContextLog(context, "##BD BUFF CONFIGID = "..CurBuffConfigID)

	ScriptLib.CreateGadgetByConfigIdByPos(context, CurBuffConfigID, pos_table, {x=0,y=0,z=0}) 

	return 0
end


function action_group_ready( context, evt )

	ScriptLib.PrintContextLog(context, "##BD LOG : Group Load")

	return 0
end


function action_whern_gallery_start(context, evt )
	local UidList = ScriptLib.GetSceneUidList(context)

	--加载岩创杀手
	ScriptLib.CreateGadget(context, { config_id = 5030 })

	ScriptLib.CreateGadget(context, { config_id = 5037 })

	ScriptLib.SetGroupTempValue(context, "GalleryID", evt.param1, {})

	--取出当前的阶段
	for i,v in ipairs(GalleryIDList) do
		if v == evt.param1 then
			ScriptLib.SetGroupTempValue(context, "GalleryStage", i, {})
			break
		end
	end

	--初始化冰冻、岩土计数

	for i,v in ipairs(UidList) do
		ScriptLib.SetGroupTempValue(context, "NoFrozenCount"..v, 0, {})
		ScriptLib.SetGroupTempValue(context, "NoDirtyCount"..v, 0, {})
		ScriptLib.AddExhibitionReplaceableData(context, v, "Activity_BD_NoFrozenCount"..ScriptLib.GetGroupTempValue(context, "GalleryID", {}), 0)
		ScriptLib.AddExhibitionReplaceableData(context, v, "Activity_BD_NoDirtyCount"..ScriptLib.GetGroupTempValue(context, "GalleryID", {}), 0)
	end

	--优化suite开启
	ScriptLib.AddExtraGroupSuite(context, GroupID, #suites)


	ScriptLib.SetGroupTempValue(context, "ShooterAlive", 1, {})

	ScriptLib.SetGroupTempValue(context, "GalleryOn", 1, {})

	
	math.randomseed(ScriptLib.GetServerTime(context))

	local GalleryStage = ScriptLib.GetGroupTempValue(context, "GalleryStage",{})

	if evt.param1 ~= GalleryIDList[GalleryStage] then
		return 0
	end

	ScriptLib.SetGroupTempValue(context, "StageCount", 1, {})

	ScriptLib.SetGroupTempValue(context, "FeverCount", 0, {})

	--初始化BUFF时间轴
	ScriptLib.InitTimeAxis(context, "randombuff", RandomBuffTimeAxis[math.random(#RandomBuffTimeAxis)], true)

	ScriptLib.SetGroupTempValue(context, "PlayerNum", #UidList, {})

	-- 创建一个发射器

	local GalleryStage = ScriptLib.GetGroupTempValue(context, "GalleryStage",{})

	if ScriptLib.GetGroupTempValue(context, "PlayerNum", {}) == 1 then

		ScriptLib.SetGroupTempValue(context, "RandomType", GetRandomType(context, NormalRandomList[GalleryStage], false),{})

		ScriptLib.SetGroupTempValue(context, "FeverRandomType", GetRandomType(context, FeverRandomList[GalleryStage], true),{})

	else

		ScriptLib.SetGroupTempValue(context, "RandomType", GetRandomType(context, NormalRandomList2[GalleryStage], false),{})

		ScriptLib.SetGroupTempValue(context, "FeverRandomType", GetRandomType(context, FeverRandomList2[GalleryStage], true),{})

	end

	
	--ScriptLib.CreateGadgetWithGlobalValue(context, ShooterConfigID, { ["SGV_BDShootType"]= RandomType})
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, ShooterConfigID, "SGV_BDShootType", ScriptLib.GetGroupTempValue(context, "RandomType",{}))
	SetGadgetStateByGalleryStage(context)

	-- 初始化一个多阶段玩法
	ScriptLib.InitSceneMultistagePlay(context, 1, MultistagePlayType.BounceConjuring, {}, UidList)

	ScriptLib.SetGroupTempValue(context, "ISFEVERSTAGE", 0, {})

	--启动一个8秒时间的等待阶段
	ScriptLib.StartSceneMultiStagePlayStage(context, 1, 8, Multistage.Idle, "WaitRound",{})

	return 0
end

function action_whern_gallery_stop( context,evt )

	ScriptLib.SetGroupTempValue(context, "GalleryOn", 0, {})

	local UidList = ScriptLib.GetSceneUidList(context)
	
	local FeverCount = ScriptLib.GetGroupTempValue(context, "FeverCount", {})



	--游戏时间结束
	if evt.param3 == 1 then

		ScriptLib.PrintContextLog(context, "##BD LOG : TimeoUT Stop")

		for i,v in ipairs(UidList) do

			if ScriptLib.GetGroupTempValue(context, "NoFrozenCount"..v, {}) == 0 then

				--设置每个玩家的冰冻球次数

				ScriptLib.PrintContextLog(context, "##BD LOG : TimeoUT SET FROZENNUM")

				ScriptLib.AddExhibitionReplaceableData(context, v, "Activity_BD_NoFrozenCount"..ScriptLib.GetGroupTempValue(context, "GalleryID", {}), 1 )
			end

			if ScriptLib.GetGroupTempValue(context, "NoDirtyCount"..v, {}) == 0 then

				--设置每个玩家的脏脏球次数
				ScriptLib.AddExhibitionReplaceableData(context, v, "Activity_BD_NoDirtyCount"..ScriptLib.GetGroupTempValue(context, "GalleryID", {}), 1 )
			end
			
		end
	end


	--移除岩创杀手
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.GADGET, 5030)

	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.GADGET, 5037)

	--移除多余的BUFF
	for i,v in ipairs(BUffList) do
		ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.GADGET, v.buffConfigID)
	end


	--优化suite卸载
	ScriptLib.RemoveEntityByConfigId(context, GroupID, EntityType.REGION, bigRegion)

	ScriptLib.EndSceneMultiStagePlay(context, 1, true)


	ScriptLib.EndTimeAxis(context, "randombuff")
	ScriptLib.EndTimeAxis(context, "shooterreborn")

	local UidList = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(UidList) do
		--设置本局Fever次数
		ScriptLib.AddExhibitionReplaceableData(context, v, "Activity_BD_FeverCount", FeverCount)
	end

	ScriptLib.RefreshGroup(context, { group_id = GroupID, suite = 1 })
	ScriptLib.SetEntityServerGlobalValueByConfigId(context, ShooterConfigID, "SGV_BDShootType", 0)

	-- if ScriptLib.GetGroupTempValue(context, "ShooterAlive", {})==1 then
	-- 	ScriptLib.SetEntityServerGlobalValueByConfigId(context, ShooterConfigID, "SGV_BDShootType", 0)
	-- 	ScriptLib.SetGroupGadgetStateByConfigId(context, GroupID, ShooterConfigID, 0)
	-- else
	-- 	ScriptLib.CreateGadgetWithGlobalValue(context, ShooterConfigID, { ["SGV_BDShootType"]= 0})
	-- end

	return 0
end


function action_multistage_start(context, evt )
	-- 阶段开始，设置gadgetSGV
	ScriptLib.PrintContextLog(context, "##BD LOG : MultiStage Start")

	local UidList = ScriptLib.GetSceneUidList(context)


	math.randomseed(ScriptLib.GetServerTime(context))

	local GalleryStage = ScriptLib.GetGroupTempValue(context, "GalleryStage",{})

	if evt.source_name == "NormalRound" then
		--从基础库里挑一个随机
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, ShooterConfigID, "SGV_BDShootType", ScriptLib.GetGroupTempValue(context, "RandomType",{}))

		ScriptLib.PrintContextLog(context, "##BD LOG : Nromal RandomType == "..ScriptLib.GetGroupTempValue(context, "RandomType",{}))
	elseif evt.source_name == "FeverRound" then


		--进入Fever次数翻牌子计数
		for i,v in ipairs(UidList) do
			ScriptLib.PrintContextLog(context, "##BD LOG : Feverount +1 for uid"..v)

			ScriptLib.AddExhibitionReplaceableData(context, v, "Activity_BD_FeverValue", 1)

		end

		--从Fever库里挑一个随机
		local UidList = ScriptLib.GetSceneUidList(context)

		for i,v in ipairs(UidList) do
			ScriptLib.PrintContextLog(context, "##BD LOG : updatePlayerScore  Fever ")
			ScriptLib.UpdatePlayerGalleryScore(context, GalleryIDList[GalleryStage], {["add_score"] = 0, ["add_destroyed_machine_count"] = 0, ["add_damage"] = 0,["add_normal_hit_count"] = 0,["add_perfect_hit_count"] = 0, ["add_fever_count"] = 1,["uid"] = v} )
		end

		ScriptLib.ChangeGroupTempValue(context, "FeverCount", 1, {})

		ScriptLib.SetEntityServerGlobalValueByConfigId(context, ShooterConfigID, "SGV_BDShootType", ScriptLib.GetGroupTempValue(context, "FeverRandomType",{}))

		ScriptLib.PrintContextLog(context, "##BD LOG : Fever RandomType == "..ScriptLib.GetGroupTempValue(context, "FeverRandomType",{}))
	end

	

	return 0
end


function action_multistage_end(context, evt )

	if ScriptLib.GetGroupTempValue(context, "GalleryOn", {}) ~= 1 then
		return 0
	end

	-- 结束一个阶段后开启下一个阶段
	if evt.source_name == "FeverRound" then
		ScriptLib.SetGroupTempValue(context, "ISFEVERSTAGE", 0, {})
	end

	if ScriptLib.GetGroupTempValue(context, "ISFEVERSTAGE", {})==0 then

		ScriptLib.PrintContextLog(context, "##BD LOG : Start Normal Round")
		ScriptLib.StartSceneMultiStagePlayStage(context, 1, 0, Multistage.Idle, "NormalRound",{})
	else
		ScriptLib.PrintContextLog(context, "##BD LOG : Start Fever Round")
		ScriptLib.StartSceneMultiStagePlayStage(context, 1, 0, Multistage.Idle, "FeverRound",{})
	end
	return 0
end


function action_whern_shooter_die(context, evt )	
	if evt.param1 ~= ShooterConfigID then
		return 0
	end

	ScriptLib.SetGroupTempValue(context, "ShooterAlive", 0, {})

	local UidList = ScriptLib.GetSceneUidList(context)
	local GalleryStage = ScriptLib.GetGroupTempValue(context, "GalleryStage",{})

	for i,v in ipairs(UidList) do
		ScriptLib.PrintContextLog(context, "##BD LOG : add_destroyed_machine_count")

		ScriptLib.AddExhibitionAccumulableData(context, v, "Activity_BD_ShooterDieCount", 1)

		ScriptLib.UpdatePlayerGalleryScore(context, GalleryIDList[GalleryStage], {["add_score"] = 0, ["add_destroyed_machine_count"] = 1, ["add_damage"] = 0,["add_normal_hit_count"] = 0,["add_perfect_hit_count"] = 0, ["add_fever_count"] = 0,["uid"] = v} )
	end

	ScriptLib.PrintContextLog(context, "##BD LOG : ShooterDie Uid == "..UidList[1])

	ScriptLib.UpdatePlayerGalleryScore(context, GalleryIDList[GalleryStage], {["add_score"] = PerShooterScore, ["add_destroyed_machine_count"] = 0, ["add_damage"] = 0,["add_normal_hit_count"] = 0,["add_perfect_hit_count"] = 0, ["add_fever_count"] = 0, ["uid"] = UidList[1] } )

	ScriptLib.ChangeGroupTempValue(context, "StageCount", 1, {})

	ScriptLib.PrintContextLog(context, "##BD LOG : Shooter Die  Stage Change")

	-- 前一个gadget被打死，立刻切阶段
	if ScriptLib.GetGroupTempValue(context, "ISFEVERSTAGE", {})==0 then
		ScriptLib.EndSceneMultiStagePlayStage(context, 1, "NormalRound", true)
	else
		ScriptLib.EndSceneMultiStagePlayStage(context, 1, "FeverRound", true)

		--Fever期间内装置摧毁翻牌子计数
		for i,v in ipairs(UidList) do
			ScriptLib.PrintContextLog(context, "##BD LOG : FeverShooterDieCount +1 for uid"..v)

			ScriptLib.AddExhibitionReplaceableData(context, v, "Activity_BD_FeverDestroy", 1)

		end
	end
	-- 延时创建一个新的发射器
	ScriptLib.CreateGroupTimerEvent(context, GroupID, "shooterreborn", 1.5)

	return 0
end

function action_timer_shooterreborn(context, evt)

	ScriptLib.SetGroupTempValue(context, "ShooterAlive", 1, {})


	local GalleryStage = ScriptLib.GetGroupTempValue(context, "GalleryStage",{})

	if ScriptLib.GetGroupTempValue(context, "PlayerNum", {}) == 1 then

		ScriptLib.SetGroupTempValue(context, "RandomType", GetRandomType(context, NormalRandomList[GalleryStage], false),{})

		ScriptLib.SetGroupTempValue(context, "FeverRandomType", GetRandomType(context, FeverRandomList[GalleryStage], true),{})

	else

		ScriptLib.SetGroupTempValue(context, "RandomType", GetRandomType(context, NormalRandomList2[GalleryStage], false),{})

		ScriptLib.SetGroupTempValue(context, "FeverRandomType", GetRandomType(context, FeverRandomList2[GalleryStage], true),{})

	end


	if ScriptLib.GetGroupTempValue(context, "GalleryOn", {}) == 1 then

		ScriptLib.PrintContextLog(context, "##BD LOG : Die Change RandomType == "..ScriptLib.GetGroupTempValue(context, "RandomType",{}))

		ScriptLib.CreateGadgetWithGlobalValue(context, ShooterConfigID, { ["SGV_BDShootType"]= ScriptLib.GetGroupTempValue(context, "RandomType",{})})
		SetGadgetStateByGalleryStage(context)

	else
		ScriptLib.PrintContextLog(context, "##BD LOG : Die Change RandomType But GalleryStop")

		ScriptLib.CreateGadgetWithGlobalValue(context, ShooterConfigID, { ["SGV_BDShootType"]= 0 })

	end

	

	return 0
end

function LF_Initialize_Group(triggers, suites)
	for k,v in pairs(extrTriggers.initialtrigger) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end

	for i,v in ipairs(extrSuites) do
		table.insert(suites, v)
	end

	return 0
end

LF_Initialize_Group(triggers, suites)