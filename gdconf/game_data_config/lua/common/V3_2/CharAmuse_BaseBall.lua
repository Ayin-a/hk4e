--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	CharAmuse_BaseBall
||	owner: 		weiwei.sun
||	description: 	3.2奇趣秘园 棒球 局内逻辑
||					球作为ServerGadget，优化remote体验
||	LogName:	## [CharAmuse_BaseBall]
||	Protection:	
=======================================]]
--[[

local defs = {

local defs = {
	--玩法范围region cube
	play_region = 6010,
	--进入时加载内容，例如棒球发球机。依次为单人、2人…
	enter_suites = {5,4,3,2},

	--启动时加载内容，例如史莱姆球。依次为单人、2人…
	play_suites = {},
	--玩法限时秒
	limit_time = 60,
	target = 15,

	--射击波次 默认
	order = 
	{
		easy, 
		normal,
		hard,
		normal,
		hard,
	},
	--射击波次 云锦
	order_yunjin = 
	{
		easy, 
		normal,
		hard,
		normal,
		hard,
	},

	--从哪一波开始，使每个发球机节奏不同，0为不处理
	diff_from = 0,

	multi_shoot = 
	{	--有几个坐标就发几个球，坐标是相对于默认发射点的偏移
		[21] = { {x = 0, z = 0}, {x = 0, z = 0}, {x = 0, z = 0} }
	},

	--波次随机池配置 {{射击模式}, {间隔}}
	-- 1-单个普通 2-单个快速 3-双普 4-双快 5-三普 6-三快 7-左右旋 8-单快速左旋 9-（空） 10-单快速右旋 20以上-multi_shoot
	seq = 
	{
		
	},
	easy=
	{
	    { {2,1,2,1,2}, {5,5,5,5,5} },
	},
	normal=
	{
	    { {2,1,2,1,2}, {4,4,4,4,5} },
	},
	hard=
	{
	    { {2,1,2,1,2}, {3,3,3,3,5} },
	},
	--球物件池
	ball_pool = 
	{	--普通
		[2] = {6006,6007,6008,6009,6031,6032,6033,6035},
		--快速
		[1] = {6023.6024.6025,6026,6035,6036,6037,6038},
		--曲线左旋（gadgetID：70320050）
		[4] = {},
		--曲线右旋（gadgetID：70320051）
		[3] = {},
	},
	--射击基准点位
	shoot_points = 
	{
		--1人
		[1] ={6016},
		--2人
		[2] ={6002,6004},
		--3人
		[3] ={6011,6013,6017},
		--4人
		[4] ={6019,6021,6027,6029},
	},
	--连发间距 进行连发时，在基准点位每隔此距离创建一个球
	multishoot_distance = 0.5,
}
}

]]
local cfg = {
	--主控GroupID
	main_group = 251008007,
	-- 1-单个普通 2-单个快速 3-双普 4-双快 5-三普 6-三快 7-左右旋 8-单快速左旋 9-（空） 10-单快速右旋
	shoot_info = 
	{
		[1] = { ball_type = 2, shoot_count = 1, rot = { x = 0.000, y = 180.000, z = 0.000 }},
		[2] = { ball_type = 1, shoot_count = 1, rot = { x = 0.000, y = 180.000, z = 0.000 }},
		[3] = { ball_type = 2, shoot_count = 2, rot = { x = 0.000, y = 180.000, z = 0.000 }},
		[4] = { ball_type = 1, shoot_count = 2, rot = { x = 0.000, y = 180.000, z = 0.000 }},
		[5] = { ball_type = 2, shoot_count = 3, rot = { x = 0.000, y = 180.000, z = 0.000 }},
		[6] = { ball_type = 1, shoot_count = 3, rot = { x = 0.000, y = 180.000, z = 0.000 }},
		--[7] = { ball_type = 3, shoot_count = 2, rot = { x = 0.000, y = 220.000, z = 0.000 }},--双曲线配置在LF_Create_DualCurveBall
		[8] = { ball_type = 3, shoot_count = 1, rot = { x = 0.000, y = 220.000, z = 0.000 }},
		--[9] = { ball_type = 4, shoot_count = 1, rot = { x = 0.000, y = 157.000, z = 0.000 }},--空
		[10] = { ball_type = 4, shoot_count = 1, rot = { x = 0.000, y = 140.000, z = 0.000 }},
		[20] = { ball_type = 1, shoot_count = 1, rot = { x = 0.000, y = 180.000, z = 0.000 }}, --  multi_shoot慢速直线球
		[30] = { ball_type = 2, shoot_count = 1, rot = { x = 0.000, y = 180.000, z = 0.000 }}, --  multi_shoot快速直线球
	},
}

