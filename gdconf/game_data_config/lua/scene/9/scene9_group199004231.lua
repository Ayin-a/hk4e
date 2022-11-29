-- 基础信息
local base_info = {
	group_id = 199004231
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 231001, monster_id = 21011201, pos = { x = -141.515, y = 121.738, z = -926.330 }, rot = { x = 0.000, y = 126.418, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9012, area_id = 400 },
	{ config_id = 231004, monster_id = 21020301, pos = { x = -137.861, y = 121.722, z = -922.652 }, rot = { x = 0.000, y = 131.291, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 400 },
	{ config_id = 231005, monster_id = 21011201, pos = { x = -138.745, y = 121.790, z = -926.783 }, rot = { x = 0.000, y = 259.519, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9012, area_id = 400 },
	{ config_id = 231006, monster_id = 21011201, pos = { x = -140.500, y = 121.742, z = -928.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9012, area_id = 400 },
	{ config_id = 231008, monster_id = 20011001, pos = { x = -140.423, y = 122.200, z = -927.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 231009, monster_id = 21010401, pos = { x = -136.186, y = 125.249, z = -935.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, pose_id = 402, area_id = 400 },
	{ config_id = 231010, monster_id = 21010101, pos = { x = -131.708, y = 120.519, z = -934.688 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9002, area_id = 400 },
	{ config_id = 231011, monster_id = 21010101, pos = { x = -133.189, y = 120.492, z = -933.140 }, rot = { x = 0.000, y = 113.515, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9002, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 231002, gadget_id = 70211012, pos = { x = -140.606, y = 121.743, z = -922.218 }, rot = { x = 0.000, y = 141.165, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 231007, gadget_id = 70300087, pos = { x = -140.325, y = 121.738, z = -927.393 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 231012, gadget_id = 70220013, pos = { x = -132.210, y = 121.680, z = -921.824 }, rot = { x = 0.000, y = 320.569, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 231013, gadget_id = 70220026, pos = { x = -131.157, y = 121.681, z = -923.003 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 231014, gadget_id = 70220026, pos = { x = -134.085, y = 121.771, z = -921.701 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 231015, gadget_id = 70220026, pos = { x = -130.743, y = 121.692, z = -924.523 }, rot = { x = 0.000, y = 316.687, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1231003, name = "ANY_MONSTER_DIE_231003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_231003", action = "action_EVENT_ANY_MONSTER_DIE_231003" }
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
		monsters = { 231001, 231004, 231005, 231006, 231008, 231009, 231010, 231011 },
		gadgets = { 231002, 231007, 231012, 231013, 231014, 231015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_231003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_231003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_231003(context, evt)
	-- 将configid为 231002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 231002, GadgetState.Default) then
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