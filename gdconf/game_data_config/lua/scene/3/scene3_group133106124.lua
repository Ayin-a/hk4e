-- 基础信息
local base_info = {
	group_id = 133106124
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 124001, monster_id = 23010101, pos = { x = -200.439, y = 181.434, z = 993.333 }, rot = { x = 0.000, y = 306.273, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 8 },
	{ config_id = 124004, monster_id = 23010301, pos = { x = -204.450, y = 181.467, z = 992.364 }, rot = { x = 0.000, y = 282.628, z = 0.000 }, level = 32, drop_tag = "先遣队", disableWander = true, area_id = 8 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 124002, gadget_id = 70211012, pos = { x = -198.439, y = 181.376, z = 994.101 }, rot = { x = 357.296, y = 248.540, z = 7.742 }, level = 26, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 8 },
	{ config_id = 124006, gadget_id = 70310004, pos = { x = -205.384, y = 181.255, z = 990.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, state = GadgetState.GearStart, area_id = 8 }
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
		monsters = { 124001, 124004 },
		gadgets = { 124002, 124006 },
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