local extraTriggers = {
	{ config_id = 8000001, name = "AirWallVariable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "air_wall", condition = "", action = "action_AirWallVariable_Change", trigger_count = 0 },
	{ config_id = 8000002, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_Gallery_Stop", trigger_count = 0 },
	{ config_id = 8000003, name = "Enter_Play_Region", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_Enter_Play_Region", trigger_count = 1, forbid_guest = false },
	{ config_id = 8000004, name = "Interval_TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_Interval_TimeAxis_Pass", trigger_count = 0 },
	{ config_id = 8000005, name = "Separate_TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "", condition = "", action = "action_Separate_TimeAxis_Pass", trigger_count = 0 },
	{ config_id = 8000006, name = "TimeAxis_StopGallery_Fail", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery_Fail", condition = "", action = "action_TimeAxis_StopGallery_Fail", trigger_count = 0 },
	{ config_id = 8000007, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },
	{ config_id = 8000008, name = "TimeAxis_StopGallery", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery", condition = "", action = "action_TimeAxis_StopGallery", trigger_count = 0 },
}

function LF_Initialize()
	for k,v in pairs(extraTriggers) do
		table.insert(triggers, v)
		table.insert(suites[init_config.suite].triggers, v.name)
	end
	table.insert(variables,{ config_id = 50000001, name = "air_wall", value = 0})
end

--主控调用
function EX_StartGallery(context, prev_context, gallery_id, is_last_level)
	--根据当前人数加载玩法suite
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetGroupTempValue(context, "player_count", #uid_list, {})

	if nil ~= defs.play_suites and nil ~= defs.play_suites[#uid_list] then		
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.play_suites[#uid_list])		
	end
	ScriptLib.SetGroupTempValue(context, "is_last_level", is_last_level, {})
	--开启gallery
	ScriptLib.StartGallery(context, gallery_id)
	ScriptLib.SetGroupTempValue(context, "gallery_id", gallery_id, {})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] EX_StartGallery. Gallery Started. player_count@"..#uid_list.." --------------")
	--玩法启动
	ScriptLib.SetGroupVariableValue(context, "air_wall", 0)
	LF_Start_Play(context)

	return 0
end

function action_Group_Load(context, evt)
	if nil == defs.air_wall then
		return 0
	end
	if 1 == ScriptLib.GetGroupVariableValue(context, "air_wall") then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.CreateGadget(context, { config_id = v })
		end
	end
	return 0
end

function action_AirWallVariable_Change(context, evt)
	if nil == defs.air_wall then
		return 0
	end
	if 1 == evt.param1 and 0 == evt.param2 then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.CreateGadget(context, { config_id = v })
		end
	elseif 0 == evt.param1 and 1 == evt.param2 then
		for i,v in ipairs(defs.air_wall) do
			ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, v)
		end	
	end
	return 0
end

--evt.param2: 1-失败 0-成功
function action_Gallery_Stop(context, evt)
	--卸载玩法suite
	if nil ~= defs.play_suites then
		for k,v in pairs(defs.play_suites) do
			ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, v)
		end	
	end

	--清除全部球
	LF_ClearAllBalls(context)
	--停止时间轴
	ScriptLib.EndAllTimeAxis(context)

	if 3 ~= evt.param3 then
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)
		--ScriptLib.InitTimeAxis(context, "StopGallery_Fail", { 3 } , false) 9.21修改 失败不要延时结束
		ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {1, base_info.group_id})
	else
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)--最后一关无等待
		if is_last_level then
			ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {0, base_info.group_id})
		else
			ScriptLib.InitTimeAxis(context, "StopGallery", { 3 } , false)
		end	
	end
	ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] Gallery stoped. reason@".. evt.param3.." --------------")
	return 0
end

function action_Enter_Play_Region(context, evt)
	--根据当前人数加载suite
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] Enter_Play_Region. player_count@"..#uid_list)
	--地城Group没有卸载 TriggerCount 1 直接上就完了
	if nil ~= defs.enter_suites and nil ~= defs.enter_suites[#uid_list] then		
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.enter_suites[#uid_list])		
	end
	return 0
end
---------------------------------------------------------------------------------------------------------------

function LF_Start_Play(context)

	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	local target = 0
	if player_count > 1 then
		target = ScriptLib.GetCharAmusementGalleryTarget(context, gallery_id, true)
	else
		target = ScriptLib.GetCharAmusementGalleryTarget(context, gallery_id, false)
	end
	ScriptLib.SetGroupTempValue(context, "cur_score", target, {})
	ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["max_score"]= target} )
	
	--order_index: 当前执行到defs.order列表中的哪一位
	ScriptLib.SetGroupTempValue(context, "order_index", 1, {})
	--rand_index： 本次在当前难度的池中，随机到哪一条发射序列
	ScriptLib.SetGroupTempValue(context, "rand_index", 1, {})
	--这个计数用于使TimeAxis名字不同
	ScriptLib.SetGroupTempValue(context, "time_axis_index", 0, {})
	--埋点计数
	ScriptLib.SetGroupTempValue(context, "hit", 0, {})
	ScriptLib.SetGroupTempValue(context, "wave_num", 0, {})
	
	local order = defs.order
	if 28008 == ScriptLib.GetGroupTempValue(context, "gallery_id", {}) then
		order = defs.order_yunjin
	end
	if nil == order[1] or nil == defs.seq[order[1]] then
		return 0
	end
	LF_StartSequenceShoot_Normal(context, defs.seq[order[1]])
	
	return 0
