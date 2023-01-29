--[[======================================
||	filename:       HideAndSeek_Gallery_V3
||	owner:          shuyi.chang
||	description:    风行迷踪三期
||	LogName:        ## HideAndSeek_V3
||	Protection:     [Protection]
=======================================]]

--[[

local defs = 
{
	gadget_prison = gadget_id,
	duration = 240,
	rampage_time = 40,

	-- 用于固定lod 1的region，千万不能填错，填错了一定会炸服务器
	eye_point = region_id,
}
 
local energy_info = 
{
	[1] = { time = 80, step = {-30,30}, points = {1,2,3,4,5,6}},
	[2] = { time = 160, step = {-30,30}, points = {1,2,3,4,5,6}}
}

-- 这个group对应的图用哪些，这里就填哪些
local disguiseList = {1, 2, 3}

--]]

--初始化给的state,V2开始全部由SGV实现
local HS_State = {
	["Play"] 	 = { name = "SGV_HideAndSeek_PlayerState_Play", value = 3 },
	["Visible"]  = { name = "SGV_HideAndSeek_PlayerState_Visible", value = 0 },
	["OnMap"] 	 = { name = "SGV_HideAndSeek_PlayerState_OnMap", value = 0 },
	["Moveable"] = { name = "SGV_HideAndSeek_PlayerState_Moveable", value = 0 },
	["Transfer"] = { name = "SGV_HideAndSeek_PlayerState_Transfer", value = 0 },
	["TransferCache"] = { name = "SGV_HideAndSeek_PlayerState_TransferCache", value = 0},
	["UltraMark"] = { name = "SGV_Is_In_UltraMark", value = 0 },
	["GlobalSight"] = { name = "SGV_Is_In_GlobalSight", value = 0 },
	["SuperPrison"] = { name = "SGV_Is_In_SuperPrison", value = 0 },
	["Rampage"] = { name = "SGV_Is_In_Rampage", value = 0 },
	["Dead"] = { name = "SGV_HideAndSeek_PlayerState_Dead", value = 0},
	["Is_Detected"] = { name = "SGV_HideAndSeek_PlayerState_Is_Detected", value = 0},
	-- ===========================【三期新增】隐身诱饵造成的隐身状态==========================
	["Visible_Bait"] = { name = "SGV_HideAndSeek_PlayerState_Visible_Bait", value = 0},
	["Visible_Mark"] = { name = "SGV_HideSeek_Real_Invisible_Mark", value = 0},
}

local skill_info = {
	["HideAndSeek_Skill_CatchPrey"] = { radius = 4 },
	["HideAndSeek_Skill_Guide"] = { radius = 500 },
	["HideAndSeek_Skill_Detect_F"] = { radius = 10 },
	["HideAndSeek_Skill_UltraMark"] = { radius = 500, duration = 60 },
	["HideAndSeek_Skill_GlobalSight"] = { radius = 500, duration = 20 },
	["HideAndSeek_Skill_SuperPrison"] = { radius = 500, duration = 40 },
	-- ===========================【三期新增】隐身诱饵==========================
	["HideAndSeek_Skill_InvisibleBait_Check"] = { radius = 6, duration = 40 },
	-- ===========================【三期新增】四方八方之网==========================
	["HideAndSeek_Skill_HunterNet"] = { radius = 12 },
}

local hunter_win_by_EX = 30
local hunter_win_in_time = 120
local hunter_catch_by_guide = 10
local final_time = 180	--抓捕阶段第180秒后为决胜时间，猎手在该时间内抓两人，记录翻牌

local map_info = {
	--一期
	[1001003] = { name = "QingCe", list = {1,2,3} },
	[1001022] = { name = "QingQuan", list = {4,5} },
	[1001004] = { name = "WuWang", list = {4,8} },
	[1001002] = { name = "JiuZhuang", list = {7,8} },
	[1001023] = { name = "XueShan", list = {4,8} },
	--二期地图
	[1001006] = { name = "test_1", list = {1,2,3} },--轻策庄二期
	[1001007] = { name = "test_2", list = {4,8} },
	[1001008] = { name = "test_3", list = {4,8} },
	[1001009] = { name = "test_4", list = {19,17,18,20} },--离岛
	[1001010] = { name = "test_5", list = {4,8} },
	[1001011] = { name = "test_6", list = {11,12,13} },--神里
	[1001012] = { name = "test_7", list = {14,11,15} },--绯木
	[1001013] = { name = "test_8", list = {16,17,18} },--九条
	[1001014] = { name = "test_9", list = {4,8} },
	[1001015] = { name = "test_10", list = {4,8} },
	[1001015] = { name = "test_11", list = {4,21} },--初始林地
	[1001016] = { name = "test_12", list = {4,8} },
	[1001017] = { name = "test_13", list = {4,8} },
	[1001018] = { name = "test_14", list = {4,8} },
	[1001019] = { name = "test_15", list = {4,21,22} },--璃月遗迹
	[1001020] = { name = "test_16", list = {4,8} },
	[1001021] = { name = "test_17", list = {4,8} },
	[1001026] = { name = "test_18", list = {7,8,23} },--酒庄
	--【三期新增】三期地图
	[1001027] = { name = "CengYan", list = {21,18,13} },--层岩
	[1001028] = { name = "HaiYueChi", list = {21,18,13} },--海月池
	[1001029] = { name = "ShanHuGong", list = {21,18,13} },--珊瑚宫
	[1001030] = { name = "GanTian", list = {20,11,15} },--绀田村
	[1001031] = { name = "QingCeZhuang", list = {21,18,2} },--轻策庄
	[1001032] = { name = "AuMoSi", list = {21,18,13} },--奥摩斯港
	[1001033] = { name = "ChanNaYuan", list = {21,18,13} },--禅那园
	[1001034] = { name = "KaSaZhaLai", list = {21,18,13} },--卡萨扎莱
	[1001035] = { name = "WeiMoZhuang", list = {21,18,13} },--维摩庄
	[1001036] = { name = "DaBaZha", list = {21,18,13} },--大巴扎

}

