-- 基础信息
local base_info = {
	group_id = 133003136
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 623, monster_id = 21010201, pos = { x = 2225.105, y = 224.670, z = -1189.090 }, rot = { x = 0.000, y = 292.565, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1443, monster_id = 21010201, pos = { x = 2219.933, y = 224.445, z = -1189.930 }, rot = { x = 0.000, y = 50.330, z = 0.000 }, level = 1, drop_id = 1000100, area_id = 1 },
	{ config_id = 1444, monster_id = 21010401, pos = { x = 2214.254, y = 227.204, z = -1190.236 }, rot = { x = 0.000, y = 251.832, z = 0.000 }, level = 1, drop_id = 1000100, disableWander = true, pose_id = 402, area_id = 1 },
	{ config_id = 1476, monster_id = 21010201, pos = { x = 2224.217, y = 224.670, z = -1186.167 }, rot = { x = 0.000, y = 232.938, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1477, monster_id = 21010201, pos = { x = 2220.168, y = 224.437, z = -1187.894 }, rot = { x = 0.000, y = 102.456, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1478, monster_id = 21010201, pos = { x = 2222.822, y = 224.617, z = -1191.042 }, rot = { x = 0.000, y = 9.297, z = 0.000 }, level = 1, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 1 },
	{ config_id = 1479, monster_id = 21010401, pos = { x = 2214.342, y = 227.185, z = -1190.517 }, rot = { x = 0.000, y = 261.517, z = 0.000 }, level = 1, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4116, gadget_id = 70310004, pos = { x = 2222.727, y = 224.630, z = -1188.529 }, rot = { x = 0.000, y = 114.747, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4117, gadget_id = 70220014, pos = { x = 2227.387, y = 224.670, z = -1187.105 }, rot = { x = 0.000, y = 183.667, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4118, gadget_id = 70220014, pos = { x = 2217.394, y = 224.510, z = -1193.924 }, rot = { x = 0.000, y = 183.667, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4119, gadget_id = 70220014, pos = { x = 2226.376, y = 224.670, z = -1186.267 }, rot = { x = 0.000, y = 183.667, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4121, gadget_id = 70220014, pos = { x = 2218.643, y = 224.519, z = -1193.860 }, rot = { x = 0.000, y = 183.667, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4122, gadget_id = 70220013, pos = { x = 2219.114, y = 226.340, z = -1201.547 }, rot = { x = 0.000, y = 309.140, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4123, gadget_id = 70220013, pos = { x = 2221.263, y = 226.157, z = -1201.014 }, rot = { x = 0.000, y = 355.469, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4124, gadget_id = 70220013, pos = { x = 2228.357, y = 224.741, z = -1184.838 }, rot = { x = 354.060, y = 340.173, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 4125, gadget_id = 70211012, pos = { x = 2222.418, y = 224.610, z = -1192.918 }, rot = { x = 0.000, y = 357.264, z = 0.000 }, level = 1, chest_drop_id = 1010800, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000511, name = "ANY_MONSTER_DIE_511", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_511", action = "action_EVENT_ANY_MONSTER_DIE_511" }
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
	suite = 2,
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
		monsters = { 623, 1443, 1444 },
		gadgets = { 4116, 4117, 4118, 4119, 4121, 4122, 4123, 4124, 4125 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_511" },
		rand_weight = 100,
		ban_refresh = true
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 1476, 1477, 1478, 1479 },
		gadgets = { 4116, 4117, 4118, 4119, 4121, 4122, 4123, 4124 },
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
function condition_EVENT_ANY_MONSTER_DIE_511(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_511(context, evt)
	-- 解锁目标4125
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4125, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
	if 0 ~= ScriptLib.AddQuestProgress(context, "133003136") then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : add_quest_progress")
	  return -1
	end
	
	-- 设置指定Group为可竞争
	    ScriptLib.SetGroupReplaceable(context, 133003136, true)
	
	return 0
end