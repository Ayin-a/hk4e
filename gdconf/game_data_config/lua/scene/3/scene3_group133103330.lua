-- 基础信息
local base_info = {
	group_id = 133103330
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 330001, monster_id = 21010201, pos = { x = 525.632, y = 288.218, z = 1501.631 }, rot = { x = 0.000, y = 107.719, z = 0.000 }, level = 24, drop_tag = "丘丘人", disableWander = true, area_id = 6 },
	{ config_id = 330011, monster_id = 21020201, pos = { x = 517.084, y = 289.405, z = 1512.058 }, rot = { x = 0.000, y = 94.910, z = 0.000 }, level = 24, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 6 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 330002, gadget_id = 70211012, pos = { x = 521.637, y = 288.764, z = 1509.370 }, rot = { x = 0.000, y = 282.628, z = 0.000 }, level = 21, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 6 },
	{ config_id = 330005, gadget_id = 70220013, pos = { x = 525.274, y = 288.199, z = 1508.883 }, rot = { x = 0.000, y = 66.777, z = 0.000 }, level = 24, area_id = 6 },
	{ config_id = 330009, gadget_id = 70310001, pos = { x = 523.894, y = 288.739, z = 1495.352 }, rot = { x = 0.000, y = 279.122, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 330010, gadget_id = 70310001, pos = { x = 507.431, y = 290.098, z = 1508.897 }, rot = { x = 0.000, y = 244.166, z = 0.000 }, level = 24, state = GadgetState.GearStart, area_id = 6 },
	{ config_id = 330014, gadget_id = 70310006, pos = { x = 519.661, y = 288.765, z = 1513.384 }, rot = { x = 0.000, y = 199.056, z = 0.000 }, level = 24, area_id = 6 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1330003, name = "ANY_MONSTER_DIE_330003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_330003", action = "action_EVENT_ANY_MONSTER_DIE_330003" }
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
		monsters = { 330001, 330011 },
		gadgets = { 330002, 330005, 330009, 330010, 330014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_330003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_330003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_330003(context, evt)
	-- 将configid为 330002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 330002, GadgetState.Default) then
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