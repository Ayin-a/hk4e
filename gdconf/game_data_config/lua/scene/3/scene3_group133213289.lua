-- 基础信息
local base_info = {
	group_id = 133213289
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 289001, monster_id = 25080301, pos = { x = -4023.542, y = 200.102, z = -3193.011 }, rot = { x = 6.364, y = 205.485, z = 359.084 }, level = 28, drop_tag = "浪人武士", disableWander = true, pose_id = 1001, area_id = 12 },
	{ config_id = 289004, monster_id = 25080301, pos = { x = -4029.994, y = 200.173, z = -3185.708 }, rot = { x = 2.601, y = 279.913, z = 5.881 }, level = 27, drop_tag = "浪人武士", pose_id = 1006, area_id = 12 },
	{ config_id = 289005, monster_id = 25010501, pos = { x = -4032.389, y = 200.091, z = -3182.202 }, rot = { x = 5.158, y = 176.930, z = 356.158 }, level = 27, drop_tag = "盗宝团", pose_id = 9006, area_id = 12 },
	{ config_id = 289006, monster_id = 25010601, pos = { x = -4021.300, y = 200.100, z = -3194.914 }, rot = { x = 3.887, y = 286.360, z = 5.775 }, level = 27, drop_tag = "盗宝团", pose_id = 9004, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 289002, gadget_id = 70211002, pos = { x = -4033.307, y = 200.072, z = -3184.429 }, rot = { x = 354.654, y = 359.833, z = 3.577 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 289007, gadget_id = 70220051, pos = { x = -4023.538, y = 201.344, z = -3172.266 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 289008, gadget_id = 70220051, pos = { x = -4012.008, y = 201.183, z = -3195.501 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 289009, gadget_id = 70220051, pos = { x = -4029.928, y = 200.047, z = -3188.034 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 289010, gadget_id = 70220048, pos = { x = -4025.627, y = 200.930, z = -3172.072 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 289011, gadget_id = 70220048, pos = { x = -4034.440, y = 200.094, z = -3177.685 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 289012, gadget_id = 70220048, pos = { x = -4013.345, y = 201.227, z = -3193.770 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 289013, gadget_id = 70220048, pos = { x = -4017.558, y = 200.054, z = -3203.901 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 289014, gadget_id = 70300104, pos = { x = -4034.143, y = 200.153, z = -3174.609 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 289015, gadget_id = 70310004, pos = { x = -4021.700, y = 200.234, z = -3192.934 }, rot = { x = 354.667, y = 359.750, z = 5.356 }, level = 27, area_id = 12 },
	{ config_id = 289016, gadget_id = 70310009, pos = { x = -4027.959, y = 200.232, z = -3182.108 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1289003, name = "ANY_MONSTER_DIE_289003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_289003", action = "action_EVENT_ANY_MONSTER_DIE_289003" }
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
		monsters = { 289001, 289004, 289005, 289006 },
		gadgets = { 289002, 289007, 289008, 289009, 289010, 289011, 289012, 289013, 289014, 289015, 289016 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_289003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_289003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_289003(context, evt)
	-- 将configid为 289002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 289002, GadgetState.Default) then
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