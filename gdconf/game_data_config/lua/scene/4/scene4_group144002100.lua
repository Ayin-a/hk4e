-- 基础信息
local base_info = {
	group_id = 144002100
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 100001, monster_id = 21010201, pos = { x = 417.037, y = 220.129, z = -483.650 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 101 },
	{ config_id = 100004, monster_id = 21010201, pos = { x = 411.552, y = 220.291, z = -481.159 }, rot = { x = 0.000, y = 43.560, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9016, area_id = 101 },
	{ config_id = 100005, monster_id = 21020101, pos = { x = 411.823, y = 217.686, z = -490.872 }, rot = { x = 0.000, y = 119.739, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 101 },
	{ config_id = 100010, monster_id = 21010501, pos = { x = 422.513, y = 223.542, z = -489.200 }, rot = { x = 0.000, y = 236.705, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 101 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 100002, gadget_id = 70211012, pos = { x = 413.645, y = 219.121, z = -486.323 }, rot = { x = 0.000, y = 182.050, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 101 },
	{ config_id = 100006, gadget_id = 70310006, pos = { x = 415.260, y = 218.213, z = -490.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 101 },
	{ config_id = 100007, gadget_id = 70220067, pos = { x = 419.463, y = 219.257, z = -488.228 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 101 },
	{ config_id = 100008, gadget_id = 70220014, pos = { x = 408.589, y = 218.847, z = -484.836 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 101 },
	{ config_id = 100009, gadget_id = 70300090, pos = { x = 422.378, y = 218.070, z = -489.226 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 101 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1100003, name = "ANY_MONSTER_DIE_100003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_100003", action = "action_EVENT_ANY_MONSTER_DIE_100003" }
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
		monsters = { 100001, 100004, 100005, 100010 },
		gadgets = { 100002, 100006, 100007, 100008, 100009 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_100003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_100003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_100003(context, evt)
	-- 将configid为 100002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 100002, GadgetState.Default) then
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