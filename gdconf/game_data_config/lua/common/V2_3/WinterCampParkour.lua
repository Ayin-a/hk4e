--- ServerUploadTool Save to [/root/env/data/lua/common/V2_3]  ---
--[[
	2.3雪山活动 铁人三项跑酷
	
	单Group版
]]

--[[

local defs = {

	gallery_id = ,

	group_id = ,

	--开启机关交互后，加载哪个/些suit
	load_on_start = {2},
	--开启机关的configID，SelectOption为175
	starter_gadget = 0,
	--全程终点region的ConfigID
	end_region = 0,

	--玩法RegionID，进入此圈开启性能优化，在suit1
	optimiz_region = {},

	--全程终点在哪个suit,如果这个group非终点，则配0
	ending_suit = 0,
	--挑战限时秒
	challenge_time = 300,

	--金币和冰柱的对应关系
	--[冰柱config_id]={金币config_id1,金币config_id2...}
	coin_ice = { 
		[108010] = {108015,108023},
		[108011] = {108017,108024},
		[108012] = {108019,108025},
	},
	--镜头注目
	look_pos = {x=555, y=555, z=555},
	duration = 2,
}

]]
local triggers_start={
	--测试用
	--[[{ config_id = 8000000, name = "Test_GM",  event = EventType.EVENT_VARIABLE_CHANGE, source = "testGM", condition = "", action = "", trigger_count = 0, tag = "100"},
	{ config_id = 80000010, name = "Challenge_SuccessTest", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "",condition = "",action = "action_challenge_success",trigger_count= 0},]]

  { config_id = 8000001, name = "Select_Option", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "", action = "action_select_option", trigger_count = 0 },
  { config_id = 8000002, name = "Challenge_Fail",  event = EventType.EVENT_CHALLENGE_FAIL, source = "",condition = "",action = "action_challenge_fail",trigger_count= 0},
  { config_id = 8000003, name = "Coin_Get",  event = EventType.EVENT_VARIABLE_CHANGE, source = "coin_counter", condition = "", action = "", trigger_count = 0, tag = "888"},
  { config_id = 8000004, name = "Spec_Coin_Get",  event = EventType.EVENT_VARIABLE_CHANGE, source = "spec_coin_counter", condition = "", action = "", trigger_count = 0, tag = "999"},
  	--玩法RegionID，进入此圈开启性能优化，放在load_on_start第一个suit里
	{ config_id = 8000005, name = "Enter_Optimiz_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_OptimizRegion", trigger_count = 0 },
  { config_id = 8000006, name = "Leave_Optimiz_Region",  event = EventType.EVENT_LEAVE_REGION, source = "",condition = "",action = "action_leave_OptimizRegion",trigger_count= 0},
  { config_id = 8000007, name = "Group_Will_Unload", event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0},
  { config_id = 8000008, name = "Enter_Tutorial_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_TutorialRegion", trigger_count = 0},
}
--[[local triggers_optimiz = {

}]]
local triggers_end={
 	--终点的trigger单独拿出来，以备同一赛道需要多个Group
  { config_id = 8100001, name = "Enter_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_enter_final", action = "", trigger_count = 0, tag = "666" },
  { config_id = 8100002, name = "Challenge_Success", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "",condition = "",action = "action_challenge_success",trigger_count= 0}
}
	

function LF_Initialize_Group(triggers, suites)
	--起点用触发器
	for k,v in pairs(triggers_start) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end

	--[[--性能优化圈用触发器
	for k,v in pairs(triggers_optimiz) do
		table.insert(triggers, v)
		table.insert(suites[defs.optimiz_suit].triggers, v.name)
	end]]

	--全程结尾触发器 终点的trigger单独拿出来，以备同一赛道需要多个Group
	for k,v in pairs(triggers_end) do
		table.insert(triggers, v)
		table.insert(suites[defs.ending_suit].triggers, v.name)
	end

	table.insert(variables,{ config_id=50000001,name = "coin_counter", value = 0})
	table.insert(variables,{ config_id=50000002,name = "spec_coin_counter", value = 0})

	return 0
end

function action_enter_TutorialRegion(context, evt)

	if defs.guide_regionID == nil then 
		return 0
	elseif evt.param1 == defs.guide_regionID then 
		LF_Try_StartTutorial(context)
	end
	return 0
end

function LF_Try_StartTutorial(context)

    local UidList = ScriptLib.GetSceneUidList(context)
    local ownerUid = UidList[1]
    local havePlayed  = ScriptLib.GetExhibitionAccumulableData(context, ownerUid, 10901102)

    if 0 == havePlayed then
        ScriptLib.ShowClientTutorial(context, 834, {ownerUid})
        ScriptLib.AddExhibitionAccumulableData(context,ownerUid, "WinterCamp_Parkour_HavePlayed", 1)
    end

    return 0
