
--- ServerUploadTool Save to [/root/env/data/lua/common/V3_2]  ---

--[[======================================
||	filename:	CharAmuse_Pillar
||	owner: 		weiwei.sun
||	description: 	3.2奇趣秘园 局内逻辑 打桩
||	LogName:	## [CharAmuse_Pillar]
||	Protection:	
=======================================]]
--[[

local defs = {
    --玩法范围region cube
    play_region = 12111,
    --进入时加载内容，例如棒球发球机。依次为单人、2人。。
    enter_suites = {2,2,2,2},
    --启动时加载内容，例如史莱姆球。依次为单人、2人。。
    play_suites = {},
    --挑战限时秒
    limit_time = 100000,
    --挑战目标
    target = 150,

    clear_delay = 100000,

    --刷出延迟
    refresh_delay = 3,
    
    -----打桩配置-----
    matrix = 
    {
        {12001,12002,12003,12004,12005,12049},
        {12006,12007,12008,12009,12010,12050},
        {12011,12012,12013,12014,12015,12051},
        {12016,12017,12018,12019,12020,12052},
        {12021,12022,12023,12024,12025,12053},
        {12054,12055,12056,12057,12058,12059},
    },

    rounds = 
    {   --第一个数字表示普通地板个数，第二个数字表示高级地板个数 迭代：第三个数字为特殊布设ID，舍弃前两个数字读spec
        --单人玩家
        [1] = {{1,0},{1,1},{1,1},{1,1},{0,1},{0,1},{0,1},{0,1},{0,1}},
        --2人
        [2] = {{2,0},{2,1},{2,1},{0,1},{0,1},{0,1},{0,1},{0,1},{0,1}},
        --3人
        [3] = {{3,0},{2,1},{1,2},{0,2},{0,2},{0,2},{0,2},{0,2},{0,2}},
        --4人
        [4] = {{4,0},{2,2},{2,2},{0,2},{0,2},{0,2},{0,2},{0,2},{0,2}}
    },

    spec = 
    {-- pillars = {柱子ConfigID列表}, reward_suite = {奖励suite}
		[1] = { pillars = {}, reward_suite = {}}
    }

    high_from = 4,
    --每个GalleryID 特殊奖励用哪个Suite
    --1000为测试用
    reward_by_gallery = 
    {
        [1000] = {5},
        [28003] = {5,6},
        [28004] = {5,6},
    },

    high_reward_by_gallery = 
    {
        [1000] = {5},
        [28003] = {7},
        [28004] = {7},
    },
    simple_reward_suite = 4,
	
}

]]
local cfg = {
	--主控GroupID
	main_group = 251008007,

	--root格备选区
	corner_area = 
	{
		[1] = {11,21,31,12,13,22},
		[2] = {14,15,16,25,26,36},
		[3] = {64,65,66,55,56,46},
		[4] = {61,62,63,51,52,41}
	},
	--4个root格备选区对应的leaf格备选区域
	--这个是能算的但数学不好直接列出来
	--当计算延申时，首位横纵延申 二三位横向延申 四五位纵向延伸
	leaf_area = 
	{
		[1] = {55,53,64,35,46},
		[2] = {52,41,63,32,54},
		[3] = {22,31,13,42,24},
		[4] = {25,23,14,45,36},
	},
	--1*1柱子可出现范围 彼此互不相邻
	normal_area = 
	{
		21,41,61,13,33,53,25,45,65
	},
	--矩阵内环，列出来更方便
	center_area = 
	{
		22,23,24,25,
		32,	     35,
		42,43,44,45,
	},
	--格子边长
	tile_length = 5,
	--最后一个柱子打下去后多久开始下一波
	clear_delay = 30,
	hp = 
	{	--温迪
		[28003] = 
		{	--人数 = {普通桩，高级桩}
			[1] = {1,2},
			[2] = {1,3},
			[3] = {1,4},
			[4] = {1,4},
		},
		--xiao
		[28004] =
		{
			[1] = {2,4},
			[2] = {2,6},
			[3] = {2,8},
			[4] = {2,8},
		}
	}
}

