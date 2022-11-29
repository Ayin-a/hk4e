-- 基础信息
local base_info = {
	group_id = 133222331
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 331001, monster_id = 21020701, pos = { x = -4997.611, y = 202.517, z = -4221.412 }, rot = { x = 0.000, y = 269.832, z = 0.000 }, level = 32, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, climate_area_id = 10, area_id = 14 },
	{ config_id = 331007, monster_id = 21010501, pos = { x = -4982.555, y = 200.721, z = -4244.780 }, rot = { x = 0.000, y = 49.295, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 331008, monster_id = 21010501, pos = { x = -5005.095, y = 203.367, z = -4211.509 }, rot = { x = 0.000, y = 55.410, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 331009, monster_id = 21010501, pos = { x = -4998.494, y = 203.170, z = -4225.332 }, rot = { x = 0.000, y = 130.929, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", disableWander = true, climate_area_id = 10, area_id = 14 },
	{ config_id = 331010, monster_id = 21010201, pos = { x = -5001.426, y = 202.556, z = -4217.837 }, rot = { x = 0.000, y = 272.239, z = 0.000 }, level = 30, drop_tag = "丘丘人", disableWander = true, pose_id = 9002, climate_area_id = 10, area_id = 14 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 331002, gadget_id = 70211022, pos = { x = -5002.760, y = 203.189, z = -4221.264 }, rot = { x = 16.023, y = 68.715, z = 0.000 }, level = 26, drop_tag = "战斗高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 14 },
	{ config_id = 331004, gadget_id = 70310001, pos = { x = -4995.712, y = 201.716, z = -4225.930 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 331005, gadget_id = 70310001, pos = { x = -4999.390, y = 202.472, z = -4236.494 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 331006, gadget_id = 70310001, pos = { x = -5004.604, y = 202.747, z = -4213.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, state = GadgetState.GearStart, area_id = 14 },
	{ config_id = 331011, gadget_id = 70300086, pos = { x = -5004.136, y = 203.312, z = -4223.652 }, rot = { x = 351.034, y = 57.601, z = 25.506 }, level = 30, area_id = 14 },
	{ config_id = 331012, gadget_id = 70300086, pos = { x = -5007.554, y = 201.567, z = -4212.890 }, rot = { x = 23.442, y = 0.000, z = 359.077 }, level = 30, area_id = 14 },
	{ config_id = 331013, gadget_id = 70300086, pos = { x = -4995.145, y = 199.768, z = -4222.869 }, rot = { x = 0.000, y = 0.000, z = 333.764 }, level = 30, area_id = 14 },
	{ config_id = 331014, gadget_id = 70220014, pos = { x = -5001.295, y = 203.553, z = -4227.064 }, rot = { x = 347.671, y = 317.239, z = 338.934 }, level = 30, area_id = 14 },
	{ config_id = 331015, gadget_id = 70220014, pos = { x = -5002.658, y = 203.654, z = -4226.331 }, rot = { x = 356.428, y = 324.935, z = 336.373 }, level = 30, area_id = 14 },
	{ config_id = 331016, gadget_id = 70220014, pos = { x = -5005.610, y = 204.163, z = -4218.669 }, rot = { x = 351.153, y = 3.705, z = 337.170 }, level = 30, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1331003, name = "ANY_MONSTER_DIE_331003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_331003", action = "action_EVENT_ANY_MONSTER_DIE_331003" }
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
		monsters = { 331001, 331007, 331008, 331009, 331010 },
		gadgets = { 331002, 331004, 331005, 331006, 331011, 331012, 331013, 331014, 331015, 331016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_331003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_331003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_331003(context, evt)
	-- 将configid为 331002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 331002, GadgetState.Default) then
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