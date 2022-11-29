-- 基础信息
local base_info = {
	group_id = 144004015
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 15005, monster_id = 21010201, pos = { x = -644.614, y = 121.220, z = -122.387 }, rot = { x = 0.000, y = 243.536, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 103 },
	{ config_id = 15007, monster_id = 21030201, pos = { x = -639.984, y = 121.036, z = -114.913 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", disableWander = true, area_id = 103 },
	{ config_id = 15008, monster_id = 21011001, pos = { x = -642.352, y = 125.880, z = -106.673 }, rot = { x = 0.000, y = 70.583, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 103 },
	{ config_id = 15009, monster_id = 21020201, pos = { x = -635.834, y = 120.531, z = -119.893 }, rot = { x = 0.000, y = 76.875, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 103 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 15001, gadget_id = 70300090, pos = { x = -642.521, y = 120.411, z = -106.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 15002, gadget_id = 70211012, pos = { x = -645.486, y = 120.899, z = -119.092 }, rot = { x = 0.000, y = 60.190, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 103 },
	{ config_id = 15004, gadget_id = 70300091, pos = { x = -635.998, y = 120.507, z = -126.021 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 15006, gadget_id = 70300085, pos = { x = -639.776, y = 120.577, z = -115.340 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 },
	{ config_id = 15010, gadget_id = 70300087, pos = { x = -644.759, y = 120.685, z = -115.464 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 103 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1015003, name = "ANY_MONSTER_DIE_15003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_15003", action = "action_EVENT_ANY_MONSTER_DIE_15003" }
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
		monsters = { 15005, 15007, 15008, 15009 },
		gadgets = { 15001, 15002, 15004, 15006, 15010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_15003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_15003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_15003(context, evt)
	-- 将configid为 15002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 15002, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 4001, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end