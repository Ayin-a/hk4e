-- 基础信息
local base_info = {
	group_id = 199004009
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 9001, monster_id = 21020301, pos = { x = -400.819, y = 123.946, z = -351.170 }, rot = { x = 0.000, y = 118.799, z = 0.000 }, level = 20, drop_tag = "丘丘暴徒", pose_id = 401, area_id = 400 },
	{ config_id = 9009, monster_id = 21010501, pos = { x = -392.833, y = 130.123, z = -342.626 }, rot = { x = 0.000, y = 222.949, z = 0.000 }, level = 20, drop_tag = "远程丘丘人", pose_id = 32, area_id = 400 },
	{ config_id = 9010, monster_id = 20010601, pos = { x = -404.432, y = 123.898, z = -354.139 }, rot = { x = 0.000, y = 43.275, z = 0.000 }, level = 20, drop_tag = "大史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 9011, monster_id = 20011001, pos = { x = -394.883, y = 123.877, z = -346.832 }, rot = { x = 0.000, y = 234.040, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 9012, monster_id = 21010101, pos = { x = -396.934, y = 123.854, z = -351.874 }, rot = { x = 0.000, y = 259.820, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 400 },
	{ config_id = 9013, monster_id = 21010101, pos = { x = -399.584, y = 123.823, z = -354.643 }, rot = { x = 0.000, y = 344.996, z = 0.000 }, level = 20, drop_tag = "丘丘人", pose_id = 9003, area_id = 400 },
	{ config_id = 9024, monster_id = 20011001, pos = { x = -393.056, y = 123.944, z = -349.285 }, rot = { x = 0.000, y = 246.726, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 400 },
	{ config_id = 9025, monster_id = 20011001, pos = { x = -397.022, y = 123.878, z = -345.437 }, rot = { x = 0.000, y = 220.965, z = 0.000 }, level = 20, drop_tag = "史莱姆", disableWander = true, area_id = 400 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 9002, gadget_id = 70300089, pos = { x = -409.124, y = 123.971, z = -349.002 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9003, gadget_id = 70300089, pos = { x = -395.993, y = 123.887, z = -341.255 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9004, gadget_id = 70220005, pos = { x = -392.357, y = 123.815, z = -355.210 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9005, gadget_id = 70220005, pos = { x = -401.450, y = 123.830, z = -360.594 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9006, gadget_id = 70220005, pos = { x = -390.332, y = 123.866, z = -357.563 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9007, gadget_id = 70220005, pos = { x = -389.463, y = 123.789, z = -357.185 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9008, gadget_id = 70220013, pos = { x = -398.658, y = 119.688, z = -349.470 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9014, gadget_id = 70211012, pos = { x = -407.842, y = 124.018, z = -359.097 }, rot = { x = 0.000, y = 57.220, z = 0.000 }, level = 16, drop_tag = "战斗中级群岛", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 400 },
	{ config_id = 9015, gadget_id = 70300087, pos = { x = -399.127, y = 123.964, z = -352.584 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9017, gadget_id = 70220013, pos = { x = -391.275, y = 123.847, z = -346.680 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9018, gadget_id = 70220026, pos = { x = -392.693, y = 123.952, z = -345.434 }, rot = { x = 0.000, y = 341.487, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9019, gadget_id = 70220026, pos = { x = -390.977, y = 123.944, z = -348.669 }, rot = { x = 0.000, y = 303.388, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9020, gadget_id = 70220026, pos = { x = -389.298, y = 123.758, z = -351.620 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9021, gadget_id = 70300083, pos = { x = -395.221, y = 123.832, z = -358.069 }, rot = { x = 0.000, y = 332.961, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9022, gadget_id = 70300122, pos = { x = -399.778, y = 123.825, z = -360.467 }, rot = { x = 0.000, y = 62.416, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9023, gadget_id = 70300122, pos = { x = -390.754, y = 123.804, z = -355.832 }, rot = { x = 0.000, y = 61.368, z = 0.000 }, level = 20, area_id = 400 },
	{ config_id = 9026, gadget_id = 70220026, pos = { x = -400.321, y = 119.411, z = -349.360 }, rot = { x = 0.000, y = 298.074, z = 0.000 }, level = 20, area_id = 400 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1009016, name = "ANY_MONSTER_DIE_9016", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_9016", action = "action_EVENT_ANY_MONSTER_DIE_9016" }
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
		monsters = { 9001, 9009, 9010, 9011, 9012, 9013, 9024, 9025 },
		gadgets = { 9002, 9003, 9004, 9005, 9006, 9007, 9008, 9014, 9015, 9017, 9018, 9019, 9020, 9021, 9022, 9023, 9026 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_9016" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_9016(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_9016(context, evt)
	-- 将configid为 9014 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 9014, GadgetState.Default) then
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