end

function action_TimeAxis_StopGallery(context, evt)
	ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {0, base_info.group_id})
	return 0
end

function action_TimeAxis_StopGallery_Fail(context, evt)
	ScriptLib.ExecuteGroupLua(context, cfg.main_group, "EX_EndPlayStage", {1, base_info.group_id})
	return 0
end

function LF_HandleOrderFinish(context, is_normal)

	--order_index ++
	local ret = ScriptLib.ChangeGroupTempValue(context, "order_index", 1, {})
	if -1 == ret then 
		ScriptLib.SetGroupTempValue(context, "order_index", 1, {})
	end
	local order_index = ScriptLib.GetGroupTempValue(context, "order_index", {})
	if defs.high_reminder ~= nil and defs.high_from ~= nil and defs.high_from == order_index then 
		ScriptLib.ShowReminder(context, defs.high_reminder)
	end

	--区分云锦、北斗
	local order = defs.order
	if 28008 == ScriptLib.GetGroupTempValue(context, "gallery_id", {}) then
		order = defs.order_yunjin
	end
	--全order结束，则循环最后一order
	if order_index > #order then
		order_index = #order
		ScriptLib.SetGroupTempValue(context, "order_index", order_index, {})
	end
	ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] LF_HandleOrderFinish. is_normal@"..is_normal.." next order_index@".. order_index)
	ScriptLib.ChangeGroupTempValue(context, "time_axis_index", 1, {})
	--当前是齐射阶段
	if 1 == is_normal then 

		--下一个是齐射还是不齐射
		if 0 < defs.diff_from and order_index >= defs.diff_from then 
			LF_StartSequenceShoot_Diff(context, defs.seq[order[order_index]])
		else
			LF_StartSequenceShoot_Normal(context, defs.seq[order[order_index]])
		end
	else
		LF_StartSequenceShoot_Diff(context, defs.seq[order[order_index]])
	end
	--埋点
	ScriptLib.ChangeGroupTempValue(context, "wave_num", 1, {})
	local hit = ScriptLib.GetGroupTempValue(context, "hit", {})
	local wave_num = ScriptLib.GetGroupTempValue(context, "wave_num", {})
	ScriptLib.MarkGroupLuaAction(context, "CharAmuse_BaseBall", ScriptLib.GetDungeonTransaction(context), {["wave_num"] = wave_num, ["hit"] = hit})
	ScriptLib.SetGroupTempValue(context, "hit", 0, {})

	return 0
end

