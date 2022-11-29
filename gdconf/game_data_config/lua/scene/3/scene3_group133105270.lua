-- 基础信息
local base_info = {
	group_id = 133105270
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 270001, monster_id = 21020201, pos = { x = 553.198, y = 202.688, z = -626.688 }, rot = { x = 0.000, y = 332.802, z = 0.000 }, level = 25, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 9 },
	{ config_id = 270004, monster_id = 21010901, pos = { x = 556.110, y = 202.668, z = -626.106 }, rot = { x = 0.000, y = 332.802, z = 0.000 }, level = 25, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 9 },
	{ config_id = 270005, monster_id = 21011001, pos = { x = 551.744, y = 202.688, z = -629.058 }, rot = { x = 0.000, y = 332.802, z = 0.000 }, level = 25, drop_tag = "远程丘丘人", disableWander = true, pose_id = 32, area_id = 9 },
	{ config_id = 270006, monster_id = 21010201, pos = { x = 555.641, y = 202.688, z = -620.888 }, rot = { x = 0.000, y = 353.376, z = 0.000 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9012, area_id = 9 },
	{ config_id = 270007, monster_id = 21010601, pos = { x = 555.871, y = 202.728, z = -618.751 }, rot = { x = 0.000, y = 198.196, z = 0.000 }, level = 25, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 9 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 270002, gadget_id = 70211012, pos = { x = 554.010, y = 202.688, z = -628.171 }, rot = { x = 0.000, y = 332.517, z = 0.000 }, level = 16, drop_tag = "战斗中级璃月", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 9 },
	{ config_id = 270008, gadget_id = 70310001, pos = { x = 560.081, y = 202.668, z = -627.520 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 270009, gadget_id = 70310001, pos = { x = 551.418, y = 202.688, z = -632.219 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 270010, gadget_id = 70310001, pos = { x = 553.505, y = 202.728, z = -610.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 270011, gadget_id = 70310001, pos = { x = 541.586, y = 202.796, z = -629.976 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, state = GadgetState.GearStart, area_id = 9 },
	{ config_id = 270012, gadget_id = 70220013, pos = { x = 559.144, y = 202.728, z = -616.113 }, rot = { x = 0.000, y = 326.734, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270013, gadget_id = 70220013, pos = { x = 541.726, y = 202.860, z = -627.378 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270014, gadget_id = 70220013, pos = { x = 540.456, y = 203.102, z = -621.216 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270015, gadget_id = 70220014, pos = { x = 541.795, y = 202.748, z = -623.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270016, gadget_id = 70220014, pos = { x = 541.932, y = 202.841, z = -625.897 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270017, gadget_id = 70220014, pos = { x = 543.624, y = 202.590, z = -629.703 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270018, gadget_id = 70220014, pos = { x = 544.412, y = 202.748, z = -620.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270019, gadget_id = 70220014, pos = { x = 543.406, y = 202.748, z = -620.371 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270020, gadget_id = 70220005, pos = { x = 544.169, y = 202.748, z = -619.927 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270021, gadget_id = 70220035, pos = { x = 559.587, y = 202.668, z = -625.028 }, rot = { x = 0.000, y = 319.677, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270022, gadget_id = 70220014, pos = { x = 560.331, y = 202.668, z = -624.860 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270023, gadget_id = 70220014, pos = { x = 560.127, y = 202.668, z = -626.251 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 },
	{ config_id = 270024, gadget_id = 70220026, pos = { x = 557.530, y = 207.598, z = -611.366 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 9 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1270003, name = "ANY_MONSTER_DIE_270003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_270003", action = "action_EVENT_ANY_MONSTER_DIE_270003" }
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
		monsters = { 270001, 270004, 270005, 270006, 270007 },
		gadgets = { 270002, 270008, 270009, 270010, 270011, 270012, 270013, 270014, 270015, 270016, 270017, 270018, 270019, 270020, 270021, 270024 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_270003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_270003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_270003(context, evt)
	-- 将configid为 270002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 270002, GadgetState.Default) then
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