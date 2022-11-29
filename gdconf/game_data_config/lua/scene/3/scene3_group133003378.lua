-- 基础信息
local base_info = {
	group_id = 133003378
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 1179, monster_id = 21010201, pos = { x = 2484.932, y = 206.922, z = -1237.886 }, rot = { x = 0.000, y = 84.659, z = 0.000 }, level = 2, drop_tag = "丘丘人", area_id = 1 },
	{ config_id = 1436, monster_id = 21010101, pos = { x = 2467.528, y = 206.868, z = -1228.611 }, rot = { x = 0.000, y = 25.406, z = 0.000 }, level = 2, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 1469, monster_id = 21010101, pos = { x = 2471.823, y = 206.341, z = -1237.307 }, rot = { x = 0.000, y = 25.406, z = 0.000 }, level = 3, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 4145, gadget_id = 70310001, pos = { x = 2464.508, y = 207.108, z = -1226.841 }, rot = { x = 0.000, y = 186.727, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4146, gadget_id = 70310001, pos = { x = 2484.224, y = 206.777, z = -1244.915 }, rot = { x = 0.000, y = 186.727, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4147, gadget_id = 70310001, pos = { x = 2487.355, y = 206.850, z = -1237.976 }, rot = { x = 0.000, y = 186.727, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4148, gadget_id = 70220013, pos = { x = 2462.797, y = 206.392, z = -1230.372 }, rot = { x = 0.000, y = 242.904, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 4149, gadget_id = 70220013, pos = { x = 2464.410, y = 206.342, z = -1232.481 }, rot = { x = 0.000, y = 288.012, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 4150, gadget_id = 70220013, pos = { x = 2463.719, y = 206.222, z = -1237.214 }, rot = { x = 0.000, y = 288.012, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 4151, gadget_id = 70220014, pos = { x = 2464.929, y = 206.299, z = -1235.986 }, rot = { x = 0.000, y = 339.200, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 4152, gadget_id = 70220014, pos = { x = 2488.395, y = 205.630, z = -1236.161 }, rot = { x = 0.000, y = 183.471, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 4153, gadget_id = 70220013, pos = { x = 2481.901, y = 206.721, z = -1244.395 }, rot = { x = 0.000, y = 288.012, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 4154, gadget_id = 70220013, pos = { x = 2489.274, y = 205.519, z = -1234.928 }, rot = { x = 0.000, y = 288.012, z = 0.000 }, level = 2, area_id = 1 },
	{ config_id = 4155, gadget_id = 70310004, pos = { x = 2470.482, y = 206.735, z = -1239.851 }, rot = { x = 0.000, y = 158.056, z = 0.000 }, level = 2, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 4156, gadget_id = 70211002, pos = { x = 2467.972, y = 206.294, z = -1234.311 }, rot = { x = 0.000, y = 89.649, z = 0.000 }, level = 1, drop_tag = "战斗低级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1000519, name = "ANY_MONSTER_DIE_519", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_519", action = "action_EVENT_ANY_MONSTER_DIE_519", tlog_tag = "新手区_主动线左方营地_清剿完成" }
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
		monsters = { 1179, 1436, 1469 },
		gadgets = { 4145, 4146, 4147, 4150, 4151, 4153, 4155, 4156 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_519" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_519(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_519(context, evt)
	-- 解锁目标4156
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 4156, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end