--启动时间轴 齐射
function LF_StartSequenceShoot_Normal(context, difficulty)
	--取得波次
	local order_index = ScriptLib.GetGroupTempValue(context, "order_index", {})
	--取得当前发射序列
	math.randomseed(ScriptLib.GetServerTime(context))
    local rand_index = math.random(#difficulty)
	local sequence = difficulty[rand_index]
	if nil == sequence[1] or nil == sequence[2] then
		return 0
	end
	ScriptLib.SetGroupTempValue(context, "rand_index", rand_index, {})

	local time_axis_index = ScriptLib.GetGroupTempValue(context, "time_axis_index", {})

	--起动该发射序列的时间轴
	ScriptLib.InitTimeAxis(context, "interval_"..order_index.."_"..rand_index.."_"..time_axis_index, LF_MakeTimeAxis(context, sequence[2]), false)

	ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] LF_StartSequenceShoot_Normal. rand_index@"..rand_index)

	--打出第一球
	LF_CreateBall_All(context, sequence[1][1])	

	return 0
end
--启动时间轴 单个
function LF_StartSequenceShoot_Diff(context, difficulty)
	--给每个起单独的时间轴
	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})

	for k, shoot_point in pairs(defs.shoot_points[player_count]) do
		math.randomseed(ScriptLib.GetServerTime(context))
    	local rand_index = math.random(#difficulty)
    	sequence = difficulty[rand_index]
		if nil == sequence[1] or nil == sequence[2] then
			return 0
		end
    	local time_axis_index = ScriptLib.GetGroupTempValue(context, "time_axis_index", {})
		ScriptLib.InitTimeAxis(context, tostring(shoot_point).."_"..rand_index.."_"..time_axis_index, LF_MakeTimeAxis(context, sequence[2]), false)
		ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] LF_StartSequenceShoot_Diff. InitTimeAxis@"..tostring(shoot_point).."_"..rand_index)
		--打出第一球
		LF_CreateBall_Single(context, shoot_point, sequence[1][1])
	end

	return 0
end

function action_Interval_TimeAxis_Pass(context, evt)
	local name = string.sub(evt.source_name, 1, 8)

	if "interval" ~= name then 
		return 0
	end

	local order_index = ScriptLib.GetGroupTempValue(context, "order_index", {})
	local rand_index = ScriptLib.GetGroupTempValue(context, "rand_index", {})

	local order = defs.order
	if 28008 == ScriptLib.GetGroupTempValue(context, "gallery_id", {}) then
		order = defs.order_yunjin
	end
	local difficulty = order[order_index]
	local sequence = defs.seq[difficulty][rand_index]
	ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] Interval_TimeAxis_Pass. order_index@"..order_index.." difficulty@".. difficulty .." rand_index@"..rand_index.." evt.param1@"..evt.param1)
	--时间轴中间点
	if evt.param1 < #sequence[1] then
		LF_CreateBall_All(context, sequence[1][evt.param1 + 1])	
	--时间轴结束
	else
		LF_HandleOrderFinish(context, 1)
	end

	return 0
end

function action_Separate_TimeAxis_Pass(context, evt)
	local name = string.sub(evt.source_name, 1, 8)
	if "interval" == name then 
		return 0
	end

	local order_index = ScriptLib.GetGroupTempValue(context, "order_index", {})
	local order = defs.order
	if 28008 == ScriptLib.GetGroupTempValue(context, "gallery_id", {}) then
		order = defs.order_yunjin
	end
	if nil == order[order_index] then 
		return 0
	end

	--还原 发射点的config_id 和 射击序列的index
	local div = string.find(evt.source_name, "_")
	if nil == div then 
		return 0
	end
	local config_id = tonumber(string.sub(evt.source_name, 1, div - 1))
	local rand_index = tonumber(string.sub(evt.source_name, div + 1, string.len(evt.source_name)))
	--校验
	local difficulty = defs.seq[order[order_index]]
	local sequence = difficulty[rand_index]
	if nil == gadgets[config_id] or nil == sequence then 
		return 0
	end
	ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] Separate_TimeAxis_Pass. source_name@"..evt.source_name.. " config_id@"..config_id.." rand_index@"..rand_index)
	--时间轴中间点
	if evt.param1 < #sequence[1] then
		LF_CreateBall_Single(context, gadgets[config_id], sequence[1][evt.param1 + 1])
	--时间轴结束
	else
		LF_HandleOrderFinish(context, 0)
	end

	return 0
end

