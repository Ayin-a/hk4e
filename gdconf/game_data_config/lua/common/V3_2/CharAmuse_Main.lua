--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	CharAmuse_Main
||	owner: 		weiwei.sun
||	description: 	3.2奇趣秘园 主流程
||	LogName:	## [CharAmuse_Main]
||	Protection:	
=======================================]]
--[[

local defs = {
	--每个房间传送点坐标列表,key为GalleryID
	transpoint_list = 
	{
        --玩法1
        [6001] = {
                [1] = {pos = {x = 224.4635, y = 21.55999, z = 17.19053}, rot = {x = 0, y = 180, z = 0}},
                [2] = {pos = {x = 224.4635, y = 21.55999, z = 19.95908}, rot = {x = 0, y = 180, z = 0}},
                [3] = {pos = {x = 227.272, y = 21.55999, z = 18.4593}, rot = {x = 0, y = 180, z = 0}},
                [4] = {pos = {x = 221.5798, y = 21.55999, z = 18.4593}, rot = {x = 0, y = 180, z = 0}}
        },

	}

	--每个小活动关卡Group列表
	group_list = 
	{
        --玩法1
        [6001] = 235800006,
	}

}

]]

local cfg = {
	--multistage数量
	total_stage = 3,
	--完成wait阶段传送玩家,等待传送完成的延时
	trans_delay = 8,
	--IdleStgae等待时间
	idle_delay = 12,
	--等待Preview界面先弹出后再换人
	switchteam_delay = 2,

	--需要提前取到GalleryID以创建布设的Group
	groups_need_gallery = 
	{
		[251008011] = {28009, 28010}
	},
	--战斗关
	battle_gallery = 
	{
		28013,28014,28015,28016,28017,28018
	},
		--战斗关
	pillar_gallery = 
	{
		28003,28004
	}

}
local extraTriggers = {
	{ config_id = 8000001, name = "Group_Load_Main", event= EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load_Main", trigger_count = 0 },
	{ config_id = 8000002, name = "MultiStage_End", event= EventType.EVENT_SCENE_MULTISTAGE_PLAY_STAGE_END, source = "", condition = "", action = "action_MultiStage_End", trigger_count = 0 },
	{ config_id = 8000003, name = "MPMode_All_PlayerEnter", event = EventType.EVENT_CHAR_AMUSEMENT_DUNGEON_ALL_PLAYER_ENTER, source = "", condition = "", action = "action_MPMode_All_PlayerEnter", trigger_count = 0},
	{ config_id = 8000004, name = "Dungeon_Settle", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "", action = "action_Dungeon_Settle", trigger_count = 0},
	{ config_id = 8000005, name = "Trans_Delay", event = EventType.EVENT_TIME_AXIS_PASS, source = "trans_delay", condition = "", action = "action_Trans_Delay", trigger_count = 0},
	{ config_id = 8000006, name = "SwitchTeam_Delay", event = EventType.EVENT_TIME_AXIS_PASS, source = "switchteam_delay", condition = "", action = "action_SwitchTeam_Delay", trigger_count = 0},
	{ config_id = 8000007, name = "All_Avator_Die", event = EventType.EVENT_DUNGEON_ALL_AVATAR_DIE, source = "", condition = "", action = "action_All_Avator_Die", trigger_count = 0},
	{ config_id = 8000008, name = "Enter_Scene_Trans", event = EventType.EVENT_TIME_AXIS_PASS, source = "enterscene_delay", condition = "", action = "action_Enter_Scene_Trans", trigger_count = 0},
}

function LF_Initialize()
	for k,v in pairs(extraTriggers) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
end

function action_Group_Load_Main(context, evt)

	--当前关卡index 有几个Gallery stage_index就到几
	ScriptLib.SetGroupTempValue(context, "stage_index", 1, {})

	--序号 每End一个Stage，++，校验用 用于防止意外客户端AbilitySLC重复EndStage
	ScriptLib.SetGroupTempValue(context, "stage_num", 1, {})

	--初始化Multistage
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.InitSceneMultistagePlay(context, 1, MultistagePlayType.CharAmusement, { gallery_stage_count = cfg.total_stage }, uid_list)

	--获取gallery_id列表，存为tempValue
	local play_gallery_list = ScriptLib.GetCharAmusementMultistagePlayGalleryIdVec(context, base_info.group_id, 1)
	if nil == play_gallery_list or 0 == #play_gallery_list then
		ScriptLib.PrintGroupWarning(context,"## [CharAmuse_Main] Get multi stage gallery id list failed.")
		return 0
	end

	ScriptLib.PrintContextLog(context,"## [CharAmuse_Main] Get multi stage gallery id. vec@".. table.concat( play_gallery_list, ", "))

	--处理需要提前通知玩法Group的内容
	LF_SendGalleryIDVec_ToPlayGroup(context, play_gallery_list)

	ScriptLib.SetGroupTempValue(context, "gallery_num", #play_gallery_list, {})

	for i=1,#play_gallery_list do
		ScriptLib.SetGroupTempValue(context, "gallery_"..i, play_gallery_list[i], {})
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] Get gallery list. gallery_" .. i .. "@".. play_gallery_list[i])
	end

	--进入MultiStage阶段 - 关卡展示界面
	LF_StartWaitStage(context, 1)

	ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] Main group loaded.")

	return 0