local extraTriggers = {
	{ config_id = 8000002, name = "TimeAxis_StopGallery", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery", condition = "", action = "action_TimeAxis_StopGallery", trigger_count = 0 },
	{ config_id = 8000003, name = "ClearDelay_TimeAxis_Pass", event = EventType.EVENT_TIME_AXIS_PASS, source = "ClearDelay", condition = "", action = "action_ClearDelay_TimeAxis_Pass", trigger_count = 0 },
	{ config_id = 8000004, name = "Gallery_Stop", event = EventType.EVENT_GALLERY_STOP, source = "", condition = "", action = "action_Gallery_Stop", trigger_count = 0 },
	{ config_id = 8000005, name = "TimeAxis_StopGallery_Fail", event = EventType.EVENT_TIME_AXIS_PASS, source = "StopGallery_Fail", condition = "", action = "action_TimeAxis_StopGallery_Fail", trigger_count = 0 },
	{ config_id = 8000007, name = "TimeAxis_NewRound", event = EventType.EVENT_TIME_AXIS_PASS, source = "NewRound", condition = "", action = "action_TimeAxis_NewRound", trigger_count = 0 },
	{ config_id = 8000008, name = "AirWallVariable_Change", event = EventType.EVENT_VARIABLE_CHANGE, source = "air_wall", condition = "", action = "action_AirWallVariable_Change", trigger_count = 0 },
	{ config_id = 8000009, name = "Group_Load", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_Group_Load", trigger_count = 0 },

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
	--加载玩法suite
	if nil ~= defs.play_suites then
		for k,v in pairs(defs.play_suites) do
			ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v)
		end	
	end
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.SetGroupTempValue(context, "player_count", #uid_list, {})

	ScriptLib.SetGroupTempValue(context, "is_last_level", is_last_level, {})

	--开启gallery
	ScriptLib.StartGallery(context, gallery_id)
	ScriptLib.SetGroupTempValue(context, "gallery_id", gallery_id, {})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] EX_StartGallery. player_count@"..#uid_list.." --------------")
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

--evt.param2: 1-成功 0-失败
function action_Gallery_Stop(context, evt)
	--卸载玩法suite
	if nil ~= defs.play_suites then
		for k,v in pairs(defs.play_suites) do
			ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, v)
		end	
	end

	LF_ClearRound(context)
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
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] Gallery stoped. reason@".. evt.param3.." --------------")

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

	ScriptLib.SetGroupTempValue(context, "round", 0, {})

	LF_StartRound(context)
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

