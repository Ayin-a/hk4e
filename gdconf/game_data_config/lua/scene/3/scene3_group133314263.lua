-- 基础信息
local base_info = {
	group_id = 133314263
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 263001, monster_id = 21010301, pos = { x = -891.394, y = 53.106, z = 4571.150 }, rot = { x = 0.000, y = 228.785, z = 0.000 }, level = 32, drop_tag = "丘丘人", disableWander = true, area_id = 32 },
	{ config_id = 263004, monster_id = 21010301, pos = { x = -905.131, y = 51.662, z = 4574.217 }, rot = { x = 0.000, y = 166.473, z = 0.000 }, level = 32, drop_tag = "丘丘人", area_id = 32 },
	{ config_id = 263005, monster_id = 21010502, pos = { x = -880.260, y = 62.728, z = 4573.926 }, rot = { x = 0.000, y = 232.451, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", pose_id = 32, area_id = 32 },
	{ config_id = 263006, monster_id = 21030101, pos = { x = -902.416, y = 53.733, z = 4582.247 }, rot = { x = 0.000, y = 154.672, z = 0.000 }, level = 32, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 32 },
	{ config_id = 263008, monster_id = 20011001, pos = { x = -904.153, y = 53.899, z = 4579.689 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "史莱姆", area_id = 32 },
	{ config_id = 263009, monster_id = 21011002, pos = { x = -906.115, y = 62.391, z = 4579.030 }, rot = { x = 0.000, y = 162.301, z = 0.000 }, level = 32, drop_tag = "远程丘丘人", area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 263002, gadget_id = 70210119, pos = { x = -889.937, y = 55.872, z = 4577.909 }, rot = { x = 342.312, y = 54.473, z = 5.354 }, level = 26, drop_tag = "战斗中级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 32 },
	{ config_id = 263007, gadget_id = 70300087, pos = { x = -904.157, y = 53.899, z = 4579.639 }, rot = { x = 0.000, y = 25.656, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 263010, gadget_id = 70220103, pos = { x = -902.175, y = 65.688, z = 4578.808 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1263003, name = "ANY_MONSTER_DIE_263003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_263003", action = "action_EVENT_ANY_MONSTER_DIE_263003" }
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
		monsters = { 263001, 263004, 263005, 263006, 263008, 263009 },
		gadgets = { 263002, 263007, 263010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_263003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_263003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_263003(context, evt)
	-- 将configid为 263002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 263002, GadgetState.Default) then
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