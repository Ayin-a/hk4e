-- 基础信息
local base_info = {
	group_id = 133304295
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 295002, monster_id = 25210301, pos = { x = -1576.718, y = 239.995, z = 2866.574 }, rot = { x = 0.000, y = 17.918, z = 0.000 }, level = 30, drop_tag = "镀金旅团", area_id = 21 },
	{ config_id = 295003, monster_id = 25310301, pos = { x = -1573.005, y = 238.800, z = 2857.277 }, rot = { x = 0.000, y = 77.869, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", disableWander = true, area_id = 21 },
	{ config_id = 295004, monster_id = 25210201, pos = { x = -1580.706, y = 247.358, z = 2866.073 }, rot = { x = 0.000, y = 70.771, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 21 },
	{ config_id = 295005, monster_id = 25210201, pos = { x = -1577.665, y = 239.368, z = 2857.885 }, rot = { x = 0.000, y = 315.606, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9006, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 295001, gadget_id = 70211002, pos = { x = -1584.109, y = 249.976, z = 2865.827 }, rot = { x = 0.000, y = 82.136, z = 0.000 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 21 },
	{ config_id = 295008, gadget_id = 70210101, pos = { x = -1578.528, y = 240.072, z = 2858.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜遗物须弥", area_id = 21 },
	{ config_id = 295009, gadget_id = 70210101, pos = { x = -1581.335, y = 240.035, z = 2858.294 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1295007, name = "ANY_MONSTER_DIE_295007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_295007", action = "action_EVENT_ANY_MONSTER_DIE_295007", trigger_count = 0 }
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
		monsters = { 295002, 295003, 295004, 295005 },
		gadgets = { 295001, 295008, 295009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_295007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_295007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_295007(context, evt)
	-- 将configid为 295001 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 295001, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end