--全发射点创球
--shoot_type: 射击模式 1-单个普通 2-单个快速 3-双普 4-双快 5-三普 6-三快 7-单普通左旋 8-单快速左旋 9-单普通右旋 10-单快速右旋 20+ multi_shoot
function LF_CreateBall_All(context, shoot_type)

	ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] LF_CreateBall_All. shoot_type@"..shoot_type)

	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})

	if 20 < shoot_type then

		for k, shoot_point in pairs(defs.shoot_points[player_count]) do
			local pos = { 
				x = gadgets[shoot_point].pos.x, 
				y = gadgets[shoot_point].pos.y, 
				z = gadgets[shoot_point].pos.z
			}
			LF_Create_MultiShootBall(context, pos, shoot_type)	    
		end	

	else
		if nil == cfg.shoot_info[shoot_type] then
			return 0
		end

		local ball_type = cfg.shoot_info[shoot_type].ball_type
		--连发次数
		local shoot_count = cfg.shoot_info[shoot_type].shoot_count
		--出生朝向
		local rot = cfg.shoot_info[shoot_type].rot

		if 7 == shoot_type then
			for k, shoot_point in pairs(defs.shoot_points[player_count]) do
				local pos = { 
					x = gadgets[shoot_point].pos.x, 
					y = gadgets[shoot_point].pos.y, 
					z = gadgets[shoot_point].pos.z
				}
				LF_Create_DualCurveBall(context, pos)		    
			end

		else	
			for k, shoot_point in pairs(defs.shoot_points[player_count]) do

				for i = 1, shoot_count do
					local pos = { 
						x = gadgets[shoot_point].pos.x, 
						y = gadgets[shoot_point].pos.y, 
						z = gadgets[shoot_point].pos.z + (i-1)*defs.multishoot_distance
					}
					LF_CreateBallFromPool(context, pos, rot, ball_type)
			    end
			end
		end
	end

	return 0
end

--单发射点创球
--shoot_type: 射击模式 1-单个普通 2-单个快速 3-双普 4-双快 5-三普 6-三快 7-单普通左旋 8-单快速左旋 9-单普通右旋 10-单快速右旋 20+ multi_shoot
function LF_CreateBall_Single(context, shoot_point, shoot_type)

	ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] LF_CreateBall_Single. shoot_type@"..shoot_type)

	if 20 < shoot_type then
		local pos = { 
			x = gadgets[shoot_point].pos.x, 
			y = gadgets[shoot_point].pos.y, 
			z = gadgets[shoot_point].pos.z
		}
		LF_Create_MultiShootBall(context, pos)	    

	else
		if nil == cfg.shoot_info[shoot_type] then
			return 0
		end

		local ball_type = cfg.shoot_info[shoot_type].ball_type
		--连发次数
		local shoot_count = cfg.shoot_info[shoot_type].shoot_count
		--出生朝向
		local rot = cfg.shoot_info[shoot_type].rot

		if 7 == shoot_type then		
			local pos = { 
				x = gadgets[shoot_point].pos.x, 
				y = gadgets[shoot_point].pos.y, 
				z = gadgets[shoot_point].pos.z
			}
			LF_Create_DualCurveBall(context, pos)		    		
		else	
			for i = 1, shoot_count do
				local pos = { 
					x = gadgets[shoot_point].pos.x, 
					y = gadgets[shoot_point].pos.y, 
					z = gadgets[shoot_point].pos.z + (i-1)*defs.multishoot_distance
				}
				LF_CreateBallFromPool(context, pos, rot, ball_type)
	   		end

		end

	end

	return 0
end

function LF_CreateBallFromPool(context, pos_table, rot_table, ball_type)

	local ball_state = 0
	if defs.high_from ~= nil and defs.high_from <= ScriptLib.GetGroupTempValue(context, "order_index", {}) then
		ball_state = 1
	end

	for ik , iv in pairs(defs.ball_pool[ball_type]) do
	    local ret = ScriptLib.CreateGadgetByParamTable(context, {config_id = iv, pos = pos_table, rot = rot_table, sgv_key = {"SGV_BaseBall_State"}, sgv_value = {ball_state} })
	    if 0 == ret then	    	
	       	return 0
	    end
	end 
	ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] LF_CreateBallFromPool. Create gadget failed. ")
	return 0
end

