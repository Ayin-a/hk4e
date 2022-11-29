-- 基础信息
local base_info = {
	group_id = 133309147
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 147001, monster_id = 23010501, pos = { x = -2182.060, y = 40.588, z = 5862.642 }, rot = { x = 0.000, y = 173.871, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, pose_id = 9001, area_id = 27 },
	{ config_id = 147004, monster_id = 23010401, pos = { x = -2170.254, y = 37.702, z = 5874.088 }, rot = { x = 0.000, y = 324.706, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 147002, gadget_id = 70211002, pos = { x = -2171.562, y = 39.177, z = 5866.363 }, rot = { x = 358.420, y = 359.983, z = 356.999 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 147005, gadget_id = 70220048, pos = { x = -2165.282, y = 38.439, z = 5866.413 }, rot = { x = 1.503, y = 2.075, z = 348.461 }, level = 32, area_id = 27 },
	{ config_id = 147006, gadget_id = 70220048, pos = { x = -2185.607, y = 40.890, z = 5864.469 }, rot = { x = 356.582, y = 0.332, z = 349.874 }, level = 32, area_id = 27 },
	{ config_id = 147008, gadget_id = 70330427, pos = { x = -2179.776, y = 39.871, z = 5866.568 }, rot = { x = 46.817, y = 225.695, z = 56.741 }, level = 32, area_id = 27 },
	{ config_id = 147010, gadget_id = 70210101, pos = { x = -2183.129, y = 41.111, z = 5861.090 }, rot = { x = 1.431, y = 359.985, z = 359.218 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1147003, name = "ANY_MONSTER_DIE_147003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_147003", action = "action_EVENT_ANY_MONSTER_DIE_147003" }
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
		monsters = { 147001, 147004 },
		gadgets = { 147002, 147005, 147006, 147008, 147010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_147003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_147003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_147003(context, evt)
	-- 将configid为 147002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 147002, GadgetState.Default) then
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