end

function action_Dungeon_Settle(context, evt)
	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})
	local cur_gallery = ScriptLib.GetGroupTempValue(context, "gallery_"..stage_index, {})
	ScriptLib.StopGallery(context, cur_gallery, true)
	ScriptLib.EndSceneMultiStagePlay(context, 1, false)
	ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] Dungeon settled.")
	return 0
end

--联机 通过Event判断玩家全部入场
function action_MPMode_All_PlayerEnter(context, evt)
	local has_transed = ScriptLib.GetGroupTempValue(context, "has_transed", {})
	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})
	 if 1 == stage_index and 1 ~= has_transed then
	 	ScriptLib.SetGroupTempValue(context, "has_transed", 1, {})
		--LF_TranAllPlayerToGalleryPos(context, stage_index) --需要确保客户端Wait界面已经开启，所以首次进场时晚一点传送
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] Trans player on first round. Start timeaxis enterscene_delay。")	
		ScriptLib.InitTimeAxis(context, "enterscene_delay", { 2 }, false)	
	end
	ScriptLib.InitTimeAxis(context, "trans_delay", { cfg.trans_delay }, false)
	ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] All player enter. Init time axis trans_delay.")
	return 0
end

--SLC入场传送 目的是用于重连时处理被打断传送的玩家。但进场都会调用，在EX_DoReTransCheck_Single用IsPlayerTransmittable过滤
function SLC_CharAmuseMain_PlayerEnter(context)
	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})
	if -1 == stage_index then
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] Get level entity ability onstart. Got stage_index failed.")
		return 0
	end
	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_"..stage_index, {})
	if nil == defs.group_list[gallery_id] then
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] Get level entity ability onstart. Got unexpected gallery_id@"..gallery_id)
		return 0
	end
	if nil == context.uid then
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] Get level entity ability onstart. SLC_CharAmuseMain_PlayerEnter context.uid is nil.")
		return 0
	end
	ScriptLib.ExecuteGroupLua(context, defs.group_list[gallery_id], "EX_DoReTransCheck_Single", {context.uid})
        ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] Get level entity ability onstart. Execute EX_DoReTransCheck. uid@"..context.uid)
	return 0
end

function action_All_Avator_Die(context, evt)
	-- 所有玩家死亡
	local uid_list = ScriptLib.GetSceneUidList(context)

	for i,v in ipairs(uid_list) do
		if ScriptLib.IsPlayerAllAvatarDie(context, v) == false then
			return 0
		end
	end
	ScriptLib.CauseDungeonFail(context)
	--multistage gallery 在DungeonSettle关闭
	return 0
end

function action_Enter_Scene_Trans(context, evt)
	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})
	LF_TranAllPlayerToGalleryPos(context, stage_index)
	return 0
end

function action_Trans_Delay(context, evt)
	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})
	local stage_num = ScriptLib.GetGroupTempValue(context, "stage_num", {})
	--1,4,7是Preview
	if 1 == stage_num or 4 == stage_num or 7 == stage_num then
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] Trans delay time axis passed. End waitStage@".."WaitStage_"..stage_index)
		ScriptLib.EndSceneMultiStagePlayStage(context, 1, "WaitStage_"..stage_index, true)
	end
	return 0
end

function action_SwitchTeam_Delay(context, evt)
	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})
	ScriptLib.CharAmusementMultistagePlaySwitchTeam(context, base_info.group_id, 1, stage_index)
	LF_TranAllPlayerToGalleryPos(context, stage_index)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_"..stage_index, {})
	--特殊处理1：如果接下来是战斗关，则移除打桩关的suite布设
	if LF_CheckIsInTable(context, gallery_id, cfg.battle_gallery) then
		ScriptLib.ExecuteGroupLua(context, 251008012, "EX_ClearPillarSuite", { })
		return 0
	end
	--特殊处理2：如果接下来是打桩关，则添加打桩关的suite布设
	if LF_CheckIsInTable(context, gallery_id, cfg.pillar_gallery) then
		ScriptLib.ExecuteGroupLua(context, 251008012, "EX_SetPillarSuite", { })
		return 0
	end

	return 0
