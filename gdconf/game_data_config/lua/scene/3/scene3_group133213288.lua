-- 基础信息
local base_info = {
	group_id = 133213288
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 288001, monster_id = 21020701, pos = { x = -3989.868, y = 200.904, z = -3039.819 }, rot = { x = 351.299, y = 266.594, z = 0.221 }, level = 28, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 12 },
	{ config_id = 288004, monster_id = 21020301, pos = { x = -3985.545, y = 201.474, z = -3021.088 }, rot = { x = 10.816, y = 264.205, z = 352.760 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, area_id = 12 },
	{ config_id = 288006, monster_id = 21020201, pos = { x = -3996.140, y = 200.080, z = -3008.633 }, rot = { x = 1.939, y = 282.236, z = 359.505 }, level = 27, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 401, area_id = 12 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 288002, gadget_id = 70211002, pos = { x = -3984.812, y = 200.436, z = -3034.200 }, rot = { x = 356.388, y = 0.464, z = 4.430 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 12 },
	{ config_id = 288005, gadget_id = 70900393, pos = { x = -3994.738, y = 200.205, z = -3018.140 }, rot = { x = 347.644, y = 0.159, z = 6.065 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 288007, gadget_id = 70900393, pos = { x = -3989.694, y = 200.987, z = -3034.855 }, rot = { x = 356.641, y = 1.026, z = 355.151 }, level = 27, state = GadgetState.GearStart, area_id = 12 },
	{ config_id = 288008, gadget_id = 70220013, pos = { x = -3988.037, y = 200.502, z = -3044.481 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 288009, gadget_id = 70220013, pos = { x = -3983.953, y = 201.469, z = -3014.654 }, rot = { x = 358.533, y = 325.953, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 288010, gadget_id = 70220013, pos = { x = -3978.018, y = 201.703, z = -3032.707 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 288011, gadget_id = 70220013, pos = { x = -3982.736, y = 201.788, z = -3011.387 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 288012, gadget_id = 70220014, pos = { x = -3990.868, y = 200.941, z = -3044.025 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 288013, gadget_id = 70220014, pos = { x = -3983.674, y = 201.615, z = -3009.364 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 288014, gadget_id = 70220014, pos = { x = -3996.616, y = 200.093, z = -3005.633 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 288015, gadget_id = 70220005, pos = { x = -3994.082, y = 200.824, z = -3042.617 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 288016, gadget_id = 70220005, pos = { x = -3987.270, y = 201.034, z = -3012.460 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 288017, gadget_id = 70220026, pos = { x = -3998.317, y = 200.029, z = -3007.009 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 288018, gadget_id = 70220026, pos = { x = -3986.219, y = 201.141, z = -3014.964 }, rot = { x = 0.000, y = 18.456, z = 0.000 }, level = 27, area_id = 12 },
	{ config_id = 288019, gadget_id = 70220026, pos = { x = -3977.343, y = 201.284, z = -3034.500 }, rot = { x = 0.000, y = 29.868, z = 0.000 }, level = 27, area_id = 12 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1288003, name = "ANY_MONSTER_DIE_288003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_288003", action = "action_EVENT_ANY_MONSTER_DIE_288003" }
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
		monsters = { 288001, 288004, 288006 },
		gadgets = { 288002, 288005, 288007, 288008, 288009, 288010, 288011, 288012, 288013, 288014, 288015, 288016, 288017, 288018, 288019 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_288003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_288003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_288003(context, evt)
	-- 将configid为 288002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 288002, GadgetState.Default) then
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