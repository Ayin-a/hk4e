-- 基础信息
local base_info = {
	group_id = 220014007
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 12, monster_id = 24010101, pos = { x = 191.502, y = 59.264, z = 398.543 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 2, pose_id = 100 },
	{ config_id = 17, monster_id = 21010301, pos = { x = 180.950, y = 56.849, z = 391.989 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 18, monster_id = 21010301, pos = { x = 202.676, y = 57.017, z = 391.223 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 19, monster_id = 21010301, pos = { x = 177.555, y = 57.016, z = 379.194 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true },
	{ config_id = 20, monster_id = 21010301, pos = { x = 205.888, y = 57.017, z = 379.280 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, disableWander = true }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 38, gadget_id = 70211011, pos = { x = 191.670, y = 57.000, z = 388.374 }, rot = { x = 0.000, y = 180.000, z = 0.000 }, level = 6, drop_tag = "战斗中级蒙德", showcutscene = true, isOneoff = true },
	{ config_id = 41, gadget_id = 70220004, pos = { x = 201.025, y = 57.017, z = 379.351 }, rot = { x = 0.000, y = 354.156, z = 0.000 }, level = 1 },
	{ config_id = 42, gadget_id = 70220004, pos = { x = 183.552, y = 57.017, z = 389.161 }, rot = { x = 0.000, y = 106.825, z = 0.000 }, level = 1 },
	{ config_id = 43, gadget_id = 70220004, pos = { x = 200.580, y = 57.017, z = 388.545 }, rot = { x = 0.000, y = 12.803, z = 0.000 }, level = 1 },
	{ config_id = 44, gadget_id = 70220004, pos = { x = 200.238, y = 56.914, z = 369.864 }, rot = { x = 0.000, y = 214.619, z = 0.000 }, level = 1 },
	{ config_id = 45, gadget_id = 70220005, pos = { x = 201.377, y = 58.516, z = 356.451 }, rot = { x = 0.000, y = 134.891, z = 0.000 }, level = 1 },
	{ config_id = 46, gadget_id = 70220005, pos = { x = 191.367, y = 58.422, z = 356.347 }, rot = { x = 0.000, y = 189.888, z = 0.000 }, level = 1 },
	{ config_id = 47, gadget_id = 70220005, pos = { x = 181.728, y = 58.517, z = 356.368 }, rot = { x = 0.000, y = 334.711, z = 0.000 }, level = 1 },
	{ config_id = 48, gadget_id = 70220005, pos = { x = 184.117, y = 59.016, z = 397.062 }, rot = { x = 0.000, y = 101.953, z = 0.000 }, level = 1 },
	{ config_id = 49, gadget_id = 70220005, pos = { x = 199.006, y = 59.016, z = 396.976 }, rot = { x = 0.000, y = 178.199, z = 0.000 }, level = 1 },
	{ config_id = 119, gadget_id = 70220004, pos = { x = 204.072, y = 57.017, z = 379.090 }, rot = { x = 0.000, y = 224.403, z = 0.000 }, level = 1 },
	{ config_id = 120, gadget_id = 70220004, pos = { x = 204.191, y = 57.016, z = 369.063 }, rot = { x = 0.000, y = 166.815, z = 0.000 }, level = 1 },
	{ config_id = 121, gadget_id = 70220004, pos = { x = 179.547, y = 57.016, z = 368.702 }, rot = { x = 0.000, y = 136.190, z = 0.000 }, level = 1 },
	{ config_id = 122, gadget_id = 70220004, pos = { x = 182.118, y = 57.017, z = 371.304 }, rot = { x = 0.000, y = 68.657, z = 0.000 }, level = 1 },
	{ config_id = 123, gadget_id = 70220004, pos = { x = 182.570, y = 57.016, z = 379.958 }, rot = { x = 0.000, y = 320.433, z = 0.000 }, level = 1 },
	{ config_id = 124, gadget_id = 70220004, pos = { x = 179.271, y = 57.016, z = 378.999 }, rot = { x = 0.000, y = 224.530, z = 0.000 }, level = 1 },
	{ config_id = 125, gadget_id = 70220004, pos = { x = 179.399, y = 57.017, z = 388.150 }, rot = { x = 0.000, y = 359.273, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000015, name = "DUNGEON_SETTLE_15", event = EventType.EVENT_DUNGEON_SETTLE, source = "", condition = "condition_EVENT_DUNGEON_SETTLE_15", action = "action_EVENT_DUNGEON_SETTLE_15" }
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { 12 },
		gadgets = { 41, 42, 43, 44, 45, 46, 47, 48, 49, 119, 120, 121, 122, 123, 124, 125 },
		regions = { },
		triggers = { "DUNGEON_SETTLE_15" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_DUNGEON_SETTLE_15(context, evt)
	-- 判断副本成功
	if 1 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_DUNGEON_SETTLE_15(context, evt)
	-- 创建id为38的gadget
	if 0 ~= ScriptLib.CreateGadget(context, { config_id = 38 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_gadget")
	  return -1
	end
	
	return 0
end