function LF_StartRound(context)

	ScriptLib.SetGroupTempValue(context, "is_round_clear", 0, {})

	--清理
	ScriptLib.SetGroupTempValue(context, "root_config", 0, {})
	ScriptLib.SetGroupTempValue(context, "leaf_config", 0, {})
	ScriptLib.SetGroupTempValue(context, "spec_index", 0, {})

	--round++
	ScriptLib.ChangeGroupTempValue(context, "round", 1, {})
	local round = ScriptLib.GetGroupTempValue(context, "round", {})

	--埋点
	local hit = ScriptLib.GetGroupTempValue(context, "hit", {})

	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_StartRound. New round@"..round)

	local player_count = ScriptLib.GetGroupTempValue(context, "player_count", {})
	--如果已经到了LD配置尽头，则从头循环
	if round > #defs.rounds[player_count] then
		round = 1
		ScriptLib.SetGroupTempValue(context, "round", round, {}) 
		ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_StartRound. All round finished. Set to 1.")
	end

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})

	--本轮要升起的柱子列表
	local pillar_list = defs.rounds[player_count][round]
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_StartRound. pillar_list@"..table.concat( pillar_list, ", "))

	local avalid_normal_pos = {}

	--本轮是否放置spec布设,若是，则不产生随机布设---------------------------------
	if nil ~= pillar_list[3] and 0 < pillar_list[3] then
		if nil ~= defs.spec[pillar_list[3]] then
			for i,v in ipairs(defs.spec[pillar_list[3]].pillars) do
				LF_RisePillar(context, v, 1, gallery_id, player_count)
			end
			ScriptLib.SetGroupTempValue(context, "spec_index", pillar_list[3], {})
			return 0
		end
	end

	--放置高级柱子-----------------------------------------
	local root_pos = 0
	local leaf_pos = 0
	local extend_list = {}
	--若只有1个高级，则在center_area随机一个
	if 1 == pillar_list[2] then
		root_pos = LF_SelectSingleMainPillar(context)
		local root_config = LF_GetConfigIdByPos(context, root_pos)
		--记录
		ScriptLib.SetGroupTempValue(context, "root_config", root_config, {})
		--决定奖励的延伸方向extend_dir,并延申2格
		extend_list = LF_GetExtendArea(context, root_pos, 0)

		--升起
		LF_RisePillar(context, root_config, 1, gallery_id, player_count)
	--若2个高级 则一个root 一个leaf，2以上当做2
	elseif 2 <= pillar_list[2] then
		--选Root柱子
		root_pos = LF_SelectRootPillar(context)
		local root_config = LF_GetConfigIdByPos(context, root_pos)
		--选Leaf柱子
		leaf_pos = LF_SelectLeafPillar(context)
		local leaf_config = LF_GetConfigIdByPos(context, leaf_pos)
		--记录
		ScriptLib.SetGroupTempValue(context, "root_config", root_config, {})
		ScriptLib.SetGroupTempValue(context, "leaf_config", leaf_config, {})

		--决定奖励的延伸方向extend_dir,并延申2格
		extend_list = LF_GetExtendArea(context, root_pos, 0)
		local leaf_extend_list = LF_GetExtendArea(context, leaf_pos, root_pos)
		for k,v in pairs(leaf_extend_list) do
			table.insert(extend_list, v)
		end
		--升起
		LF_RisePillar(context, root_config, 1, gallery_id, player_count)
		LF_RisePillar(context, leaf_config, 1, gallery_id, player_count)
	end

	--放置普通柱子-----------------------------------------
	if 0 >= pillar_list[1] or 5 < pillar_list[1] then --数量校验
		return 0
	end
	--将extend_list覆盖范围从普通柱子备选列表中移除
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_StartRound. normal_area@" ..table.concat( cfg.normal_area, ", ").. " extend_list@"..table.concat( extend_list, ", ").. " root_pos@"..root_pos.." leaf_pos@"..leaf_pos)
	for k,v in pairs(cfg.normal_area) do
		if false == LF_CheckIsInTable(context, v, extend_list) then 
			if false == LF_CheckIsAround(context, v, root_pos) and false == LF_CheckIsAround(context, v, leaf_pos) then
				table.insert(avalid_normal_pos, v)
			end
		end
	end
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_StartRound. Get avalid_normal_pos@" ..table.concat( avalid_normal_pos, ", ").. ". Need rise num@" .. pillar_list[1])
	if 0 >= #avalid_normal_pos then
		return 0
	end
	local seed = tostring(ScriptLib.GetServerTime(context)):reverse():sub(1, 6)
	math.randomseed(seed)
	for i = 1, pillar_list[1] do
		local rand_index = math.random(#avalid_normal_pos)
		--升起
		local normal_config = LF_GetConfigIdByPos(context, avalid_normal_pos[rand_index])
		table.remove(avalid_normal_pos, rand_index)
		LF_RisePillar(context, normal_config, 0, gallery_id, player_count)
	end
	return 0
end

--取得两个延展格
--root_pos: 0-root柱子； 非空- leaf柱子 决定延展方式
function LF_GetExtendArea(context, pos, root_pos)
	
	local y = pos%10
	local x_raw = pos - y

	local temp = {}
	--离边缘距离
	local up = x_raw - 10
	local down = 60 - x_raw
	local left = y - 1
	local right = 6 - y
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_GetExtendArea. source x@"..x_raw.." y@"..y..". Distance up@"..up.. " down@".. down .." left@".. left .." right@"..right.. ". Reference root_pos@"..root_pos)
	--main柱子或root柱子
	if 0 == root_pos then
		if 20 < up then
			table.insert(temp, "up")
		elseif 20 < down then
			table.insert(temp, "down")
		end
		if 2 < right then
			table.insert(temp, "right")
		elseif 2 < left then
			table.insert(temp, "left")
		end
	--leaf柱子
	else
		--如果本格和Root同行或同列，则不向该方向延展
		--纵向同列 向左或向右延展
		if math.floor(root_pos/10) == x_raw then
			if 2 < right then
				table.insert(temp, "right")
			else
				table.insert(temp, "left")
			end
		--横向同列 向上或向下延展
		elseif root_pos%10 == y then
			if 20 < up then
				table.insert(temp, "up")
			else
				table.insert(temp, "down")
			end
		--不同行列
		else
			if 20 < up then
				table.insert(temp, "up")
			elseif 20 < down then
				table.insert(temp, "down")
			end
			if 2 < right then
				table.insert(temp, "right")
			elseif 2 < left then
				table.insert(temp, "left")
			end
		end

	end

	math.randomseed(ScriptLib.GetServerTime(context) + 999)
	local extend_list = { }
	if 0 == #temp then
		temp = { "up" }
		ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_GetExtendArea. Cannot get room for extand area!! Check distance rule.")
		return 0
	end
	local rand_index = math.random(1, #temp)
	if "up" == temp[rand_index] then
		table.insert(extend_list, ( x_raw - 20 + y))
		table.insert(extend_list, ( x_raw - 10 + y))
	elseif "down" == temp[rand_index] then
		table.insert(extend_list, ( x_raw + 20 + y))
		table.insert(extend_list, ( x_raw + 10 + y))
	elseif "left" == temp[rand_index] then
		table.insert(extend_list, ( x_raw + y - 2))
		table.insert(extend_list, ( x_raw + y - 1))
	elseif "right" == temp[rand_index] then
		table.insert(extend_list, ( x_raw + y + 2))
		table.insert(extend_list, ( x_raw + y + 1))
	end

	if nil == extend_list[1] then
		return 0
	end

	--最后记录这个格子朝哪个方向摆奖励 1234上下左右
	--通过取extend_list里的一个格子 和 传入的pos 做比较 来知道位置
	local sample_pos = extend_list[1]
	--在上
	local x = math.floor( x_raw/10)
	if x > math.floor(sample_pos/10) then
		if 0 == root_pos then
			ScriptLib.SetGroupTempValue(context, "root_extend_dir", 1, {})
		else
			ScriptLib.SetGroupTempValue(context, "leaf_extend_dir", 1, {})
		end		
		ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_GetExtendArea. Final extend_list@".. table.concat( extend_list, ", ") .. ". extend_dir@1")
		return extend_list
	end
	--在下
	if x < math.floor(sample_pos/10) then
		if 0 == root_pos then
			ScriptLib.SetGroupTempValue(context, "root_extend_dir", 2, {})
		else
			ScriptLib.SetGroupTempValue(context, "leaf_extend_dir", 2, {})
		end	
		ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_GetExtendArea. Final extend_list@".. table.concat( extend_list, ", ") .. ". extend_dir@2")
		return extend_list
	end
	--在左
	if y > sample_pos%10 then
		if 0 == root_pos then
			ScriptLib.SetGroupTempValue(context, "root_extend_dir", 3, {})
		else
			ScriptLib.SetGroupTempValue(context, "leaf_extend_dir", 3, {})
		end	
		ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_GetExtendArea. Final extend_list@".. table.concat( extend_list, ", ") .. ". extend_dir@3")
		return extend_list
	end
	--在右
	if y < sample_pos%10 then
		if 0 == root_pos then
			ScriptLib.SetGroupTempValue(context, "root_extend_dir", 4, {})
		else
			ScriptLib.SetGroupTempValue(context, "leaf_extend_dir", 4, {})
		end	
		ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_GetExtendArea. Final extend_list@".. table.concat( extend_list, ", ") .. ". extend_dir@4")
		return extend_list
	end
	return 0
end

function LF_ClearRound(context)
	--移除创生金币
	for k,v in pairs(defs.gadget_pool) do
		for ik, iv in pairs(v) do
			ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, iv)
		end
	end
	--移除因spec布设添加的额外suite
	for i = 3, #suites do
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i)
	end
	--1是空Suite 2是柱子Suite 其余是各种奖励suite
	for k,v in pairs(suites[2].gadgets) do
		ScriptLib.SetGadgetStateByConfigId(context, v, 0)
	end
	local round = ScriptLib.GetGroupTempValue(context, "round", {})
	ScriptLib.MarkGroupLuaAction(context, "CharAmuse_Pillar", ScriptLib.GetDungeonTransaction(context), {["wave_num"] = round})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_ClearRound.")
	return 0