end

--统计纹章。0普通 1限时
function SLC_WinterCampCoinGet(context,param1)

	ScriptLib.PrintContextLog(context, "[WinterCamp] Got SLC_WinterCampCoinGet. param@"..param1 )

	if param1 == 0 then 
		--触发挑战Trigger
		ScriptLib.ChangeGroupVariableValue(context, "coin_counter", 1)
	elseif param1 == 1 then 
		--触发挑战Trigger
		ScriptLib.ChangeGroupVariableValue(context, "spec_coin_counter", 1)
	end
	--["pick_up"]， 0普通金币 1限时币 2大跳 3盾 4体力
	ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["pick_up"] = param1})

	return 0
end

--机关开启处理
function action_select_option(context, evt)
	--检查SelectOption
	if defs.starter_gadget ~= evt.param1 or 175 ~= evt.param2 then
		return -1	
	end
	--检查是否单机
	if true == ScriptLib.CheckIsInMpMode(context) then
		--local starter_entity = ScriptLib.GetEntityIdByConfigId(context, defs.starter_gadget)
		--local center = ScriptLib.GetPosByEntityId(context, starter_entity)--这个接口取到的小数位数太多 没法直接用
		for k,v in pairs(gadgets) do
			if k == defs.starter_gadget then
				center = v.pos
				break
			end
		end
		ScriptLib.ShowReminderRadius(context, 400053, center, 2) 
		return -1
	end
	--LD用多个Region覆盖赛道范围，这个变量用于判断是否出圈
	ScriptLib.SetGroupTempValue(context, "is_in_region", 0, {})

	--切操作台状态
	ScriptLib.SetGadgetStateByConfigId(context, defs.starter_gadget, GadgetState.GearStart) 
	--去掉操作台SelectOption
	ScriptLib.DelWorktopOptionByGroupId(context, defs.group_id, defs.starter_gadget, 175) 

	--加载第一波suit
	for k,v in pairs(defs.load_on_start) do
		ScriptLib.AddExtraGroupSuite(context, defs.group_id, v)
	end


	--环境小动物关闭
	ScriptLib.SwitchSceneEnvAnimal(context, 0)

	--VisionType 龙血古树赛道不屏蔽3 神像赛道不屏蔽5
	if defs.group_id == 133008671 then 
		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0,3})
	elseif defs.group_id == 133008673 then 
		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0,5})
	else
		ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {0})
	end
	ScriptLib.ForbidPlayerRegionVision(context, context.uid)

	--起Gallery
	ScriptLib.StartGallery(context, defs.gallery_id)

	InitChallenge(context)
	--镜头注目
	CameraAction(context)
	--关闭其他营地黄圈
	LF_Close_OtherHintCircle(context)

	return 0

end

function InitChallenge(context)

	--设置标记
	ScriptLib.SetGroupTempValue(context, "challenge_state", 1, {})

	--ScriptLib.PrintContextLog(context, "[WinterCamp] Gallery Started. gallery_id@"..evt.param1)
	--起挑战 
	ScriptLib.CreateFatherChallenge(context, 1, defs.father_challenge, defs.challenge_time, {success = 10, fail = 5})
	--先开，再attach，给子挑战保序
	ScriptLib.StartFatherChallenge(context,1)
	ScriptLib.AttachChildChallenge(context,1, 2003003, 2003003,{4, 666,1,1},{},{success = 10,fail = 5}) --限时到达	
	ScriptLib.AttachChildChallenge(context, 1, 2003004, 2003004,{3, 888,999},{},{success = 0,fail = 0}) --收集普通纹章
	ScriptLib.AttachChildChallenge(context, 1, 2003005, 2003005,{3, 999,999},{},{success = 0,fail = 0}) --收集限时纹章

	--ScriptLib.AttachChildChallenge(context, 2003002, 99999, 2003004,{3, 100,1,1},{},{success = 10,fail = 0}) -- 测试结算


	return 0
end

