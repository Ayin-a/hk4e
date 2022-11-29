-- 基础信息
local base_info = {
	group_id = 133008032
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 32001, monster_id = 21010901, pos = { x = 1297.307, y = 273.017, z = -1217.194 }, rot = { x = 0.000, y = 51.138, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, pose_id = 9013, climate_area_id = 1, area_id = 10 },
	{ config_id = 32004, monster_id = 21030501, pos = { x = 1281.279, y = 272.560, z = -1218.582 }, rot = { x = 0.000, y = 145.560, z = 0.000 }, level = 30, drop_tag = "丘丘萨满", pose_id = 9012, climate_area_id = 1, area_id = 10 },
	{ config_id = 32005, monster_id = 21011401, pos = { x = 1273.912, y = 273.382, z = -1210.664 }, rot = { x = 0.000, y = 274.892, z = 0.000 }, level = 30, drop_tag = "丘丘人", pose_id = 9016, climate_area_id = 1, area_id = 10 },
	{ config_id = 32006, monster_id = 21020601, pos = { x = 1286.981, y = 272.888, z = -1221.405 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", pose_id = 401, climate_area_id = 1, area_id = 10 },
	{ config_id = 32007, monster_id = 21011401, pos = { x = 1282.026, y = 272.250, z = -1208.186 }, rot = { x = 0.000, y = 28.519, z = 0.000 }, level = 30, drop_tag = "丘丘人", climate_area_id = 1, area_id = 10 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 32002, gadget_id = 70211146, pos = { x = 1291.429, y = 273.649, z = -1228.670 }, rot = { x = 0.000, y = 343.613, z = 0.000 }, level = 26, drop_tag = "雪山玉髓高级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 10 },
	{ config_id = 32008, gadget_id = 70300088, pos = { x = 1298.559, y = 273.101, z = -1214.729 }, rot = { x = 0.000, y = 127.250, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 32009, gadget_id = 70300088, pos = { x = 1301.909, y = 273.017, z = -1216.942 }, rot = { x = 0.000, y = 156.930, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 32010, gadget_id = 70220059, pos = { x = 1278.964, y = 273.831, z = -1236.231 }, rot = { x = 0.000, y = 328.430, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 32011, gadget_id = 70220059, pos = { x = 1270.619, y = 273.195, z = -1214.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 32012, gadget_id = 70220060, pos = { x = 1271.512, y = 273.342, z = -1215.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 32013, gadget_id = 70220060, pos = { x = 1279.889, y = 273.738, z = -1235.111 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 32014, gadget_id = 70220060, pos = { x = 1293.216, y = 273.144, z = -1222.866 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 },
	{ config_id = 32015, gadget_id = 70300087, pos = { x = 1276.734, y = 273.017, z = -1229.103 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 10 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1032003, name = "ANY_MONSTER_DIE_32003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_32003", action = "action_EVENT_ANY_MONSTER_DIE_32003" }
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
		monsters = { 32001, 32004, 32005, 32006, 32007 },
		gadgets = { 32002, 32008, 32009, 32010, 32011, 32012, 32013, 32014, 32015 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_32003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_32003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_32003(context, evt)
	-- 将configid为 32002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 32002, GadgetState.Default) then
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