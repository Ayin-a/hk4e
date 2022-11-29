-- 基础信息
local base_info = {
	group_id = 133003528
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 528001, monster_id = 21010301, pos = { x = 2080.626, y = 230.842, z = -1529.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 9, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 1 },
	{ config_id = 528002, monster_id = 21010901, pos = { x = 2082.706, y = 231.161, z = -1527.694 }, rot = { x = 0.000, y = 289.064, z = 0.000 }, level = 9, drop_tag = "远程丘丘人", disableWander = true, area_id = 1 },
	{ config_id = 528003, monster_id = 21030101, pos = { x = 2080.405, y = 231.004, z = -1525.480 }, rot = { x = 0.000, y = 187.878, z = 0.000 }, level = 9, drop_tag = "丘丘萨满", disableWander = true, area_id = 1 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 528004, gadget_id = 70310006, pos = { x = 2080.266, y = 230.916, z = -1527.661 }, rot = { x = 0.000, y = 224.147, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 1 },
	{ config_id = 528005, gadget_id = 70211012, pos = { x = 2089.737, y = 232.784, z = -1530.249 }, rot = { x = 359.938, y = 343.997, z = 19.377 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 1 },
	{ config_id = 528006, gadget_id = 70220014, pos = { x = 2089.070, y = 232.542, z = -1525.585 }, rot = { x = 0.000, y = 19.714, z = 0.000 }, level = 5, area_id = 1 },
	{ config_id = 528007, gadget_id = 70220013, pos = { x = 2088.964, y = 232.695, z = -1524.064 }, rot = { x = 0.000, y = 196.439, z = 0.000 }, level = 5, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1528008, name = "ANY_MONSTER_DIE_528008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_528008", action = "action_EVENT_ANY_MONSTER_DIE_528008", tlog_tag = "神殿_营地_遗迹下_完成" }
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
		monsters = { 528001, 528002, 528003 },
		gadgets = { 528004, 528005, 528006, 528007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_528008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_528008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_528008(context, evt)
	-- 解锁目标528005
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 528005, state = GadgetState.Default }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : unlock_gadget")
		return -1
	end
	
	return 0
end