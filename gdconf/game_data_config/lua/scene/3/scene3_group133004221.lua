-- 基础信息
local base_info = {
	group_id = 133004221
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 569, monster_id = 21030101, pos = { x = 2286.464, y = 241.300, z = -471.041 }, rot = { x = 0.000, y = 154.286, z = 0.000 }, level = 18, drop_tag = "丘丘萨满", disableWander = true, area_id = 3 },
	{ config_id = 570, monster_id = 20011001, pos = { x = 2289.182, y = 241.840, z = -470.847 }, rot = { x = 0.000, y = 207.251, z = 0.000 }, level = 18, drop_tag = "史莱姆", disableWander = true, area_id = 3 },
	{ config_id = 571, monster_id = 21010101, pos = { x = 2288.964, y = 241.619, z = -474.132 }, rot = { x = 0.000, y = 319.599, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 572, monster_id = 21010101, pos = { x = 2285.953, y = 241.039, z = -474.057 }, rot = { x = 0.000, y = 40.647, z = 0.000 }, level = 18, drop_tag = "丘丘人", disableWander = true, area_id = 3 },
	{ config_id = 221003, monster_id = 21010201, pos = { x = 2272.901, y = 238.517, z = -473.894 }, rot = { x = 0.000, y = 77.046, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 3 },
	{ config_id = 221004, monster_id = 21010301, pos = { x = 2274.732, y = 238.961, z = -470.232 }, rot = { x = 0.000, y = 150.520, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 3 },
	{ config_id = 221005, monster_id = 21010201, pos = { x = 2277.514, y = 239.552, z = -469.743 }, rot = { x = 0.000, y = 196.975, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 9013, area_id = 3 },
	{ config_id = 221006, monster_id = 21020201, pos = { x = 2270.806, y = 238.684, z = -465.577 }, rot = { x = 0.000, y = 145.892, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, pose_id = 401, area_id = 3 },
	{ config_id = 221007, monster_id = 21030101, pos = { x = 2281.715, y = 242.549, z = -468.201 }, rot = { x = 0.000, y = 298.404, z = 0.000 }, level = 15, drop_id = 1000100, disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 1244, gadget_id = 70310004, pos = { x = 2287.583, y = 241.433, z = -472.588 }, rot = { x = 0.000, y = 225.480, z = 0.000 }, level = 15, state = GadgetState.GearStart, persistent = true, area_id = 3 },
	{ config_id = 1245, gadget_id = 70211012, pos = { x = 2281.722, y = 240.105, z = -476.138 }, rot = { x = 352.931, y = 17.343, z = 10.235 }, level = 11, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, explore = { name = "chest", exp = 1 }, area_id = 3 },
	{ config_id = 221008, gadget_id = 70220013, pos = { x = 2268.420, y = 238.367, z = -465.299 }, rot = { x = 345.924, y = 354.375, z = 8.179 }, level = 15, area_id = 3 },
	{ config_id = 221009, gadget_id = 70220013, pos = { x = 2277.314, y = 239.023, z = -478.525 }, rot = { x = 356.519, y = 359.101, z = 11.927 }, level = 15, area_id = 3 },
	{ config_id = 221010, gadget_id = 70220013, pos = { x = 2275.431, y = 238.624, z = -478.558 }, rot = { x = 356.451, y = 359.427, z = 11.907 }, level = 15, area_id = 3 },
	{ config_id = 221011, gadget_id = 70220014, pos = { x = 2281.102, y = 240.353, z = -468.631 }, rot = { x = 357.882, y = 359.776, z = 12.080 }, level = 15, area_id = 3 },
	{ config_id = 221012, gadget_id = 70220014, pos = { x = 2266.647, y = 238.249, z = -465.014 }, rot = { x = 347.008, y = 359.334, z = 5.848 }, level = 15, area_id = 3 },
	{ config_id = 221013, gadget_id = 70220014, pos = { x = 2274.070, y = 238.371, z = -478.020 }, rot = { x = 356.703, y = 359.217, z = 12.123 }, level = 15, area_id = 3 },
	{ config_id = 221016, gadget_id = 70360001, pos = { x = 2276.351, y = 239.808, z = -472.835 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 15, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1221001, name = "ANY_MONSTER_DIE_221001", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_221001", action = "action_EVENT_ANY_MONSTER_DIE_221001" },
	{ config_id = 1221014, name = "ANY_MONSTER_DIE_221014", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_221014", action = "action_EVENT_ANY_MONSTER_DIE_221014" },
	{ config_id = 1221017, name = "SELECT_OPTION_221017", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_221017", action = "action_EVENT_SELECT_OPTION_221017" }
}

-- 变量
variables = {
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
		monsters = { 569, 570, 571, 572 },
		gadgets = { 1244, 1245 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_221001" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 221003, 221004, 221005, 221006, 221007 },
		gadgets = { 221008, 221009, 221010, 221011, 221012, 221013, 221016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_221014", "SELECT_OPTION_221017" },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_221001(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_221001(context, evt)
	-- 将configid为 1245 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1245, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_221014(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	-- 判断变量"isoff"为0
	if ScriptLib.GetGroupVariableValueByGroup(context, "isoff", 133004278) ~= 0 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_221014(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300422101") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 133004221, 221016, {169}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_221017(context, evt)
	if 221016 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_221017(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 133004278, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "13300422103") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
		-- 杀死Group内指定的monster和gadget
		if 0 ~= ScriptLib.KillGroupEntity(context, { group_id = 133004221, monsters = {}, gadgets = {221016} }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : kill_monsters_and_gadgets_by_group")
			return -1
		end
	
	return 0
end