end

--任意MultiStageEnd，根据stage_index做对应处理
--evt.source_name: 阶段名 evt.param3: 1成功 0失败
function action_MultiStage_End(context, evt)

	--玩到第几关了
	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})
	--End的是哪一种Stage
	local name = string.sub(evt.source_name, 1, 9)

	ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] MultiStage_End. stage_index@"..stage_index.." source_name@"..evt.source_name.. " evt.param3@".. evt.param3)	
	--失败
	if 0 == evt.param3 then
		if "PlayStage" == name then
			ScriptLib.EndSceneMultiStagePlay(context, 1, false)
		end
		return 0
	end
	--成功
	ScriptLib.ChangeGroupTempValue(context, "stage_num", 1, {})
	--换人与传送 WaitStage_x -> 倒计时 IdleStage_x -> 开始 PlayStage_x
	if "WaitStage" == name then	

		ScriptLib.EndTimeAxis(context, "trans_delay")
		--如果首轮传送在WaitStage结束后还没有执行，则在此时传送
		local has_transed = ScriptLib.GetGroupTempValue(context, "has_transed", {})
		if 1 ~= has_transed then
			ScriptLib.SetGroupTempValue(context, "has_transed", 1, {})
			LF_TranAllPlayerToGalleryPos(context, stage_index)
		end

		LF_StartIdleStage(context, stage_index)

	elseif "IdleStage" == name then
	
		LF_StartPlayStage(context, stage_index)

	elseif "PlayStage" == name then
		
		ScriptLib.ChangeGroupTempValue(context, "stage_index", 1, {})
		if true == LF_IsAllStageFinish(context) then
			ScriptLib.EndSceneMultiStagePlay(context, 1, true)
		else
			stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})
			LF_StartWaitStage(context, stage_index)
		end
	end

	return 0
end

--换人与传送阶段 先进阶段让客户端开界面 然后延迟两秒换人
function LF_StartWaitStage(context, stage_index)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_"..stage_index, {})
	
	--开启阶段
	ScriptLib.StartSceneMultiStagePlayStage(context, 1, 40, Multistage.CharAmusementPreview, "WaitStage_"..stage_index, { preview_stage_index = stage_index, preview_display_duration = 40})
	if 1 < stage_index then		
		ScriptLib.InitTimeAxis(context, "switchteam_delay", {cfg.switchteam_delay}, false)
	else
		--特殊处理1：如果接下来是战斗关，则移除打桩关的suite布设
		if LF_CheckIsInTable(context, gallery_id, cfg.battle_gallery) then
			ScriptLib.ExecuteGroupLua(context, 251008012, "EX_ClearPillarSuite", { })
		elseif LF_CheckIsInTable(context, gallery_id, cfg.pillar_gallery) then
		--特殊处理2：如果接下来是打桩关，则添加打桩关的suite布设
			ScriptLib.ExecuteGroupLua(context, 251008012, "EX_SetPillarSuite", { })
		end

	end
	ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] LF_StartWaitStage. stage_index@"..stage_index)

	--开启下一玩法的空气墙
	ScriptLib.SetGroupVariableValueByGroup(context, "air_wall", 1, defs.group_list[gallery_id])

	return 0
end

--倒计时阶段
function LF_StartIdleStage(context, stage_index)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_"..stage_index, {})
	--进行一次超界检测
	ScriptLib.ExecuteGroupLua(context, defs.group_list[gallery_id], "EX_DoReTransCheck", {})

	--开启阶段
	ScriptLib.StartSceneMultiStagePlayStage(context, 1, cfg.idle_delay, Multistage.Idle, "IdleStage_"..stage_index,{})
	ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] LF_StartIdleStage. stage_index@"..stage_index)

	return 0
end
--开启玩法阶段 通知对应GroupId
function LF_StartPlayStage(context, stage_index)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_"..stage_index, {})
	local is_last_level = 0
	if stage_index >= ScriptLib.GetGroupTempValue(context, "gallery_num", {}) then
		is_last_level = 1
	end

	if nil == defs.group_list[gallery_id] then
		ScriptLib.PrintGroupWarning(context,"## [CharAmuse_Main] LF_StartPlayStage: gallery_id@"..gallery_id.." is not in group_list. Check defs.")
		return 0
	end

	--开启对应阶段
	ScriptLib.StartSceneMultiStagePlayStage(context, 1, 0, Multistage.CharAmusementGallery, "PlayStage_"..stage_index, { gallery_stage_index = stage_index })

	--开启对应的玩法
	ScriptLib.ExecuteGroupLua(context, defs.group_list[gallery_id], "EX_StartGallery", {gallery_id, is_last_level})

	--开启超界检测
	ScriptLib.ExecuteGroupLua(context, defs.group_list[gallery_id], "EX_StartReTransCheck", {})

	--激活复活点
	LF_Set_Revive_Point(context, gallery_id)

	ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] LF_StartPlayStage. stage_index@"..stage_index.. " gallery_id@"..gallery_id .. " play_group@".. defs.group_list[gallery_id])

	return 0
