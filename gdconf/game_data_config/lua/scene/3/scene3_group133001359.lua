-- 基础信息
local base_info = {
	group_id = 133001359
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 359008, monster_id = 21010301, pos = { x = 1801.919, y = 203.614, z = -1263.338 }, rot = { x = 0.000, y = 124.019, z = 0.000 }, level = 4, drop_tag = "丘丘人", disableWander = true, area_id = 2 },
	{ config_id = 359009, monster_id = 21010401, pos = { x = 1803.562, y = 205.327, z = -1255.696 }, rot = { x = 0.000, y = 24.630, z = 0.000 }, level = 4, drop_tag = "远程丘丘人", disableWander = true, area_id = 2 },
	{ config_id = 359010, monster_id = 21010301, pos = { x = 1805.412, y = 203.007, z = -1266.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 4, drop_tag = "丘丘人", disableWander = true, area_id = 2 },
	{ config_id = 359011, monster_id = 21010401, pos = { x = 1809.133, y = 207.803, z = -1284.050 }, rot = { x = 0.000, y = 199.988, z = 0.000 }, level = 4, drop_tag = "远程丘丘人", disableWander = true, area_id = 2 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 359001, gadget_id = 70220005, pos = { x = 1811.884, y = 202.479, z = -1264.324 }, rot = { x = 0.000, y = 53.346, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 359002, gadget_id = 70211012, pos = { x = 1802.813, y = 203.166, z = -1268.149 }, rot = { x = 0.000, y = 25.183, z = 0.000 }, level = 1, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 2 },
	{ config_id = 359004, gadget_id = 70220005, pos = { x = 1802.083, y = 203.224, z = -1281.349 }, rot = { x = 0.000, y = 53.346, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 359005, gadget_id = 70310006, pos = { x = 1804.109, y = 203.259, z = -1263.936 }, rot = { x = 0.000, y = 223.068, z = 0.000 }, level = 5, state = GadgetState.GearStart, area_id = 2 },
	{ config_id = 359006, gadget_id = 70220005, pos = { x = 1809.874, y = 202.651, z = -1270.630 }, rot = { x = 0.000, y = 53.346, z = 0.000 }, level = 5, area_id = 2 },
	{ config_id = 359007, gadget_id = 70220005, pos = { x = 1802.363, y = 202.978, z = -1282.431 }, rot = { x = 0.000, y = 53.346, z = 0.000 }, level = 5, area_id = 2 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1359003, name = "ANY_MONSTER_DIE_359003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_359003", action = "action_EVENT_ANY_MONSTER_DIE_359003" }
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
		monsters = { 359008, 359009, 359010, 359011 },
		gadgets = { 359001, 359002, 359004, 359005, 359006, 359007 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_359003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_359003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_359003(context, evt)
	-- 将configid为 359002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 359002, GadgetState.Default) then
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