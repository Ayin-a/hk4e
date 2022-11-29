-- 基础信息
local base_info = {
	group_id = 133315124
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124001, monster_id = 25210502, pos = { x = 102.376, y = 284.966, z = 2346.223 }, rot = { x = 0.000, y = 304.292, z = 0.000 }, level = 27, drop_tag = "镀金旅团", disableWander = true, pose_id = 9001, area_id = 20 },
	{ config_id = 124004, monster_id = 25210303, pos = { x = 100.333, y = 284.931, z = 2347.349 }, rot = { x = 0.000, y = 119.736, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9001, area_id = 20 },
	{ config_id = 124005, monster_id = 25210101, pos = { x = 106.291, y = 284.354, z = 2347.721 }, rot = { x = 0.000, y = 25.175, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9505, area_id = 20 },
	{ config_id = 124009, monster_id = 25210201, pos = { x = 102.015, y = 284.667, z = 2350.880 }, rot = { x = 0.000, y = 19.016, z = 0.000 }, level = 27, drop_tag = "镀金旅团", pose_id = 9003, area_id = 20 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124002, gadget_id = 70211002, pos = { x = 107.539, y = 284.378, z = 2346.235 }, rot = { x = 10.253, y = 27.331, z = 352.930 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 20 },
	{ config_id = 124008, gadget_id = 70310019, pos = { x = 104.146, y = 284.423, z = 2352.406 }, rot = { x = 5.594, y = 25.179, z = 356.913 }, level = 27, area_id = 20 },
	{ config_id = 124010, gadget_id = 70210101, pos = { x = 105.966, y = 284.537, z = 2347.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 20 },
	{ config_id = 124011, gadget_id = 70210101, pos = { x = 103.846, y = 284.513, z = 2350.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 20 },
	{ config_id = 124012, gadget_id = 70210101, pos = { x = 106.497, y = 284.618, z = 2346.394 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜人文须弥", persistent = true, area_id = 20 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1124003, name = "ANY_MONSTER_DIE_124003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_124003", action = "action_EVENT_ANY_MONSTER_DIE_124003" }
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
		monsters = { 124001, 124004, 124005, 124009 },
		gadgets = { 124002, 124008, 124010, 124011, 124012 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_124003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_124003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_124003(context, evt)
	-- 将configid为 124002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 124002, GadgetState.Default) then
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