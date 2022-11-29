-- 基础信息
local base_info = {
	group_id = 133307175
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 175001, monster_id = 25010501, pos = { x = -1497.458, y = 208.868, z = 4251.761 }, rot = { x = 0.000, y = 344.381, z = 0.000 }, level = 32, drop_tag = "盗宝团", disableWander = true, pose_id = 9002, area_id = 26 },
	{ config_id = 175005, monster_id = 25210302, pos = { x = -1489.601, y = 209.652, z = 4235.716 }, rot = { x = 0.000, y = 294.882, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9504, area_id = 26 },
	{ config_id = 175006, monster_id = 25310201, pos = { x = -1501.520, y = 209.311, z = 4244.723 }, rot = { x = 0.000, y = 227.036, z = 0.000 }, level = 32, drop_tag = "中级镀金旅团", pose_id = 9001, area_id = 26 },
	{ config_id = 175012, monster_id = 25210501, pos = { x = -1497.009, y = 210.945, z = 4232.113 }, rot = { x = 0.000, y = 292.445, z = 0.000 }, level = 32, drop_tag = "镀金旅团", area_id = 26 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 175002, gadget_id = 70211002, pos = { x = -1496.887, y = 208.846, z = 4248.716 }, rot = { x = 345.106, y = 185.988, z = 4.445 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 26 },
	{ config_id = 175004, gadget_id = 70310004, pos = { x = -1492.416, y = 209.856, z = 4236.446 }, rot = { x = 8.451, y = 359.550, z = 353.912 }, level = 32, state = GadgetState.GearStart, area_id = 26 },
	{ config_id = 175007, gadget_id = 71700431, pos = { x = -1493.145, y = 209.157, z = 4240.318 }, rot = { x = 0.000, y = 358.294, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 175008, gadget_id = 70220051, pos = { x = -1492.741, y = 209.366, z = 4239.104 }, rot = { x = 0.000, y = 329.928, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 175009, gadget_id = 70220052, pos = { x = -1490.085, y = 209.484, z = 4237.264 }, rot = { x = 0.000, y = 14.311, z = 0.000 }, level = 32, area_id = 26 },
	{ config_id = 175010, gadget_id = 70710352, pos = { x = -1491.647, y = 209.382, z = 4239.065 }, rot = { x = 1.348, y = 312.885, z = 349.684 }, level = 32, area_id = 26 },
	{ config_id = 175011, gadget_id = 70210101, pos = { x = -1491.462, y = 209.298, z = 4239.621 }, rot = { x = 0.000, y = 329.928, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 26 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1175003, name = "ANY_MONSTER_DIE_175003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_175003", action = "action_EVENT_ANY_MONSTER_DIE_175003" }
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
		monsters = { 175001, 175005, 175006, 175012 },
		gadgets = { 175002, 175004, 175007, 175008, 175009, 175010, 175011 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_175003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_175003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_175003(context, evt)
	-- 将configid为 175002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 175002, GadgetState.Default) then
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