-- 基础信息
local base_info = {
	group_id = 133301424
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 424001, monster_id = 21010601, pos = { x = -450.277, y = 190.629, z = 3815.618 }, rot = { x = 0.000, y = 33.304, z = 0.000 }, level = 33, drop_tag = "丘丘人", pose_id = 9002, area_id = 22 },
	{ config_id = 424004, monster_id = 21010601, pos = { x = -456.787, y = 188.720, z = 3834.208 }, rot = { x = 0.000, y = 169.430, z = 0.000 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9013, area_id = 22 },
	{ config_id = 424005, monster_id = 21020201, pos = { x = -459.174, y = 188.211, z = 3819.153 }, rot = { x = 0.000, y = 90.687, z = 0.000 }, level = 33, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 22 },
	{ config_id = 424007, monster_id = 21010701, pos = { x = -460.437, y = 186.434, z = 3828.678 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, drop_tag = "丘丘人", area_id = 22 },
	{ config_id = 424008, monster_id = 28061401, pos = { x = -454.949, y = 189.123, z = 3816.719 }, rot = { x = 0.000, y = 315.731, z = 0.000 }, level = 33, drop_tag = "驮兽丘丘人", pose_id = 3, area_id = 22 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 424002, gadget_id = 70211002, pos = { x = -456.368, y = 188.696, z = 3830.173 }, rot = { x = 347.762, y = 133.772, z = 353.236 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 22 },
	{ config_id = 424006, gadget_id = 70310004, pos = { x = -455.876, y = 187.894, z = 3820.289 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 33, state = GadgetState.GearStart, area_id = 22 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1424003, name = "ANY_MONSTER_DIE_424003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_424003", action = "action_EVENT_ANY_MONSTER_DIE_424003" }
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
		monsters = { 424001, 424004, 424005, 424007, 424008 },
		gadgets = { 424002, 424006 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_424003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_424003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_424003(context, evt)
	-- 将configid为 424002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 424002, GadgetState.Default) then
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