-- 上面那些变身物件的对应关系
-- 1稻草人蓝，2稻草人红，3枯木，4丘丘人木箱，5草垛，6鬼火，7小路灯，8木桶，9火仙灵，10龙血矿石，
-- 11木盆，12水桶，13纸灯，14咸菜缸，15泡菜缸，16稻草靶子，17经典木桶，18经典木箱，19米袋子，20小板凳，21qq人木桶，22璃月石灯，23凳子
-- 24层岩巨渊木箱，25竖木桶，26横木桶，27石块，28枯木，29珊瑚，30灯柱，31稻妻陶罐，32大酒坛，33璃月木箱，34须弥木箱，35竹筐，36须弥路灯，37营地竖木桶，38营地横木桶，39营地罐子

--玩法中开启的天气
local weather_id_list = {3151}

local Tri = {
	[1]={ name = "gallery_stop", config_id = 8000001, event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_gallery_stop", trigger_count = 0},
	[2]={ name = "challenge_success", config_id = 8000003, event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_challenge_success", trigger_count = 0},
	[3]={ name = "challenge_fail", config_id = 8000004, event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_challenge_fail", trigger_count = 0},
	[4]={ name = "variable_change", config_id = 8000005, event = EventType.EVENT_VARIABLE_CHANGE, source = "catch_sum", condition = "", action = "action_variable_change", trigger_count = 0, tag = "9012"},
	[5]={ name = "time_axis_pass", config_id = 8000006, event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_time_axis_pass", trigger_count = 0},
	[6]={ name = "enter_region", config_id = 8000007, event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_enter_region", trigger_count = 0, forbid_guest = false},
	[7]={ name = "GM_Debug", config_id = 8000008, event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "", action = "action_GM_Debug", trigger_count = 0 },
	[8]={ name = "multistage_end", config_id = 8000009, event = EventType.EVENT_SCENE_MULTISTAGE_PLAY_STAGE_END, source = "", condition = "", action = "action_multistage_end", trigger_count = 0 },
	[9]={ name = "group_load", config_id = 8000010, event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_group_load", trigger_count = 0 },
	[10]={name = "avatar_die", config_id = 8000011, event = EventType.EVENT_AVATAR_DIE, source = "", condition = "", action = "action_avatar_die", trigger_count = 0 },
	[11]={name = "player_quit", config_id = 8000012, event = EventType.EVENT_HIDE_AND_SEEK_PLAYER_QUIT, source = "", condition = "", action = "action_player_quit", trigger_count = 0 },
	[12]={name = "leave_region", config_id = 8000013, event = EventType.EVENT_LEAVE_REGION, source = "", condition = "", action = "action_leave_region", trigger_count = 0, forbid_guest = false},
	[13]={name = "group_will_unload", config_id = 8000014, event = EventType.EVENT_GROUP_WILL_UNLOAD, source = "", condition = "", action = "action_group_will_unload", trigger_count = 0 },
}

local Var = {
	{ config_id=50000001,name = "catch_sum", value = 0, no_refresh = false},
	{ config_id=50000002,name = "GM_stage", value = 0, no_refresh = false},
}

-- 【三期新增】有些ability specials gadget是lua自行创建的，但是需要一个config id，直接在lua里写死，就不用在关卡编辑器里配了
-- 但是对pos和area id有一些限制，所以找个地方存一下一定合法的值，方便后面调用
local regionDefaultValues = {
	pos = regions[defs.eye_point].pos,
	area_id = regions[defs.eye_point].area_id,
	radius = regions[defs.eye_point].radius,
}

local extraGadgets = {

	-- 隐身诱饵，一人一个
	-- 不太確定為什麼level = 10，不過二期都是10，所以三期先照抄
	[30000001] = { config_id = 30000001, gadget_id = 44000457, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },
	[30000002] = { config_id = 30000002, gadget_id = 44000457, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },
	[30000003] = { config_id = 30000003, gadget_id = 44000457, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },

	-- 普通诱饵，一人三个
	[30000004] = { config_id = 30000004, gadget_id = 44000107, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },
	[30000005] = { config_id = 30000005, gadget_id = 44000107, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },
	[30000006] = { config_id = 30000006, gadget_id = 44000107, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },
	
	[30000007] = { config_id = 30000007, gadget_id = 44000107, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },
	[30000008] = { config_id = 30000008, gadget_id = 44000107, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },
	[30000009] = { config_id = 30000009, gadget_id = 44000107, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },
	
	[30000010] = { config_id = 30000010, gadget_id = 44000107, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },
	[30000011] = { config_id = 30000011, gadget_id = 44000107, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },
	[30000012] = { config_id = 30000012, gadget_id = 44000107, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },
	
	-- 能量球，config id把不太吉利的数字跳过去
	[30000015] = { config_id = 30000015, gadget_id = 44000105, pos = regionDefaultValues.pos, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = regionDefaultValues.area_id },

}

local gadget_energy = 30000015

local invisible_bait_list = { 30000001, 30000002, 30000003 }

local bait_list = {
	[1] = {30000004, 30000005, 30000006},
	[2] = {30000007, 30000008, 30000009},
	[3] = {30000010, 30000011, 300000012},
}

local extraRegions = {
	[40000001] = { config_id = 40000001, shape = RegionShape.SPHERE, radius = regionDefaultValues.radius + 5, pos = regionDefaultValues.pos, area_id = regionDefaultValues.area_id }
}

local eyepoint_large_region = 40000001

local challengeTable = {
	fatherId = 9011,
	hunterId = 9012,
	hiderId = 9013,
	ghostId = 2013001,
}

function Initialize_Base()
	for i,v in ipairs(Tri) do
		table.insert(triggers, v)
		table.insert(suites[1].triggers, v.name)
	end
	for i,v in ipairs(Var) do
		table.insert(variables, v)
	end
	for i,v in pairs(extraGadgets) do
		table.insert(gadgets, v)
	end

	for i,v in pairs(extraRegions) do
		table.insert(regions, v)
	end

	-- 【三期新增】gadget_prison看起来只会用到一个，三期就不用list了，但是保底一下如果哪里的配置没改成新的
	if defs.gadget_prison == nil and defs.gadget_prison_list ~= nil then
		defs.gadget_prison = defs.gadget_prison_list[1]
	end
end
---------------------------------------
function action_group_load(context, evt)
	--根据LD铺设随机生成障碍物
	LF_Bake_Random_Scene(context)
	return 0
end

function action_gallery_stop(context, evt)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : Gallery Stop")
	--实际gameplay仍在进行时玩法停止,则走意外终止流程
	if 1 == ScriptLib.GetGroupTempValue(context, "is_in_play", {}) then
		LF_Stop_Hide_And_Seek(context, 3)
	end
	return 0
end

function action_multistage_end(context, evt)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : Multistage End : "..evt.param2.." | is_succ : "..evt.param3)
	if evt.param3 == 0 then
		--异常终结玩法
		if 1 == ScriptLib.GetGroupTempValue(context, "is_in_play", {}) then
			LF_Stop_Hide_And_Seek(context, 3)
		end
		return 0
	end
	if evt.param2 == 2 then
		--LF_Bake_Random_Scene(context)
	elseif evt.param2 == 3 then
		--进入逃跑阶段
		ScriptLib.SetGroupTempValue(context, "in_escape", 1, {})
		LF_Assign_Character_Card(context)
	elseif evt.param2 == 4 then
		--进入抓捕阶段
		ScriptLib.SetGroupTempValue(context, "in_escape", 0, {})
		LF_Start_Hide_And_Seek(context)

		-- 【三期新增】这个时候通知一下在场的所有诱饵，根据本地gv值决定是否删除effect(感觉不太需要？猎人三期在逃跑阶段是4了，可以跟游侠区分开)
		-- LF_NotifyInvisibleBaits(context)
	elseif evt.param2 == 5 then
		--由于关卡流终止时说明游侠未全灭，判胜
		if 1 == ScriptLib.GetGroupTempValue(context, "is_in_play", {}) then
			LF_Stop_Hide_And_Seek(context, 2)
		end
	end
	return 0
end

function action_challenge_success(context, evt)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_Log : challenge_success -> "..evt.param1)
	--猎手完成了抓人的挑战，判胜
	if evt.source_name == "9012" then
		if 1 == ScriptLib.GetGroupTempValue(context, "is_in_play", {}) then
		    LF_Stop_Hide_And_Seek(context, 1)
	    end
	end
	return 0
end

function action_challenge_fail(context, evt)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_Log : challenge_fail -> "..evt.param1)
	--猎手未能完成抓人的挑战，判负
	if evt.source_name == "9011" then
		if 1 == ScriptLib.GetGroupTempValue(context, "is_in_play", {}) then
		    LF_Stop_Hide_And_Seek(context, 2)
	    end
	end
	return 0
end

function action_variable_change(context, evt)
	-- 只管catch_sum变化
	if evt.param1 == evt.param2 + 1 then
		-- 这段有用的，一个玩家在逃跑阶段死亡退出改变catch sum、并导致catch sum等于prey总数，从这里直接判猎人成功
		if 1 == ScriptLib.GetGroupTempValue(context, "in_escape", {}) then
			if evt.param1 == ScriptLib.GetGroupTempValue(context, "prey_sum", {}) then
				local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
				ScriptLib.EndSceneMultiStagePlayStage(context, _index, "null", true)
			end
		end
		--]]
		return 0
	else
		return -1
	end
end

function action_enter_region(context, evt)
	if evt.param1 ~= defs.eye_point then
		return -1
	end
	--开启视野锚点优化
	ScriptLib.SetPlayerEyePointStream(context, evt.param1, evt.param1, false)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG SetPlayerEyePointStream")

	-- -- 【三期新增】
	-- -- 开启锁lod1
	-- local ret = ScriptLib.SetPlayerEyePointLOD(context, defs.eye_point, eyepoint_large_region, 1)
	-- ScriptLib.PrintContextLog(context, "## HideAndSeek_V3 lod level is set to 1, succeed = "..ret)
	return 0
end

function action_leave_region(context, evt)
	if evt.param1 ~= defs.eye_point then
		return -1
	end
	--关闭视野锚点优化
	ScriptLib.ClearPlayerEyePoint(context, evt.param1)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG ClearPlayerEyePoint")

	
	-- -- 【三期新增】
	-- -- 关闭锁lod1
	-- local ret = ScriptLib.ClearPlayerEyePoint(context, defs.eye_point)
    -- ScriptLib.PrintContextLog(context, "## HideAndSeek_V3 player eye point is cleared, succeed = "..ret)

	return 0
end

function action_group_will_unload(context, evt)
	--提前关闭性能圈保证关闭视野锚点优化
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.REGION, defs.eye_point)
	return 0
end

function action_time_axis_pass(context, evt)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : time_axis "..evt.source_name.." -> "..evt.param1)
	if evt.source_name == "rampage" then
		--触发猎手暴走阶段
		HideAndSeek_Hunter_Rampage(context)
	elseif evt.source_name == "energy" then
		--刷新一个能量球
		ScriptLib.KillEntityByConfigId(context, {config_id = gadget_energy, entity_type = EntityType.GADGET})
		--随机选择位置创建能量球
		local p_list = energy_info[evt.param1].points
		math.randomseed(ScriptLib.GetServerTime(context))
		local ret = p_list[math.random(#p_list)]
		local p_pos = {}
		local p_rot = {}
		for k,v in ipairs(points) do
			if v.config_id == ret then
				p_pos = v.pos
				p_rot = v.rot
				break
			end
		end
		ScriptLib.CreateGadgetByConfigIdByPos(context, gadget_energy, p_pos, p_rot)
		local uid_list = ScriptLib.GetSceneUidList(context)
		--通知全体掉能量球
		ScriptLib.AssignPlayerUidOpNotify(context, {param_index = 12,param_list={},param_uid_list={},duration=3,target_uid_list=uid_list})
	elseif evt.source_name == "hunter_win_by_EX" or evt.source_name == "hunter_win_in_time" or evt.source_name == "hunter_catch_by_guide" then
		--相关陈列室统计
		ScriptLib.SetGroupTempValue(context, evt.source_name, 0, {})
	elseif evt.source_name == "final_time" then 
		--抓捕阶段第180秒后为决胜时间，猎手在该时间内抓两人，记录翻牌
		ScriptLib.SetGroupTempValue(context,"is_in_final_time",1,{})
	else
		--终止游侠被捕阶段并转为真死亡
		for i=1,3 do
			local _uid = ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {})
			if evt.source_name == tostring(_uid) then
				ScriptLib.PrintContextLog(context,"## HideAndSeek_V3_LOG realDie = "..tostring(_uid))

				-- ScriptLib.AssignPlayerShowTemplateReminder(context, 138, {param_vec={},param_uid_vec={},uid_vec={_uid}})

				-- 【三期新增】换了一个UI弹窗，要读表，改成下面了
				local _gallery = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
				ScriptLib.UpdatePlayerGalleryScore(context, _gallery, {["update_type"]="updateGhostUid", ["ghost_uid"]= _uid})
				
				LF_Set_Player_State_Value(context, _uid, HS_State.Dead.name, 1)

				-- 【三期新增】游侠死亡后变成幽灵，上新挑战目标
				-- 这里挑战的具体参数不重要，只是为了显示下左侧文字，反正无论如何都完不成的，结束只需要听关卡通知
				if ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_".._uid, {}) == 2 then
					-- 游侠这时候应该已经是2了
					ScriptLib.AttachChildChallenge(context, challengeTable.fatherId, i*math.pow(10,5)+challengeTable.ghostId,challengeTable.ghostId,{base_info.group_id,10},{_uid},{success=1,fail=1})
				end
				return 0
			end
		end
	end
	return 0
end

function action_avatar_die(context, evt)
	--multistage内触发的死亡回调
	local char = ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..context.uid, {})
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : avatar_die "..context.uid.." | character = "..char)
	--首先排除玩家死在玩法外的情况
	if ScriptLib.GetGroupTempValue(context, "is_in_play", {}) == 0 then
		ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : is_in_play = 0")
		return -1
	end
	if char == 0 then
		--hunter死亡判负
		ScriptLib.StopChallenge(context, 9012, 0)
	elseif char == 1 then
		--prey死亡算被抓
		LF_Set_Prey_Die(context, context.uid)
	elseif char == 3 or char == 4 then
		for i = 1,3 do
			local prey = ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {})
			if prey == context.uid then
				--prey提前死亡不参与游戏
				LF_Set_Prey_Die(context, context.uid)
				return 0	
			end
		end 
		--hunter提前死亡直接结算prey胜利
		local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
		ScriptLib.EndSceneMultiStagePlayStage(context, _index, "null", true)
		LF_Stop_Hide_And_Seek(context, 2)
	end
	return 0
end

function action_player_quit(context, evt)
	--由multistage触发回调玩家离场
	for j=1,3 do
		if context.uid == ScriptLib.GetGroupTempValue(context, "prey_"..j, {}) then
			ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : Running Player_Quit : "..context.uid)
			--进行中玩家离场视为hunter抓住了一个
			ScriptLib.ChangeGroupVariableValue(context, "catch_sum", 1)
			return 0
		end
	end
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : Free Player_Quit : "..context.uid)
	return 0
end

function action_GM_Debug(context, evt)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : variable_change "..evt.source_name.." "..evt.param2.." -> "..evt.param1)
	if evt.param1 == evt.param2 then
		return -1
	end
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		--处理玩家隐身显形
		if evt.source_name == HS_State.OnMap.name.."_"..v then
			LF_Notify_Player_Visible(context)
			return -1
		end
	end
	if evt.source_name == "catch_sum" then
		return -1
	end
	if evt.source_name == "GM_stage" then
		if evt.param1 == 1 then
			LF_Bake_Random_Scene(context)
		elseif evt.param1 == 2 then
			LF_Assign_Character_Card(context)
		elseif evt.param1 == 3 then
			LF_Start_Hide_And_Seek(context)
		end
	end
	return 0
end
---------------------------------------
function LF_Start_Hide_And_Seek(context)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_Log : LF_Start_Hide_And_Seek")
	LF_Start_Comp_Challenge(context)
end

function LF_Stop_Hide_And_Seek(context, value)
	--1为hunter胜，2为游侠胜，3为意外中断
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_Log : LF_Stop_Hide_And_Seek | value -> "..value)
	ScriptLib.SetGroupTempValue(context, "is_in_play", 0, {})
	ScriptLib.EndTimeAxis(context, "rampage")
	ScriptLib.EndTimeAxis(context, "energy")
	local hunter = ScriptLib.GetGroupTempValue(context, "hunter", {})
	--还未进入幽灵状态的，不用进了，所以关掉时间轴（已经结束）
	for i=1,3 do
		local _uid = ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {})
		ScriptLib.EndTimeAxis(context, tostring(_uid))
	end
	--这个watcher比较特殊，需要在胜利时检测prey的state，所以要写在还原state之前。
	if value == 2 then 
		for i = 1 , 3 do 
			local _prey = ScriptLib.GetGroupTempValue(context, "prey_"..i, {})
			local _const = ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {})
			if _const ~= 0 then
				--存活的prey
				if _prey ~= 0 then
					local logvalue = ScriptLib.GetGroupTempValue(context, HS_State.Transfer.name.."_".._const, {})
					ScriptLib.PrintContextLog(context,"## HideAndSeek_V3_LOG uid:".._const.."的Transfer值为:"..logvalue)
					--统计：胜利的时候处于变身状态
					if ScriptLib.GetGroupTempValue(context, HS_State.Transfer.name.."_".._const, {}) > 0 then
						ScriptLib.PrintContextLog(context,"## HideAndSeek_V3_LOG 统计：胜利的时候处于变身状态  uid:".._const)
						ScriptLib.AddExhibitionReplaceableData(context, _const, "prey_win_in_transfer", 1)
					end
				end
			end
		end
	end

	--还原玩家所有State
	local uid_list = ScriptLib.GetSceneUidList(context)
	for i,v in ipairs(uid_list) do
		LF_Init_Player_State(context, v)
		ScriptLib.RevertPlayerRegionVision(context, uid_list[i])
	end
	ScriptLib.SetPlayerGroupVisionType(context, uid_list, {1})
	for i,v in ipairs(bait_list) do
		for m,n in ipairs(v) do
			ScriptLib.KillEntityByConfigId(context, {config_id = n, entity_type = EntityType.GADGET})
		end
	end
	if value == 3 then
		--人数不足导致异常处理
		ScriptLib.StopChallenge(context, 9011, 0)
		return -1
	end
	local _gallery = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	-------
	local catch_sum = ScriptLib.GetGroupVariableValue(context, "catch_sum")
	--统计：抓捕总数
	ScriptLib.AddExhibitionReplaceableData(context, hunter, "hunter_catch_sum", catch_sum)
	--无论胜败都发的牌：
	--“是猎人”牌
		ScriptLib.AddExhibitionReplaceableData(context, hunter, "is_hunter", 1)
	--“是游侠”牌
	for i=1,3 do
		local _prey = ScriptLib.GetGroupTempValue(context, "prey_"..i, {})
		ScriptLib.AddExhibitionReplaceableData(context, _prey, "is_hunter", 2)

		-- 【三期新增翻牌】游侠-使用隐身诱饵维持多长时间的隐身
		local invisible_time = ScriptLib.GetGroupTempValue(context, "Visible".._prey, {})
		ScriptLib.AddExhibitionReplaceableData(context, _prey, "prey_keep_invisible", invisible_time)

	end
	--hunter胜利
	if value == 1 then
		--统计：清扫时刻
		ScriptLib.AddExhibitionReplaceableData(context, hunter, "hunter_miss_none", 1)
		--统计：迅捷攻势
		if 1 == ScriptLib.GetGroupTempValue(context, "hunter_win_by_EX", {}) then
			ScriptLib.AddExhibitionReplaceableData(context, hunter, "hunter_win_by_EX", 1)
		end
		--统计：终场倒计时
		if 1 == ScriptLib.GetGroupTempValue(context, "hunter_win_in_time", {}) then
			ScriptLib.AddExhibitionReplaceableData(context, hunter, "hunter_win_in_time", 1)
		end
		ScriptLib.UpdatePlayerGalleryScore(context, _gallery, {["update_type"]="updateGalleryResult", ["is_hunter_win"]=true})
	--prey胜利
	elseif value == 2 then
		LF_Handle_Exhibition_Prey_Win(context)
		ScriptLib.UpdatePlayerGalleryScore(context, _gallery, {["update_type"]="updateGalleryResult", ["is_hunter_win"]=false})
	end

	-- 【三期新增翻牌】一次抓捕多个游侠
	local max = ScriptLib.GetGroupTempValue(context, "catch_multiple_prey_max", {})
	ScriptLib.AddExhibitionReplaceableData(context, hunter, "hunter_catch_multiple_prey_max", max)

	LF_Clear_Random_Scene(context)
