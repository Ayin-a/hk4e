-- 基础信息
local base_info = {
	group_id = 133002243
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 243001, monster_id = 23030101, pos = { x = 1884.209, y = 237.371, z = -797.071 }, rot = { x = 0.000, y = 76.710, z = 0.000 }, level = 10, drop_tag = "召唤师", disableWander = true, area_id = 3 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 2133, gadget_id = 70220005, pos = { x = 1890.409, y = 237.916, z = -796.042 }, rot = { x = 357.598, y = 47.261, z = 1.190 }, level = 10, area_id = 3 },
	{ config_id = 2134, gadget_id = 70220013, pos = { x = 1881.974, y = 237.857, z = -799.600 }, rot = { x = 2.994, y = 125.626, z = 13.961 }, level = 10, area_id = 3 },
	{ config_id = 2135, gadget_id = 70220013, pos = { x = 1881.033, y = 237.761, z = -797.458 }, rot = { x = 352.418, y = 194.165, z = 11.658 }, level = 10, area_id = 3 },
	{ config_id = 243002, gadget_id = 70211012, pos = { x = 1887.122, y = 237.562, z = -797.194 }, rot = { x = 5.100, y = 343.600, z = 1.700 }, level = 6, drop_tag = "战斗中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 3 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1243003, name = "ANY_MONSTER_DIE_243003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_243003", action = "action_EVENT_ANY_MONSTER_DIE_243003" }
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
		monsters = { 243001 },
		gadgets = { 2133, 2134, 2135, 243002 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_243003" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100,
		ban_refresh = true
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_243003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_243003(context, evt)
	-- 将configid为 243002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 243002, GadgetState.Default) then
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