end

--本轮柱子全部打落
function LF_IsRoundFinish(context)
	for k , v in pairs(defs.matrix) do
		for ik, iv in pairs(v) do
			local state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, iv)
			if 201 == state or 202 == state then
				ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_IsRoundFinish. UnFinished@"..iv)		
				return false
			end
		end
	end
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_IsRoundFinish. Finished.")
	return true
end

function action_ClearDelay_TimeAxis_Pass(context, evt)

	LF_ClearRound(context)
	LF_StartRound(context)

	return 0
end

--创建奖励
function SLC_CharAmusePillar_TryCreatReward(context)


	local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.source_entity_id })
	if 0 == config_id or -1 == config_id then
		return 0
	end
	local from_state = ScriptLib.GetGadgetStateByConfigId(context, base_info.group_id, config_id)
	if 201 ~= from_state and 202 ~= from_state then 
		return 0
	end

	local spec_index = ScriptLib.GetGroupTempValue(context, "spec_index", {})

	--降下柱子
	ScriptLib.SetGadgetStateByConfigId(context, config_id, 0)
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] SLC_CharAmusePillar_TryCreatReward. config_id@"..config_id)


	--非spec布设 创建奖励金币
	if 0 >= spec_index then
		local root_config = ScriptLib.GetGroupTempValue(context, "root_config", {})
		local leaf_config = ScriptLib.GetGroupTempValue(context, "leaf_config", {})

		if root_config == config_id then
			local root_extend_dir = ScriptLib.GetGroupTempValue(context, "root_extend_dir", {})
			LF_Create_Reward(context, LF_GetRandRewardSuite(context), gadgets[config_id].pos, root_extend_dir)
		elseif leaf_config == config_id then
			local leaf_extend_dir = ScriptLib.GetGroupTempValue(context, "leaf_extend_dir", {})
			LF_Create_Reward(context, LF_GetRandRewardSuite(context), gadgets[config_id].pos, leaf_extend_dir)
		else
			LF_Create_Reward(context, defs.simple_reward_suite, gadgets[config_id].pos, 0)
		end
	end

	--是否本轮柱子全部打落
	if LF_IsRoundFinish(context) then
		ScriptLib.SetGroupTempValue(context, "is_round_clear", 1, {})
		if nil ~= defs.clear_delay then
			ScriptLib.InitTimeAxis(context, "ClearDelay", { defs.clear_delay } , false)
		else
			ScriptLib.InitTimeAxis(context, "ClearDelay", { cfg.clear_delay } , false)
		end
		
		--是否有spec布设，若是则创建对应奖励suite
		if 0 < spec_index and nil ~= defs.spec[spec_index] then
			for i, v in pairs(defs.spec[spec_index].reward_suite) do
				ScriptLib.AddExtraGroupSuite(context, base_info.group_id, v)
			end
			return 0
		end
	end

	return 0