end

function LF_Assign_Character_Card(context)
	-- 1）prey和hunter，以及各种其他局内值都用temp value记录
	-- 2）开启视野优化
	-- 3）初始化技能sgv
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : LF_Assign_Character_Card is called")
	local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
	local _gallery = ScriptLib.GetHideAndSeekPlayGalleryId(context, _index)
	ScriptLib.SetGroupTempValue(context, "gallery_id", _gallery, {})
	ScriptLib.SetGroupTempValue(context, "is_in_play", 1, {})

	-- local uid_list = ScriptLib.GetSceneUidList(context)
	-- 【三期新增】新接口取prey，和服务器保持一致
	local prey_list = ScriptLib.GetHideAndSeekPreyUidList(context, _index)
	local hunter = ScriptLib.GetHideAndSeekHunter(context, _index)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : hunter_uid = "..hunter)
	-- 所有参加活动的玩家的uid list
	local all_player_list = {}
	for i = 1, #prey_list do
		table.insert(all_player_list, prey_list[i])
	end
	table.insert(all_player_list, hunter)
	
	-- 开启视野优化
	for i = 1, #all_player_list do
		ScriptLib.ForbidPlayerRegionVision(context, all_player_list[i])
	end
	ScriptLib.SetPlayerGroupVisionType(context, all_player_list, {0})

	--分配局内身份信息
	ScriptLib.SetGroupTempValue(context, "hunter", hunter, {})
	local cnt = 1
	for i,v in ipairs(prey_list) do
		if v ~= hunter then-- 其实不用判，先留着了
			ScriptLib.SetGroupTempValue(context, "prey_"..cnt, v, {})
			ScriptLib.SetGroupTempValue(context, "const_prey_"..cnt, v, {})
			cnt = cnt + 1
		end
	end
	--追加一次游侠数量统计，防止在这个阶段取不到值，考虑到不是很靠谱，四阶段重新计算一次
	ScriptLib.SetGroupTempValue(context, "prey_sum", #prey_list, {})

	--关闭牢笼
	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.gadget_prison, 0)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : player_sum = "..#all_player_list)

	--按选择初始化技能列表
	for i,v in ipairs(all_player_list) do
		LF_Init_Player_Skill(context, v, i)
		LF_Init_Player_State(context, v)
		if v == hunter then
			ScriptLib.AssignPlayerUidOpNotify(context, {param_index = 16,param_list={},param_uid_list={},duration=5,target_uid_list={v}})
		else
			ScriptLib.AssignPlayerUidOpNotify(context, {param_index = 17,param_list={},param_uid_list={},duration=5,target_uid_list={v}})

			-- 【三期新增翻牌】初始化隐身状态的temp value，要在逃跑阶段一开始就初始化
			ScriptLib.SetGroupTempValue(context, "Visible_Mark"..v, 0, {})
		end
	end