function action_challenge_success(context,evt)
	if evt.param1 ~= defs.father_challenge then
		return -1
	end
	ScriptLib.SetGroupTempValue(context, "challenge_state", 0, {})

	--终点kill特效
	ScriptLib.KillEntityByConfigId(context, { group_id = defs.group_id, config_id = defs.end_gadget, entity_type = EntityType.GADGET })

	for i = 2, (#suites-1) do
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, i)
	end

	--环境小动物恢复
	ScriptLib.SwitchSceneEnvAnimal(context, 2)
	--ScriptLib.SetPlayerGroupVisionType(context, {context.uid}, {1})
	LF_RevertVisionType(context)

	ScriptLib.SetGadgetStateByConfigId(context, defs.starter_gadget, GadgetState.Default)

	--设置操作台选项
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.starter_gadget, {175})
	ScriptLib.RefreshGroup(context, { group_id = defs.group_id, suite = 1 })

	--重置变量
	ScriptLib.SetGroupVariableValue(context, "spec_coin_counter", 0)
	ScriptLib.SetGroupVariableValue(context, "coin_counter", 0)

	--恢复其他营地黄圈
	LF_Open_OtherHintCircle(context)

	--停Gallery
	--StopGalleryByReason 0-NONE 1-超时 2-客户端中断 3-lua设置成功 4-lua设置失败
	--ScriptLib.StopGallery(context, defs.gallery_id, false)
	ScriptLib.StopGalleryByReason(context, defs.gallery_id, 3)
	return 0
end

function action_challenge_fail(context, evt)
	
	--evt.param2剩余时间
	if evt.param2 <= 0 then 
		LF_FailChallenge(context,1)
	else
		LF_FailChallenge(context,2)
	end
	
	return 0
end

function LF_FailChallenge(context,reason)
	ScriptLib.SetGroupTempValue(context, "challenge_state", 0, {})

	-- 设置操作台选项
	ScriptLib.SetWorktopOptionsByGroupId(context, defs.group_id, defs.starter_gadget, {175})
	
	for i = 2, #suites do
	    ScriptLib.RemoveExtraGroupSuite(context, defs.group_id, i)
	end

	--环境小动物恢复
	ScriptLib.SwitchSceneEnvAnimal(context, 2)
	--ScriptLib.AddPlayerGroupVisionType(context, {context.uid}, {1})
	LF_RevertVisionType(context)

	ScriptLib.SetGadgetStateByConfigId(context, defs.starter_gadget, GadgetState.Default)

	--重置变量
	ScriptLib.SetGroupVariableValue(context, "spec_coin_counter", 0)
	ScriptLib.SetGroupVariableValue(context, "coin_counter", 0)

	--停Gallery
	--ScriptLib.StopGallery(context, defs.gallery_id, true)
	--StopGalleryByReason 0-NONE 1-超时 2-客户端中断 3-lua设置成功 4-lua设置失败
	ScriptLib.StopGalleryByReason(context, defs.gallery_id, reason)

	ScriptLib.RefreshGroup(context, { group_id = defs.group_id, suite = 1 })
	--恢复其他营地黄圈
	LF_Open_OtherHintCircle(context)

	return 0
end

--跑酷期间，关闭其他两种活动营地的黄圈
--group bundle没在不会报错，返回0 ，活动没开有warnin
function LF_Close_OtherHintCircle(context)

    local explore_id = ScriptLib.WinterCampGetExploreGroupBundleId(context)
    if explore_id ~= 0 then
    	ScriptLib.DeactivateGroupLinkBundleByBundleId(context, explore_id)
	end

  	local battle_id = ScriptLib.WinterCampGetBattleGroupBundleId(context)
  	if battle_id ~= 0 then
  	  	ScriptLib.DeactivateGroupLinkBundleByBundleId(context, battle_id) 
  	end
  	ScriptLib.PrintContextLog(context, "[WinterCampParkour] Close Other HintCircle. explore_id@"..explore_id.." battle_id@"..battle_id)
    return 0
end
--跑酷结束，恢复其他两种活动营地的黄圈
function LF_Open_OtherHintCircle(context)

    local explore_id = ScriptLib.WinterCampGetExploreGroupBundleId(context)
    if explore_id ~= 0 then
   		ScriptLib.ActivateGroupLinkBundleByBundleId(context, explore_id)
    end

  	local battle_id = ScriptLib.WinterCampGetBattleGroupBundleId(context)
  	if battle_id ~= 0 then
  		ScriptLib.ActivateGroupLinkBundleByBundleId(context, battle_id)
  	end
  	ScriptLib.PrintContextLog(context, "[WinterCampParkour] Open Other HintCircle. explore_id@"..explore_id.." battle_id@"..battle_id)
    return 0
end
--含金币冰柱破碎，通知对应的金币gadget切状态
function SLC_SpecialIcePillarBreak(context)

	local cfg_id = ScriptLib.GetGadgetConfigId(context, {gadget_eid = context.source_entity_id})

	ScriptLib.PrintContextLog(context, "[WinterCampParkour] Break Special IcePillar. cfg_id@"..cfg_id)

	for k,v in pairs(defs.coin_ice) do 
		if k == cfg_id then 
			ChangeCoinState(context,v)
			return 0
		end
	end

	ScriptLib.PrintContextLog(context, "[WinterCamp] #WARN# Break an Special IcePillar with No Coins! Check defs.")
	return -1