end

function LF_GetRandRewardSuite(context)
	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	local round = ScriptLib.GetGroupTempValue(context, "round", {})
	local reward_suites= {}
	
	if -1 == gallery_id or 0 == gallery_id then
		gallery_id = 1000 --无外围测试用
	end

	if round >= defs.high_from then
		reward_suites = defs.high_reward_by_gallery[gallery_id]
	else
		reward_suites = defs.reward_by_gallery[gallery_id] 
	end

	local rand_index = math.random(1, #reward_suites)
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_GetRandRewardSuite. Gallery_id@"..gallery_id.. " rand_index@"..rand_index.. " result@".. reward_suites[rand_index])
	return reward_suites[rand_index]
end

--将指定suite内的entity，以pos为轴，按dir转置后创生
function LF_Create_Reward(context, suite, target_pos, dir)
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_Create_Reward. suite@"..suite.. " pivot_pos@".. target_pos.x..","..target_pos.z.." dir@".. dir)
	local gadget_list = suites[suite].gadgets
	local pivot_pos = gadgets[gadget_list[1]].pos
	for i,v in ipairs(suites[suite].gadgets) do
		--原本和pivot之间的相对距离
		local origin_offset_x = math.abs(gadgets[v].pos.x - pivot_pos.x)
		local origin_offset_z = math.abs(gadgets[v].pos.z - pivot_pos.z)
		--ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_Create_Reward. origin_offset_x@"..origin_offset_x.. " origin_offset_z@".. origin_offset_z)
		local final_pos_x = 0
		local final_pos_z = 0
		--1234上下左右
		if 1 == dir or 0 == dir then
			final_pos_x = target_pos.x + origin_offset_x
			final_pos_z = target_pos.z + origin_offset_z
			LF_CreateGadgetFromPool(context, gadgets[v].gadget_id, { x = final_pos_x, y = gadgets[v].pos.y, z = final_pos_z }, gadgets[v].rot)
		elseif 2 == dir then
			final_pos_x = target_pos.x + origin_offset_x
			final_pos_z = target_pos.z - origin_offset_z
			LF_CreateGadgetFromPool(context, gadgets[v].gadget_id, { x = final_pos_x, y = gadgets[v].pos.y, z = final_pos_z }, gadgets[v].rot)
		elseif 3 == dir then
			final_pos_x = target_pos.x - origin_offset_z
			final_pos_z = target_pos.z - origin_offset_x
			LF_CreateGadgetFromPool(context, gadgets[v].gadget_id, { x = final_pos_x, y = gadgets[v].pos.y, z = final_pos_z }, gadgets[v].rot)
		elseif 4 == dir then
			final_pos_x = target_pos.x + origin_offset_z
			final_pos_z = target_pos.z + origin_offset_x
			LF_CreateGadgetFromPool(context, gadgets[v].gadget_id, { x = final_pos_x, y = gadgets[v].pos.y, z = final_pos_z }, gadgets[v].rot)
		end
	end
	return 0
end

function LF_CreateGadgetFromPool(context, gadget_id, pos, rot)
	if nil == defs.gadget_pool[gadget_id] then 
		ScriptLib.PrintGroupWarning(context, "## [CharAmuse_Pillar] Gadget pool got unperpared gadget id!! gadget_id@"..gadget_id)
		return 0
	end
	for i,v in ipairs(defs.gadget_pool[gadget_id]) do
		local ret = ScriptLib.CreateGadgetByConfigIdByPos(context, v, pos, rot)
		if 0 == ret then
			--ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_Create_Reward. gadget@"..v.. " pos.x@".. pos.x.. " pos.z@"..pos.z)
			return 0
		end
	end
	ScriptLib.PrintGroupWarning(context, "## [CharAmuse_Pillar] Gadget pool has been used up!! gadget_id@"..gadget_id)
	return 0
end

function LF_SelectSingleMainPillar(context)
	math.randomseed(ScriptLib.GetServerTime(context))
	local rand_index = math.random(1, #cfg.center_area) 
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_SelectSingleMainPillar. Select from center area. rand_index@"..rand_index.. "result@"..cfg.center_area[rand_index])
	return cfg.center_area[rand_index]
end

--选出图形root柱子，返回matrix坐标
function LF_SelectRootPillar(context)
	math.randomseed(ScriptLib.GetServerTime(context))
	--随机一个4*4角落作为首选区域
	local corner_index = math.random(1, 4)
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_SelectRootPillar. first corner selection@"..corner_index)

	ScriptLib.SetGroupTempValue(context, "corner_index", corner_index, {})
	local tile_index = math.random(1, #cfg.corner_area[corner_index])

	return cfg.corner_area[corner_index][tile_index]
end

--在root柱子的矩阵内环对角5个点位中 随机一个leaf柱子
function LF_SelectLeafPillar(context)
	local corner_index = ScriptLib.GetGroupTempValue(context, "corner_index", {})
	math.randomseed(ScriptLib.GetServerTime(context) + 888)
	local leaf_tile_index = math.random(1, 5)
	local leaf_pos = cfg.leaf_area[corner_index][leaf_tile_index]
	return leaf_pos
end

function LF_GetConfigIdByPos(context, pos)
	local x = math.floor(pos/10)
	local y = pos%10
	if nil == defs.matrix[x][y] or 0 == defs.matrix[x][y] then 
		ScriptLib.PrintGroupWarning(context, "## [CharAmuse_Pillar] Pillar matrix is not complete. Check defs!")
		return 0
	end
	return defs.matrix[x][y]
end

--SGV_FallAttackPillar_MaxHP
function LF_RisePillar(context, config_id, is_deluxe, gallery_id, player_count)
	if nil == cfg.hp[gallery_id] then
		return 0
	end
	if nil == cfg.hp[gallery_id][player_count] then
		return 0
	end
	local hp_map = cfg.hp[gallery_id][player_count]
	if nil == hp_map[1] or nil == hp_map[2] then
		return 0
	end
	if 1 == is_deluxe then
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_FallAttackPillar_MaxHP", hp_map[2])
		ScriptLib.SetGadgetStateByConfigId(context, config_id, 202)
	else
		ScriptLib.SetEntityServerGlobalValueByConfigId(context, config_id, "SGV_FallAttackPillar_MaxHP", hp_map[1])
		ScriptLib.SetGadgetStateByConfigId(context, config_id, 201)
	end	
	LF_Create_Reward(context, defs.rise_reward_suite, gadgets[config_id].pos, 0)
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_RisePillar. config_id@"..config_id)
	return 0
end

--param1: 1-普通 2-大金币
function SLC_CharAmusement_CoinGet(context, param1)

	local gallery_id = ScriptLib.GetGroupTempValue(context, "gallery_id", {})
	
	if 1 == param1 then
		local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, config_id)
		ScriptLib.ChangeGroupTempValue(context, "cur_score", -1, {})
		
		ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["add_score"]= 1} )
		ScriptLib.CharAmusementUpdateScore(context, cfg.main_group, 1, 1)--给MultStage更新分数 服务器侧埋点用

	elseif 2 == param1 then 
		local config_id = ScriptLib.GetGadgetConfigId(context, { gadget_eid = context.target_entity_id })
		ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, config_id)
		if nil ~= defs.super_coin and 1 <= defs.super_coin then
			ScriptLib.ChangeGroupTempValue(context, "cur_score", -1*math.floor(defs.super_coin), {})
			ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["add_score"]= math.floor(defs.super_coin)} )
			ScriptLib.CharAmusementUpdateScore(context, cfg.main_group, 1, math.floor(defs.super_coin))--给MultStage更新分数 服务器侧埋点用
		else
			ScriptLib.ChangeGroupTempValue(context, "cur_score", -5, {})
			ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["add_score"]= 5} )
			ScriptLib.CharAmusementUpdateScore(context, cfg.main_group, 1, 5)--给MultStage更新分数 服务器侧埋点用
		end
	end

	--挑战完成
	if 0 >= ScriptLib.GetGroupTempValue(context, "cur_score", {}) then
		local is_last_level = (ScriptLib.GetGroupTempValue(context, "is_last_level", {}) >= 1)
		ScriptLib.UpdatePlayerGalleryScore(context, gallery_id, { ["is_last_level"] = is_last_level, ["is_finish"] = true, ["is_success"] = true } )
		ScriptLib.StopGallery(context, gallery_id, false)
		return 0
	end

	--是否本轮金币都吃完
	if 1 ~= ScriptLib.GetGroupTempValue(context, "is_round_clear", {}) then
		return 0
	end
	local remain_coin_1 = ScriptLib.CheckRemainGadgetCountByGroupId(context, { group_id = base_info.group_id, gadget_id = { 70320015 }})
	local remain_coin_2 = ScriptLib.CheckRemainGadgetCountByGroupId(context, { group_id = base_info.group_id, gadget_id = { 70320022 }})
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] SLC_CharAmusement_CoinGet. Get coin while round clear. remain_coin_1@"..remain_coin_1.." remain_coin_2@"..remain_coin_2)
	if 0 >= remain_coin_1 + remain_coin_2 then
		ScriptLib.EndTimeAxis(context, "ClearDelay")
		if nil ~= defs.refresh_delay then
			ScriptLib.InitTimeAxis(context, "NewRound", {defs.refresh_delay}, false)
		else
			LF_ClearRound(context)
			LF_StartRound(context)
		end
	end


	return 0