end

function LF_Init_Player_Skill(context, uid, u_ptr)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : LF_Init_Player_Skill : "..uid)
	local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
	local _gallery = ScriptLib.GetHideAndSeekPlayGalleryId(context, _index)
	local skill_list = ScriptLib.GetHideAndSeekPlayerSkillList(context, _index, uid)
	for p,q in ipairs(skill_list) do
		ScriptLib.AttachGalleryAbilityGroup(context, {uid}, _gallery, q)
	end
end

function LF_Start_Comp_Challenge(context)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : LF_Start_Comp_Challenge")
	ScriptLib.CreateFatherChallenge(context, 9011, 9011, defs.duration, {success=10,fail=10})
	-- local uid_list = ScriptLib.GetSceneUidList(context)
	-- 【三期新增】新接口取prey，和服务器保持一致
	local _index = ScriptLib.GetHideAndSeekPlayIndex(context)
	local prey_list = ScriptLib.GetHideAndSeekPreyUidList(context, _index)
	
	local hunter = ScriptLib.GetGroupTempValue(context, "hunter", {})
	LF_Set_Player_State_Value(context, hunter, HS_State.Play.name, 0)

	ScriptLib.ForceRefreshAuthorityByConfigId(context, defs.gadget_prison, hunter)

	local challenge_start_time = ScriptLib.GetServerTime(context)

	--prey_sum这里统计就太晚了，需要三阶段开始先统计一次
	local prey_sum = 0
	for i,v in ipairs(prey_list) do
		-- if v == hunter then
		-- 	LF_Set_Player_State_Value(context, v, HS_State.Play.name, 0)
		-- else
			local idx = 0
			for j = 1,3 do
				if v == ScriptLib.GetGroupTempValue(context, "prey_"..j, {}) then
					idx = j
					break
				end	
			end
			--只有非死亡状态的游侠才继续游戏
			if ScriptLib.GetGroupTempValue(context, HS_State.Play.name.."_"..v, {}) == 3 then
				LF_Set_Player_State_Value(context, v, HS_State.Play.name, 1)
				ScriptLib.AttachChildChallenge(context, 9011, idx*math.pow(10,5)+9013,9013,{base_info.group_id,10},{v},{success=1,fail=1})
				prey_sum = prey_sum + 1
			end
			
			-- 【三期新增】开始隐身的时间先设成挑战开始时间
			ScriptLib.SetGroupTempValue(context, "VisibleStart"..v, challenge_start_time, {})

		-- end
	end
	if prey_sum == 0 then
		LF_Stop_Hide_And_Seek(context, 1)
		-- 就不需要开挑战了
		return 0
	end
	--获取到正确的游侠数量
	ScriptLib.AttachChildChallenge(context, 9011, 9012, 9012, {0,3,9012,prey_sum}, {hunter},{success=10,fail=10})
	--启动组合挑战
	ScriptLib.StartFatherChallenge(context, 9011)
	ScriptLib.InitTimeAxis(context, "rampage", {defs.duration - defs.rampage_time}, false)
	--处理两个抓捕结算的初始化
	ScriptLib.InitTimeAxis(context, "hunter_win_in_time", {hunter_win_in_time}, false)
	ScriptLib.SetGroupTempValue(context, "hunter_win_in_time", 1, {})
	--新增翻牌用计时器  抓捕阶段第180秒后为决胜时间，猎手在该时间内抓两人，记录翻牌
	ScriptLib.InitTimeAxis(context, "final_time", {final_time}, false)
	--处理能量球计时
	LF_Set_Energy(context)
	--解除hunter限制
	ScriptLib.SetGroupGadgetStateByConfigId(context, 0, defs.gadget_prison, 201)
