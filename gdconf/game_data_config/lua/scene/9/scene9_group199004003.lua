-- 基础信息
local base_info = {
	group_id = 199004003
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 3001, monster_id = 21010201, pos = { x = -212.453, y = 120.892, z = -55.097 }, rot = { x = 0.000, y = 151.892, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 403 },
	{ config_id = 3004, monster_id = 21010201, pos = { x = -214.453, y = 120.892, z = -55.394 }, rot = { x = 0.000, y = 168.880, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 403 },
	{ config_id = 3005, monster_id = 21020101, pos = { x = -215.606, y = 122.124, z = -39.782 }, rot = { x = 0.000, y = 173.927, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", area_id = 403 },
	{ config_id = 3006, monster_id = 21030301, pos = { x = -221.595, y = 122.108, z = -42.055 }, rot = { x = 0.000, y = 263.455, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 403 },
	{ config_id = 3007, monster_id = 20010301, pos = { x = -221.923, y = 122.108, z = -39.436 }, rot = { x = 0.000, y = 177.135, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 403 },
	{ config_id = 3008, monster_id = 20010301, pos = { x = -221.554, y = 122.147, z = -44.991 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 403 },
	{ config_id = 3009, monster_id = 20010301, pos = { x = -219.013, y = 122.173, z = -42.160 }, rot = { x = 0.000, y = 264.696, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 403 },
	{ config_id = 3011, monster_id = 21011001, pos = { x = -206.258, y = 125.528, z = -83.916 }, rot = { x = 0.000, y = 258.470, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 401 },
	{ config_id = 3012, monster_id = 21010501, pos = { x = -203.709, y = 125.441, z = -86.810 }, rot = { x = 0.000, y = 186.433, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 401 },
	{ config_id = 3013, monster_id = 21020101, pos = { x = -204.293, y = 122.150, z = -95.402 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", area_id = 401 },
	{ config_id = 3014, monster_id = 21010301, pos = { x = -212.218, y = 122.141, z = -94.232 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 401 },
	{ config_id = 3015, monster_id = 21010101, pos = { x = -210.495, y = 120.893, z = -83.252 }, rot = { x = 0.000, y = 259.820, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 401 },
	{ config_id = 3016, monster_id = 21010101, pos = { x = -212.290, y = 120.865, z = -86.861 }, rot = { x = 0.000, y = 296.827, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 401 },
	{ config_id = 3017, monster_id = 21010301, pos = { x = -208.884, y = 122.141, z = -91.912 }, rot = { x = 0.000, y = 299.795, z = 0.000 }, level = 20, drop_tag = "丘丘人", area_id = 401 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 3002, gadget_id = 70211012, pos = { x = -221.853, y = 125.641, z = -51.665 }, rot = { x = 0.000, y = 274.047, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	{ config_id = 3010, gadget_id = 70300087, pos = { x = -203.569, y = 125.614, z = -84.254 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 401 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1003003, name = "ANY_MONSTER_DIE_3003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_3003", action = "action_EVENT_ANY_MONSTER_DIE_3003" }
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
		monsters = { 3001, 3004, 3005, 3006, 3007, 3008, 3009, 3011, 3012, 3013, 3014, 3015, 3016, 3017 },
		gadgets = { 3002, 3010 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_3003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_3003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_3003(context, evt)
	-- 将configid为 3002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 3002, GadgetState.Default) then
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