end
--外部玩法通知结束玩法阶段
function EX_EndPlayStage( context, prev_context, is_fail, from_group)

	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})

	ScriptLib.ExecuteGroupLua(context, from_group, "EX_StopReTransCheck", {})

	ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] EX_EndPlayStage. stage_index@"..stage_index.." from_group@"..from_group.. " is_fail@"..is_fail)

	if is_fail == 1 then
		--EndSceneMultiStagePlayStage(context, play_index, stage_name, is_succ)
		--ScriptLib.EndSceneMultiStagePlayStage(context, 1, "PlayStage_"..stage_index, false)
		ScriptLib.CauseDungeonFail(context)
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] EX_EndPlayStage. CauseDungeonFail")
		return 0
	else
		ScriptLib.EndSceneMultiStagePlayStage(context, 1, "PlayStage_"..stage_index, true)
	end
	--是否全部结束
	if cfg.total_stage <= stage_index then
		ScriptLib.CauseDungeonSuccess(context)
		ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] EX_EndPlayStage. CauseDungeonSuccess")
		return 0
	end
	
	return 0
end

function LF_TranAllPlayerToGalleryPos(context, stage_index)
	--传送至配置的坐标
	local uid_list = ScriptLib.GetSceneUidList(context)
	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_"..stage_index, {})
	if uid_list ~= nil then
		for k,v in pairs(uid_list) do
			local pos = defs.transpoint_list[gallery_id][k].pos
			local rot = defs.transpoint_list[gallery_id][k].rot
			ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] LF_TranAllPlayerToGalleryPos. Start trans player@"..v.." X@"..pos.x.. " Y@"..pos.y.. " Z@"..pos.z)
			ScriptLib.TransPlayerToPos(context, { uid_list = {v}, pos = pos, radius = 0, rot = rot , is_skip_ui = true }) 
		end
	else
		ScriptLib.PrintGroupWarning(context,"## [CharAmuse_Main] LF_TranAllPlayerToGalleryPos: uid_list got nil. ")
	end
	return 0
end

function EX_ReTrans(context, prev_context, uid)
	local uid_list = ScriptLib.GetSceneUidList(context)
	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})
	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_"..stage_index, {})
	--玩家对应站位
	for i,v in ipairs(uid_list) do
		if v == uid then
			local pos = defs.transpoint_list[gallery_id][i].pos
			local rot = defs.transpoint_list[gallery_id][i].rot		
			ScriptLib.TransPlayerToPos(context, { uid_list = {uid}, pos = pos, radius = 0, rot = rot , is_skip_ui = false}) 
			ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] Player@"..uid.." ReTransed.")
		end	
	end
	return 0
end

function LF_IsAllStageFinish(context)
	local stage_index = ScriptLib.GetGroupTempValue(context, "stage_index", {})
	local gallery_num = ScriptLib.GetGroupTempValue(context, "gallery_num", {})
	if stage_index > gallery_num then	
		return true
	end
	return false
end

--需要提前取到GalleryID以创建布设的Group
function LF_SendGalleryIDVec_ToPlayGroup(context, gallery_vec)

	for k,v in pairs(cfg.groups_need_gallery) do 
		for ik,iv in ipairs(v) do
			if LF_CheckIsInTable(context, iv, gallery_vec) then 
				ScriptLib.ExecuteGroupLua(context, k, "EX_SetGalleryID", { iv })
				ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] LF_SendGalleryIDVec_ToPlayGroup. To@"..k.." gallery_id@"..iv)
				return 0
			end
		end		
	end

	return 0
end

--用于检查value是否在目标table中
function LF_CheckIsInTable(context, value, check_table)
	for i = 1, #check_table do
		if check_table[i] == value then
			return true
		end
	end
	return false
end

function LF_Set_Revive_Point(context, gallery_id)
	if nil == defs.way_point[gallery_id] then
		return 0
	end
	ScriptLib.ActivateDungeonCheckPoint(context, defs.way_point[gallery_id])
	ScriptLib.PrintContextLog(context, "## [CharAmuse_Main] Way point actived. point@"..defs.way_point[gallery_id].." gallery_id@"..gallery_id)
	return 0
end

LF_Initialize()