end

function LF_Set_Energy(context)
	--出能量球的时间有略微偏移
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : LF_Set_Energy")
	math.randomseed(ScriptLib.GetServerTime(context))
	local energy_list = {}
	for i,v in ipairs(energy_info) do
		table.insert(energy_list, v.time + math.random(energy_info[i].step[1],energy_info[i].step[2]))
	end
	ScriptLib.InitTimeAxis(context, "energy", energy_list, false)
end

function LF_Bake_Random_Scene(context)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : LF_Bake_Random_Scene")
	--根据ld需求进行调整
	
	--开启天气
	for i = 1 , #weather_id_list do
		ScriptLib.SetWeatherAreaState(context, weather_id_list[i], 1) 
	end

	--suite 2按权重随机创建
	if suites[2] ~= nil then
		math.randomseed(ScriptLib.GetServerTime(context))
		for i,v in ipairs(suites[2].gadgets) do
			if math.random(100) > 50 then
				ScriptLib.CreateGadget(context, {config_id = v})
			end
		end
	end
	--suite 3创建基本空气墙
	if suites[3] ~= nil then
		ScriptLib.AddExtraGroupSuite(context, 0, 3)
	end
end

function LF_Clear_Random_Scene(context)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : LF_Clear_Random_Scene")
	--根据需求清理数据
	ScriptLib.EndTimeAxis(context, "hunter_win_by_EX")
	ScriptLib.EndTimeAxis(context, "hunter_win_in_time")
	ScriptLib.EndTimeAxis(context, "hunter_catch_by_guide")
	ScriptLib.RemoveExtraGroupSuite(context, 0, 3)
	ScriptLib.RemoveExtraGroupSuite(context, 0, 4)
	--清理诱饵防止local的残留
	ScriptLib.KillEntityByConfigId(context, {config_id = gadget_energy, entity_type = EntityType.GADGET})
	for i,v in ipairs(bait_list) do
		for m,n in ipairs(v) do
			ScriptLib.KillEntityByConfigId(context, {config_id = n, entity_type = EntityType.GADGET})
		end
	end

	ScriptLib.KillEntityByConfigId(context, {config_id = defs.gadget_prison, entity_type = EntityType.GADGET})
	
	--关闭天气
	for i = 1 , #weather_id_list do
		ScriptLib.SetWeatherAreaState(context, weather_id_list[i], 0) 
	end
	
