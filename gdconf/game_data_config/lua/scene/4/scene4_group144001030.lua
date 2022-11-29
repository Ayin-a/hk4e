-- 基础信息
local base_info = {
	group_id = 144001030
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 30001, monster_id = 21010101, pos = { x = 159.619, y = 120.661, z = 401.932 }, rot = { x = 0.000, y = 279.595, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9015, area_id = 102 },
	{ config_id = 30004, monster_id = 21020101, pos = { x = 153.122, y = 120.436, z = 391.457 }, rot = { x = 359.203, y = 127.532, z = 3.895 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 102 },
	{ config_id = 30005, monster_id = 21010601, pos = { x = 157.469, y = 120.382, z = 388.979 }, rot = { x = 341.776, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9011, area_id = 102 },
	{ config_id = 30006, monster_id = 21010301, pos = { x = 178.398, y = 121.462, z = 391.990 }, rot = { x = 0.000, y = 96.525, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 30008, monster_id = 21011001, pos = { x = 145.928, y = 120.158, z = 381.871 }, rot = { x = 0.000, y = 64.377, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 102 },
	{ config_id = 30009, monster_id = 21011001, pos = { x = 153.974, y = 123.021, z = 394.547 }, rot = { x = 0.000, y = 335.426, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", area_id = 102 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 30002, gadget_id = 70211012, pos = { x = 156.185, y = 120.260, z = 390.775 }, rot = { x = 354.694, y = 101.411, z = 359.115 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 102 },
	{ config_id = 30007, gadget_id = 70220026, pos = { x = 156.948, y = 120.395, z = 396.058 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 30010, gadget_id = 70220026, pos = { x = 154.502, y = 120.187, z = 384.665 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 30011, gadget_id = 70220013, pos = { x = 156.969, y = 120.381, z = 383.890 }, rot = { x = 0.000, y = 343.814, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 30012, gadget_id = 70220026, pos = { x = 180.196, y = 121.636, z = 385.167 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 30013, gadget_id = 70310001, pos = { x = 159.588, y = 120.468, z = 393.352 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 30014, gadget_id = 70220013, pos = { x = 178.507, y = 121.578, z = 384.678 }, rot = { x = 0.000, y = 348.634, z = 0.000 }, level = 1, area_id = 102 },
	{ config_id = 30015, gadget_id = 70300081, pos = { x = 169.145, y = 120.715, z = 402.813 }, rot = { x = 0.000, y = 309.594, z = 352.126 }, level = 1, area_id = 102 },
	{ config_id = 30016, gadget_id = 70300122, pos = { x = 166.685, y = 120.614, z = 385.854 }, rot = { x = 0.000, y = 0.000, z = 12.833 }, level = 1, area_id = 102 },
	{ config_id = 30017, gadget_id = 70300122, pos = { x = 170.953, y = 120.843, z = 396.144 }, rot = { x = 0.000, y = 337.754, z = 11.569 }, level = 1, area_id = 102 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1030003, name = "ANY_MONSTER_DIE_30003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_30003", action = "action_EVENT_ANY_MONSTER_DIE_30003" }
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
		monsters = { 30001, 30004, 30005, 30006, 30008, 30009 },
		gadgets = { 30002, 30007, 30010, 30011, 30012, 30013, 30014, 30015, 30016, 30017 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_30003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_30003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_30003(context, evt)
	-- 将configid为 30002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 30002, GadgetState.Default) then
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