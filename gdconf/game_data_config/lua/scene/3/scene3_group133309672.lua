-- 基础信息
local base_info = {
	group_id = 133309672
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 672001, monster_id = 25210103, pos = { x = -2556.759, y = 179.501, z = 5421.902 }, rot = { x = 0.000, y = 160.414, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 27 },
	{ config_id = 672002, monster_id = 25210401, pos = { x = -2531.348, y = 184.076, z = 5402.744 }, rot = { x = 0.000, y = 325.589, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 672003, monster_id = 25210201, pos = { x = -2532.519, y = 184.249, z = 5408.858 }, rot = { x = 0.000, y = 286.254, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 672004, monster_id = 25210101, pos = { x = -2557.876, y = 175.747, z = 5399.498 }, rot = { x = 0.000, y = 7.137, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 672005, monster_id = 25210103, pos = { x = -2549.500, y = 181.578, z = 5426.825 }, rot = { x = 0.000, y = 184.435, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 27 },
	{ config_id = 672006, monster_id = 25310301, pos = { x = -2554.553, y = 180.527, z = 5425.911 }, rot = { x = 0.000, y = 198.641, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 672007, monster_id = 25210201, pos = { x = -2560.794, y = 175.773, z = 5403.673 }, rot = { x = 0.000, y = 46.360, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 672008, monster_id = 25210201, pos = { x = -2552.362, y = 177.051, z = 5399.797 }, rot = { x = 0.000, y = 17.807, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 27 },
	{ config_id = 672009, monster_id = 25210201, pos = { x = -2535.110, y = 182.426, z = 5399.855 }, rot = { x = 0.000, y = 315.700, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 672011, gadget_id = 70350036, pos = { x = -2547.924, y = 179.874, z = 5412.495 }, rot = { x = 346.804, y = 66.322, z = 356.223 }, level = 1, area_id = 27 },
	{ config_id = 672012, gadget_id = 70350023, pos = { x = -2547.927, y = 179.874, z = 5412.496 }, rot = { x = 343.644, y = 63.339, z = 0.411 }, level = 19, persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1672019, name = "ANY_MONSTER_DIE_672019", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_672019", action = "action_EVENT_ANY_MONSTER_DIE_672019", trigger_count = 0 },
	{ config_id = 1672020, name = "ANY_MONSTER_DIE_672020", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_672020", action = "action_EVENT_ANY_MONSTER_DIE_672020", trigger_count = 0 },
	{ config_id = 1672021, name = "GADGET_CREATE_672021", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_672021", action = "action_EVENT_GADGET_CREATE_672021", trigger_count = 0 },
	{ config_id = 1672022, name = "ANY_MONSTER_DIE_672022", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_672022", trigger_count = 0 },
	{ config_id = 1672023, name = "ANY_MONSTER_DIE_672023", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_672023", action = "action_EVENT_ANY_MONSTER_DIE_672023", trigger_count = 0 },
	{ config_id = 1672024, name = "SELECT_OPTION_672024", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_672024", action = "action_EVENT_SELECT_OPTION_672024", trigger_count = 0 },
	{ config_id = 1672025, name = "CHALLENGE_SUCCESS_672025", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "666", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_672025", trigger_count = 0 },
	{ config_id = 1672026, name = "CHALLENGE_FAIL_672026", event = EventType.EVENT_CHALLENGE_FAIL, source = "666", condition = "", action = "action_EVENT_CHALLENGE_FAIL_672026", trigger_count = 0 },
	{ config_id = 1672027, name = "ANY_MONSTER_LIVE_672027", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_672027", action = "action_EVENT_ANY_MONSTER_LIVE_672027", trigger_count = 0 }
}

-- 变量
variables = {
	{ config_id = 1, name = "deadMonster", value = 0, no_refresh = false },
	{ config_id = 2, name = "hasFinished", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { },
		gadgets = { 672012 },
		regions = { },
		triggers = { "GADGET_CREATE_672021", "ANY_MONSTER_DIE_672022", "SELECT_OPTION_672024", "CHALLENGE_SUCCESS_672025", "CHALLENGE_FAIL_672026" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 672001, 672005, 672006 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_672019", "ANY_MONSTER_LIVE_672027" },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { 672004, 672007, 672008 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_672020" },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { 672002, 672003, 672009 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_672023" },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 672011 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_672019(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_672019(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-2565, y=173, z=5393}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2565,y=173,z=5393}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400002, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309672, 2)
	
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309672, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_672020(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_672020(context, evt)
	-- play_type含义：1·代表开始播放； 2·代表停止播放
	-- 在指定位置播放或停止音效资源
		local pos = {x=-2565, y=173, z=5393}
	    if 0 ~= ScriptLib.ScenePlaySound(context, {play_pos = pos, sound_name = "LevelHornSound001", play_type= 1, is_broadcast = false }) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_soundplay")
					return -1
		end 
	
	-- 在指定位置对应半径范围播放reminder
	local pos = {x=-2565,y=173,z=5393}
	if 0 ~= ScriptLib.ShowReminderRadius(context, 400003, pos, 50) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_reminder_ui_bypos")
		return -1
	end
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309672, 3)
	
	-- 添加suite4的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309672, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_672021(context, evt)
	if 672012 ~= evt.param1 then
		return false
	end
	
	-- 判断变量"hasFinished"为0
	if ScriptLib.GetGroupVariableValue(context, "hasFinished") ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_672021(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309672, 672012, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_672022(context, evt)
	-- 针对当前group内变量名为 "deadMonster" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "deadMonster", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_672023(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_672023(context, evt)
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309672, 4)
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_672024(context, evt)
	-- 判断是gadgetid 672012 option_id 7
	if 672012 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_672024(context, evt)
	-- 将configid为 672012 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672012, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309672, 2)
	
	-- 删除指定group： 133309672 ；指定config：672012；物件身上指定option：7；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 133309672, 672012, 7) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_672025(context, evt)
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309672, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309672, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309672, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309672, 5)
	
	-- 将configid为 672012 的物件更改为状态 GadgetState.GearAction1
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672012, GadgetState.GearAction1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 针对当前group内变量名为 "hasFinished" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "hasFinished", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_672026(context, evt)
	-- 将configid为 672012 的物件更改为状态 GadgetState.GearAction2
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 672012, GadgetState.GearAction2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 将本组内变量名为 "deadMonster" 的变量设置为 0
	if 0 ~= ScriptLib.SetGroupVariableValue(context, "deadMonster", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_groupVariable")
	  return -1
	end
	
	-- 删除suite2的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309672, 2)
	
	-- 删除suite3的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309672, 3)
	
	-- 删除suite4的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309672, 4)
	
	-- 删除suite5的所有内容
	    ScriptLib.RemoveExtraGroupSuite(context, 133309672, 5)
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133309672, 672012, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_672027(context, evt)
	if 672006 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_672027(context, evt)
	-- 添加suite5的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133309672, 5)
	
	-- 创建编号为666（该挑战的识别id),挑战内容为14的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 666, 14, 133309672, 9, 672011, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	return 0
end