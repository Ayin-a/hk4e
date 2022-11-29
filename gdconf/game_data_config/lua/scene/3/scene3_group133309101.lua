-- 基础信息
local base_info = {
	group_id = 133309101
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 101001, monster_id = 25210303, pos = { x = -2072.728, y = -36.769, z = 5786.741 }, rot = { x = 0.000, y = 0.238, z = 0.000 }, level = 32, drop_tag = "镀金旅团", disableWander = true, area_id = 27 },
	{ config_id = 101004, monster_id = 23010501, pos = { x = -2061.829, y = -33.980, z = 5770.731 }, rot = { x = 0.000, y = 315.556, z = 0.000 }, level = 32, drop_tag = "先遣队", pose_id = 9011, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 101002, gadget_id = 70211002, pos = { x = -2057.776, y = -32.857, z = 5784.949 }, rot = { x = 359.568, y = 200.137, z = 350.581 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 101005, gadget_id = 70220048, pos = { x = -2062.415, y = -34.743, z = 5788.866 }, rot = { x = 353.937, y = 359.174, z = 12.358 }, level = 32, area_id = 27 },
	{ config_id = 101006, gadget_id = 70220048, pos = { x = -2064.380, y = -35.218, z = 5789.386 }, rot = { x = 350.977, y = 41.846, z = 7.342 }, level = 32, area_id = 27 },
	{ config_id = 101008, gadget_id = 70210101, pos = { x = -2062.850, y = -33.620, z = 5769.646 }, rot = { x = 22.107, y = 359.825, z = 359.105 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 27 },
	{ config_id = 101009, gadget_id = 70210101, pos = { x = -2061.915, y = -34.301, z = 5784.564 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1101003, name = "ANY_MONSTER_DIE_101003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_101003", action = "action_EVENT_ANY_MONSTER_DIE_101003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 101007, gadget_id = 70310004, pos = { x = -2067.135, y = -34.469, z = 5775.361 }, rot = { x = 21.350, y = 359.241, z = 355.975 }, level = 32, state = GadgetState.GearStart, area_id = 27 }
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
		monsters = { 101001, 101004 },
		gadgets = { 101002, 101005, 101006, 101008, 101009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_101003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_101003(context, evt)
	-- 将configid为 101002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 101002, GadgetState.Default) then
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