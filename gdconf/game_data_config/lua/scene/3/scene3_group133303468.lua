-- 基础信息
local base_info = {
	group_id = 133303468
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 468001, monster_id = 26090201, pos = { x = -1858.164, y = 152.038, z = 3266.569 }, rot = { x = 0.000, y = 212.395, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 468003, monster_id = 26090101, pos = { x = -1822.156, y = 133.762, z = 3278.198 }, rot = { x = 0.000, y = 109.088, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 468006, monster_id = 26090501, pos = { x = -1843.247, y = 142.932, z = 3285.333 }, rot = { x = 0.000, y = 336.151, z = 0.000 }, level = 30, drop_tag = "蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 468009, monster_id = 26120101, pos = { x = -1838.774, y = 138.458, z = 3271.260 }, rot = { x = 0.000, y = 336.003, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 23 },
	{ config_id = 468010, monster_id = 26120301, pos = { x = -1842.696, y = 141.612, z = 3275.654 }, rot = { x = 0.000, y = 99.618, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
	{ config_id = 468011, monster_id = 26120201, pos = { x = -1837.508, y = 139.871, z = 3278.442 }, rot = { x = 0.000, y = 224.262, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 23 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 468007, gadget_id = 70211012, pos = { x = -1839.040, y = 140.298, z = 3275.296 }, rot = { x = 0.000, y = 86.358, z = 0.000 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 23 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1468008, name = "ANY_MONSTER_DIE_468008", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_468008", action = "action_EVENT_ANY_MONSTER_DIE_468008" },
	{ config_id = 1468012, name = "ANY_MONSTER_DIE_468012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_468012", action = "action_EVENT_ANY_MONSTER_DIE_468012" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 468002, monster_id = 26120101, pos = { x = -1860.978, y = 152.354, z = 3262.849 }, rot = { x = 0.000, y = 354.786, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 23 },
		{ config_id = 468004, monster_id = 26120301, pos = { x = -1820.822, y = 133.143, z = 3280.273 }, rot = { x = 0.000, y = 141.335, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 101, area_id = 23 },
		{ config_id = 468005, monster_id = 26120201, pos = { x = -1844.097, y = 143.540, z = 3283.180 }, rot = { x = 0.000, y = 23.736, z = 0.000 }, level = 30, drop_tag = "大蕈兽", disableWander = true, pose_id = 201, area_id = 23 }
	}
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
		monsters = { 468001, 468003, 468006 },
		gadgets = { 468007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_468008" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 468009, 468010, 468011 },
		gadgets = { },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_468012" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_468008(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_468008(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 133303468, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_468012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_468012(context, evt)
	-- 将configid为 468007 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 468007, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end