end

function action_TimeAxis_NewRound(context, evt)
		LF_ClearRound(context)
		LF_StartRound(context)
	return 0
end

--由于和战斗关共用场地，由主控通知加载
function EX_SetPillarSuite(context, prev_context)
	LF_SetPillarSuite(context)
	return 0
end

--由于和战斗关共用场地，由主控通知加载
function EX_ClearPillarSuite(context, prev_context)
	LF_ClearPillarSuite(context)
	return 0
end

function LF_SetPillarSuite(context)
	local uid_list = ScriptLib.GetSceneUidList(context)
	ScriptLib.PrintContextLog(context,"## [CharAmuse_Pillar] LF_SetPillarSuite. player_count@"..#uid_list)	
	if nil ~= defs.enter_suites and nil ~= defs.enter_suites[#uid_list] then		
		ScriptLib.AddExtraGroupSuite(context, base_info.group_id, defs.enter_suites[#uid_list])		
	end
	return 0
end

function LF_ClearPillarSuite(context)
	for i = 2, #suites do
		ScriptLib.RemoveExtraGroupSuite(context, base_info.group_id, i)	
	end
	return 0
end

function LF_CheckIsAround(context, pos, check_pos)
	if 0 == check_pos then
		return false
	end
	local x = math.floor(pos/10)
	local y = pos%10
	local check_pos_x = math.floor(check_pos/10)
	local check_pos_y = check_pos%10
	if 1 >= math.abs(x - check_pos_x) or 1 >= math.abs(y - check_pos_y) then
		return true
	end
	return false
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

LF_Initialize()