end

function LF_Init_Player_State(context, uid)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG ： Init_Player_State : "..uid)
	for m,n in pairs(HS_State) do
		if n.name == "SGV_HideAndSeek_PlayerState_Play" then
			-- 【三期新增】唯独只有这个值，初始的时候要额外区分猎人4和游侠3
			if uid == ScriptLib.GetGroupTempValue(context, "hunter", {}) then
				LF_Set_Player_State_Value(context, uid, n.name, 4)
			else
				LF_Set_Player_State_Value(context, uid, n.name, n.value)
			end
		else 
			LF_Set_Player_State_Value(context, uid, n.name, n.value)
		end
	end
end

--用于集中处理hunter失败的结算
function LF_Handle_Exhibition_Prey_Win(context)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : LF_Handle_Exhibition_Prey_Win")
	local hunter = ScriptLib.GetGroupTempValue(context, "hunter", {})
	local prey_sum = ScriptLib.GetGroupTempValue(context, "prey_sum", {})
	local catch_sum = ScriptLib.GetGroupVariableValue(context, "catch_sum")
	--剩余人数结算
	local prey_alive = prey_sum - catch_sum
	if prey_alive == 1 then
		--统计：猎手的惜败
		ScriptLib.AddExhibitionReplaceableData(context, hunter, "hunter_miss_one", 1)
		for i=1,3 do
			local _prey = ScriptLib.GetGroupTempValue(context, "prey_"..i, {})
			if _prey ~= 0 then
				--统计：最后的火种
				ScriptLib.AddExhibitionReplaceableData(context, _prey, "prey_alive_only", 1)
				break
			end
		end
	elseif prey_alive == 2 then
		--统计：猎手的失误
		ScriptLib.AddExhibitionReplaceableData(context, hunter, "hunter_miss_two", 1)
	end
	if catch_sum == 0 then
		--统计：无从复命
		ScriptLib.AddExhibitionReplaceableData(context, hunter, "hunter_miss_all", 1)
	end
	for i=1,3 do
		local _prey = ScriptLib.GetGroupTempValue(context, "prey_"..i, {})
		local _const = ScriptLib.GetGroupTempValue(context, "const_prey_"..i, {})
		if _const ~= 0 then
			--存活的prey
			if _prey ~= 0 then
				--统计：抗争到底
				ScriptLib.AddExhibitionReplaceableData(context, _const, "prey_alive_win", 1)
				--统计：全身而退
				local guide_time = ScriptLib.GetGroupTempValue(context, "prey_win_by_guide", {})
				ScriptLib.AddExhibitionReplaceableData(context, _const, "prey_win_by_guide", guide_time)
				--统计：灯下取巧
				local detect_time = ScriptLib.GetGroupTempValue(context, "prey_win_by_detect_".._prey, {})
				ScriptLib.AddExhibitionReplaceableData(context, _prey, "prey_win_by_detect", detect_time)
				--统计：无技能胜利,要反转统计一次
				if 0 == ScriptLib.GetGroupTempValue(context, "prey_win_without_skill_".._const, {}) then
					ScriptLib.AddExhibitionReplaceableData(context, _const, "prey_win_without_skill", 1)
				end
			elseif _prey == 0 then
				--统计：默契之力
				ScriptLib.AddExhibitionReplaceableData(context, _const, "prey_dead_win", 1)
			end
		end
	end
end

-- 【三期新增】隐身诱饵相关
function LF_NotifyInvisibleBaits(context)
	ScriptLib.PrintContextLog(context, "## HideAndSeek_V3_LOG : LF_NotifyInvisibleBaits")

	for i = 1, #invisible_bait_list do
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, invisible_bait_list[i], "SGV_InvisibleBait_Display", 1)
	end
end
---------------------------------------
Initialize_Base()