function LF_Create_DualCurveBall(context, pos_table)

	local ball_state = 0
	if defs.high_from ~= nil and defs.high_from <= ScriptLib.GetGroupTempValue(context, "order_index", {}) then
		ball_state = 1
	end
	--左旋 
	for ik , iv in pairs(defs.ball_pool[4]) do
	    local ret = ScriptLib.CreateGadgetByParamTable(context, {config_id = iv, pos = pos_table, rot = { x = 0.000, y = 140.000, z = 0.000 }, sgv_key = {"SGV_BaseBall_State"}, sgv_value = {ball_state} })
	    if 0 == ret then	    	
	       	break
	    end
	end 
	--右旋
	for ik , iv in pairs(defs.ball_pool[3]) do
	    local ret = ScriptLib.CreateGadgetByParamTable(context, {config_id = iv, pos = pos_table, rot = { x = 0.000, y = 220.000, z = 0.000 }, sgv_key = {"SGV_BaseBall_State"}, sgv_value = {ball_state} })
	    if 0 == ret then	    	
	       	break
	    end
	end 

	return 0
end

function LF_Create_MultiShootBall(context, pos_table, shoot_type)

	local ball_state = 0
	if defs.high_from ~= nil and defs.high_from <= ScriptLib.GetGroupTempValue(context, "order_index", {}) then
		ball_state = 1
	end

	if nil == defs.multi_shoot[shoot_type] then
		return 0
	end

	for i = 1, #defs.multi_shoot[shoot_type] do

		local pos = { x = pos_table.x + defs.multi_shoot[shoot_type][i].x, y = pos_table.y, z = pos_table.z + defs.multi_shoot[shoot_type][i].z }
		for ik , iv in pairs(defs.ball_pool[2]) do
		    local ret = ScriptLib.CreateGadgetByParamTable(context, {config_id = iv, pos = pos, rot = { x = 0.000, y = 180.000, z = 0.000 }, sgv_key = {"SGV_BaseBall_State"}, sgv_value = {ball_state} })
		    if 0 == ret then	    	
		       	break
	    	end
		end 
	end

	return 0
end

--玩家击球
--param1: 基础分
--param2：是否翻倍球
function SLC_CharAmusement_BaseBallHit(context, param1, param2)

	if 1 ~= param1 and 3 ~= param1 then--校验 高速球3分，普通速度球1分
		return 0
	end

	local multiply = 1
	if 0 < param2 then
		multiply = 2
	end
	--移除球
	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, config_id)
	ScriptLib.PrintContextLog(context,"## [CharAmuse_BaseBall] SLC_CharAmusement_BaseBallHit. config_id@"..config_id)
	--加分
	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["add_score"]= 1*param1*multiply } )
	ScriptLib.CharAmusementUpdateScore(context, cfg.main_group, 1, 1*param1*multiply)--给MultStage更新分数 服务器侧埋点用
	ScriptLib.ChangeGroupTempValue(context, "cur_score", -1*param1*multiply , {})
	ScriptLib.ChangeGroupTempValue(context, "hit", 1, {})--埋点计数
	--是否结束
	if 0 >= ScriptLib.GetGroupTempValue(context, "cur_score", {}) then
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)
		ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["is_last_level"] = is_last_level, ["is_finish"] = true, ["is_success"] = true } )
		ScriptLib.StopGallery(context, gallery_id, false)

		local hit = ScriptLib.GetGroupTempValue(context, "hit", {})
		local wave_num = ScriptLib.GetGroupTempValue(context, "wave_num", {})
		ScriptLib.MarkGroupLuaAction(context, "CharAmuse_BaseBall", ScriptLib.GetDungeonTransaction(context), {["wave_num"] = wave_num, ["hit"] = hit})
		return 0
	end

	return 0
end
--球自杀
function SLC_CharAmusement_BaseBallDie(context)

	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
	ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, config_id)

	return 0
end

function LF_ClearAllBalls(context)
	for k,v in pairs(defs.ball_pool) do
		for ik, iv in pairs(v) do
			ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, iv )
		end
	end
	return 0
end

function LF_MakeTimeAxis(context, time_table)
	local t = {}
	for i = 1, #time_table do 
		local num = 0
		for j = i, 1, -1 do
			num = num + time_table[j]
		end
		table.insert(t, num)
	end
	return t
end

LF_Initialize()