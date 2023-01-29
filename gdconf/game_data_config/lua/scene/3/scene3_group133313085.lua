-- 基础信息
local base_info = {
	group_id = 133313085
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 85001, monster_id = 25210203, pos = { x = -334.069, y = 204.689, z = 5362.575 }, rot = { x = 0.000, y = 23.675, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9001, area_id = 32 },
	{ config_id = 85005, monster_id = 28060401, pos = { x = -331.822, y = 214.160, z = 5340.859 }, rot = { x = 0.000, y = 217.669, z = 0.000 }, level = 32, drop_tag = "走兽", pose_id = 3, area_id = 32 },
	{ config_id = 85006, monster_id = 25210501, pos = { x = -333.132, y = 214.177, z = 5338.766 }, rot = { x = 0.000, y = 23.902, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9501, area_id = 32 },
	{ config_id = 85007, monster_id = 25210301, pos = { x = -325.101, y = 213.894, z = 5344.128 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, drop_tag = "镀金旅团", pose_id = 9007, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 85002, gadget_id = 70211002, pos = { x = -333.967, y = 204.637, z = 5360.975 }, rot = { x = 0.117, y = 102.026, z = 0.341 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 32 },
	{ config_id = 85004, gadget_id = 70220128, pos = { x = -332.380, y = 214.034, z = 5339.728 }, rot = { x = 1.050, y = 304.257, z = 358.836 }, level = 32, area_id = 32 },
	{ config_id = 85008, gadget_id = 70210101, pos = { x = -332.786, y = 213.958, z = 5335.085 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜武器须弥", persistent = true, area_id = 32 },
	{ config_id = 85009, gadget_id = 70210101, pos = { x = -331.590, y = 204.848, z = 5361.048 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 26, drop_tag = "搜刮点解谜破损须弥", persistent = true, area_id = 32 },
	{ config_id = 85010, gadget_id = 71700430, pos = { x = -336.967, y = 213.964, z = 5337.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 85011, gadget_id = 70220063, pos = { x = -335.287, y = 213.969, z = 5336.595 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 85012, gadget_id = 70220052, pos = { x = -332.403, y = 203.779, z = 5363.887 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 },
	{ config_id = 85013, gadget_id = 70220052, pos = { x = -337.729, y = 213.958, z = 5337.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1085003, name = "ANY_MONSTER_DIE_85003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_85003", action = "action_EVENT_ANY_MONSTER_DIE_85003" }
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
		monsters = { 85001, 85005, 85006, 85007 },
		gadgets = { 85002, 85004, 85008, 85009, 85010, 85011, 85012, 85013 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_85003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_85003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_85003(context, evt)
	-- 将configid为 85002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 85002, GadgetState.Default) then
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