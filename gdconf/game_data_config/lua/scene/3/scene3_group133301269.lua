-- 基础信息
local base_info = {
	group_id = 133301269
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 269001, monster_id = 25030301, pos = { x = -506.730, y = 206.097, z = 3431.311 }, rot = { x = 0.000, y = 47.138, z = 0.000 }, level = 33, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 22 },
	{ config_id = 269002, monster_id = 28061201, pos = { x = -512.122, y = 205.306, z = 3440.991 }, rot = { x = 0.000, y = 134.666, z = 0.000 }, level = 33, drop_tag = "驮兽盗宝团", disableWander = true, pose_id = 1, area_id = 22 },
	{ config_id = 269003, monster_id = 25020201, pos = { x = -510.301, y = 206.335, z = 3425.606 }, rot = { x = 0.000, y = 24.110, z = 0.000 }, level = 33, drop_tag = "盗宝团", disableWander = true, pose_id = 9004, area_id = 22 },
	{ config_id = 269004, monster_id = 25210101, pos = { x = -509.425, y = 206.019, z = 3438.953 }, rot = { x = 0.000, y = 315.268, z = 0.000 }, level = 33, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 269005, gadget_id = 70310006, pos = { x = -509.917, y = 205.953, z = 3434.774 }, rot = { x = 0.000, y = 0.000, z = 2.684 }, level = 33, state = GadgetState.GearStart, area_id = 22 },
	{ config_id = 269006, gadget_id = 70211002, pos = { x = -510.798, y = 205.142, z = 3444.211 }, rot = { x = 358.282, y = 122.559, z = 1.027 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, vision_level = VisionLevelType.VISION_LEVEL_NORMAL, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 269008, gadget_id = 70210101, pos = { x = -491.200, y = 211.500, z = 3434.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1269007, name = "ANY_MONSTER_DIE_269007", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_269007", action = "action_EVENT_ANY_MONSTER_DIE_269007", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	triggers = {
		{ config_id = 1269009, name = "MONSTER_BATTLE_269009", event = EventType.EVENT_MONSTER_BATTLE, source = "", condition = "", action = "action_EVENT_MONSTER_BATTLE_269009" }
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
		monsters = { 269001, 269002, 269003, 269004 },
		gadgets = { 269005, 269006, 269008 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_269007" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_269007(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_269007(context, evt)
	-- 将configid为 269006 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 269006, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end