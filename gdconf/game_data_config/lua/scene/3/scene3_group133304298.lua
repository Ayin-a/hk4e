-- 基础信息
local base_info = {
	group_id = 133304298
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 298002, monster_id = 25210201, pos = { x = -1755.714, y = 265.196, z = 2860.590 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, area_id = 21 },
	{ config_id = 298003, monster_id = 25210402, pos = { x = -1751.938, y = 256.265, z = 2860.321 }, rot = { x = 0.000, y = 58.321, z = 0.000 }, level = 30, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 21 },
	{ config_id = 298004, monster_id = 25310201, pos = { x = -1757.624, y = 254.619, z = 2866.997 }, rot = { x = 0.000, y = 22.540, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 21 },
	{ config_id = 298005, monster_id = 25210502, pos = { x = -1758.202, y = 254.239, z = 2868.211 }, rot = { x = 0.000, y = 182.881, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9002, area_id = 21 },
	{ config_id = 298006, monster_id = 25210201, pos = { x = -1766.267, y = 252.008, z = 2878.777 }, rot = { x = 0.000, y = 274.568, z = 0.000 }, level = 30, drop_tag = "镀金旅团", pose_id = 9006, area_id = 21 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 298007, gadget_id = 70210101, pos = { x = -1761.779, y = 254.677, z = 2871.475 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 },
	{ config_id = 298008, gadget_id = 70210101, pos = { x = -1767.468, y = 252.583, z = 2879.548 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜通用须弥", area_id = 21 },
	{ config_id = 298009, gadget_id = 70211012, pos = { x = -1757.642, y = 265.230, z = 2861.461 }, rot = { x = 359.678, y = 104.387, z = 359.991 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 21 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1298012, name = "ANY_MONSTER_DIE_298012", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_298012", action = "action_EVENT_ANY_MONSTER_DIE_298012", trigger_count = 0 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	monsters = {
		{ config_id = 298001, monster_id = 25310101, pos = { x = -1746.379, y = 258.178, z = 2856.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", pose_id = 1, area_id = 21 },
		{ config_id = 298011, monster_id = 25310301, pos = { x = -1747.266, y = 256.570, z = 2861.807 }, rot = { x = 0.000, y = 182.156, z = 0.000 }, level = 30, drop_tag = "中级镀金旅团", area_id = 21 }
	},
	triggers = {
		{ config_id = 1298010, name = "ANY_MONSTER_DIE_298010", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_298010", action = "action_EVENT_ANY_MONSTER_DIE_298010" }
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
		monsters = { 298002, 298003, 298004, 298005, 298006 },
		gadgets = { 298007, 298008, 298009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_298012" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { },
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
function condition_EVENT_ANY_MONSTER_DIE_298012(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_298012(context, evt)
	-- 将configid为 298009 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 298009, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end