end

--将table中的金币设为可吃状态
function ChangeCoinState(context, coin_table)
	for k,v in pairs(coin_table) do
		ScriptLib.SetGadgetStateByConfigId(context, v, 0)
	end
	return 0
end

--上报获得buff球
function SLC_ReportBuffGet(context, param1)
	--["pick_up"]， 0普通金币 1限时币 2大跳 3盾 4体力
	--ScriptLib.PrintContextLog(context, "[WinterCamp] Got SLC_ReportBuffGet. param@"..param1 )
	ScriptLib.UpdatePlayerGalleryScore(context, defs.gallery_id, {["pick_up"] = param1})
	return 0
end

function action_enter_OptimizRegion(context,evt)
	--检查Region的configId是否是优化圈
	if CheckIsInTable(context,evt.param1,defs.optimiz_region) then

		ScriptLib.ChangeGroupTempValue(context, "is_in_region", 1, {})

		if ScriptLib.GetGroupTempValue(context, "challenge_state", {}) == 1 then
			--ScriptLib.SetPlayerEyePointStream(context, evt.param1, evt.param1, false)
			ScriptLib.PrintContextLog(context, "[WinterCamp] Enter optimiz_region. Region_config_id@"..evt.param1 )
		end
	end

	return 0
end

function action_leave_OptimizRegion(context,evt)

	--检查Region的configId是否是优化圈
	if CheckIsInTable(context,evt.param1,defs.optimiz_region) then

		ScriptLib.ChangeGroupTempValue(context, "is_in_region", -1, {})

		if ScriptLib.GetGroupTempValue(context, "challenge_state", {}) ~= 1 then
			return 0
		end

		--ScriptLib.ClearPlayerEyePoint(context, evt.param1)	

		--如果完全出圈了，触发挑战失败
		local is_in_region = ScriptLib.GetGroupTempValue(context, "is_in_region", {})
		ScriptLib.PrintContextLog(context, "[WinterCamp] Leave optimiz_region. Region_config_id@"..evt.param1.." is_in_region@"..is_in_region)
		if is_in_region <= 0 then 
			LF_FailChallenge(context,2)
		end				
	end
	return 0
end
--终点检查
function condition_enter_final(context, evt)
	if evt.param1 ~= defs.end_region then 
		return false
	end
	return true
end

--卸载保护
function action_group_will_unload(context,evt)

	--停Gallery
	--ScriptLib.StopGallery(context, defs.gallery_id, true)
	--StopGalleryByReason 0-NONE 1-超时 2-客户端中断 3-lua设置成功 4-lua设置失败
	--[[[ScriptLib.StopGalleryByReason(context, defs.gallery_id, 4)

	for k,v in pairs(defs.optimiz_region) do
		ScriptLib.RemoveEntityByConfigId(context, defs.group_id, EntityType.REGION, v)
	end]]

	--环境小动物恢复
	ScriptLib.SwitchSceneEnvAnimal(context, 2)
	--VisionType恢复
	 LF_RevertVisionType(context)

	return 0
end

function LF_RevertVisionType(context)
	local uidList = ScriptLib.GetSceneUidList(context)
	for k,v in pairs(uidList) do
		ScriptLib.RevertPlayerRegionVision(context, v)
	end
	return 0
end

function CameraAction(context)

	if defs.look_pos and defs.duration then 

		--触发镜头注目，强制注目形式，不广播其他玩家
		local pos_follow = {x=0, y=0, z=0}
		ScriptLib.BeginCameraSceneLook(context, { look_pos = defs.look_pos, is_allow_input = false, duration = defs.duration, is_force = true, is_broadcast = false, is_recover_keep_current = true, delay = 0,
	                                            is_set_follow_pos = false, follow_pos = pos_follow, is_force_walk = false, is_change_play_mode = false,
	                                            is_set_screen_XY = false, screen_x = 0, screen_y = 0 })
		return 0
	else
		ScriptLib.PrintContextLog(context, "[WinterCamp] #WARN# Camera action config is nil, Please Check defs.")
	end
	return 0
end
--用于检查value是否在目标table中
function CheckIsInTable(context,value,check_table)

	for i = 1,#check_table do
		if check_table[i] == value then
			return true
		end
	end
	return false
end

LF_Initialize_Group(triggers, suites)