-- 基础信息
local base_info = {
	group_id = 166001268
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 268004, monster_id = 25010201, pos = { x = 1012.562, y = 737.398, z = 428.047 }, rot = { x = 0.000, y = 118.737, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9003, area_id = 300 },
	{ config_id = 268005, monster_id = 25010201, pos = { x = 1013.760, y = 737.413, z = 434.365 }, rot = { x = 0.000, y = 42.267, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9101, area_id = 300 },
	{ config_id = 268006, monster_id = 25060101, pos = { x = 1003.720, y = 737.415, z = 429.575 }, rot = { x = 0.000, y = 339.845, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, pose_id = 9101, area_id = 300 },
	{ config_id = 268007, monster_id = 25070101, pos = { x = 1004.922, y = 737.389, z = 422.387 }, rot = { x = 0.000, y = 118.737, z = 0.000 }, level = 36, drop_tag = "盗宝团", disableWander = true, area_id = 300 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 268002, gadget_id = 70211002, pos = { x = 1008.017, y = 737.389, z = 437.731 }, rot = { x = 0.000, y = 178.525, z = 0.000 }, level = 26, drop_tag = "战斗低级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 300 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1268003, name = "ANY_MONSTER_DIE_268003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_268003", action = "action_EVENT_ANY_MONSTER_DIE_268003" }
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
		monsters = { 268004, 268005, 268006, 268007 },
		gadgets = { 268002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_268003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_268003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_268003(context, evt)
	-- 将configid为 268002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 268002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4000, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end