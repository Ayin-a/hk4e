-- 基础信息
local base_info = {
	group_id = 199003055
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 55001, monster_id = 21010301, pos = { x = -726.284, y = 120.361, z = -104.971 }, rot = { x = 0.000, y = 343.669, z = 0.000 }, level = 20, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, area_id = 403 },
	{ config_id = 55004, monster_id = 21030401, pos = { x = -736.333, y = 120.146, z = -102.502 }, rot = { x = 0.000, y = 234.167, z = 0.000 }, level = 20, drop_tag = "丘丘萨满", pose_id = 9012, area_id = 403 },
	{ config_id = 55005, monster_id = 21010301, pos = { x = -726.848, y = 120.840, z = -101.050 }, rot = { x = 0.000, y = 169.413, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 403 },
	{ config_id = 55006, monster_id = 21020101, pos = { x = -734.381, y = 120.102, z = -104.508 }, rot = { x = 0.000, y = 255.365, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 403 },
	{ config_id = 55007, monster_id = 21020201, pos = { x = -736.773, y = 120.167, z = -100.315 }, rot = { x = 0.000, y = 231.589, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 403 },
	{ config_id = 55008, monster_id = 21010501, pos = { x = -725.593, y = 126.664, z = -84.670 }, rot = { x = 0.000, y = 38.090, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 403 },
	{ config_id = 55009, monster_id = 21011001, pos = { x = -719.931, y = 126.325, z = -107.161 }, rot = { x = 0.000, y = 61.372, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", disableWander = true, area_id = 403 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 55002, gadget_id = 70211012, pos = { x = -722.547, y = 121.695, z = -98.863 }, rot = { x = 0.000, y = 35.818, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 403 },
	{ config_id = 55010, gadget_id = 70220013, pos = { x = -731.111, y = 120.362, z = -104.267 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 55011, gadget_id = 70220013, pos = { x = -729.158, y = 120.978, z = -95.752 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 55012, gadget_id = 70310009, pos = { x = -726.571, y = 120.637, z = -102.952 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 55013, gadget_id = 70300090, pos = { x = -725.783, y = 121.264, z = -84.724 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 55014, gadget_id = 70300090, pos = { x = -720.226, y = 120.641, z = -107.582 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 },
	{ config_id = 55015, gadget_id = 70300085, pos = { x = -722.938, y = 121.234, z = -98.889 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 403 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1055003, name = "ANY_MONSTER_DIE_55003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55003", action = "action_EVENT_ANY_MONSTER_DIE_55003" }
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
		monsters = { 55001, 55004, 55005, 55006, 55007, 55008, 55009 },
		gadgets = { 55002, 55010, 55011, 55012, 55013, 55014, 55015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_55003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55003(context, evt)
	-- 将configid为 55002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 55002, GadgetState.Default) then
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