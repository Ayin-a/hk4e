-- 基础信息
local base_info = {
	group_id = 177005154
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 154001, monster_id = 21030201, pos = { x = 313.273, y = 156.799, z = 915.219 }, rot = { x = 0.000, y = 289.136, z = 0.000 }, level = 36, drop_tag = "丘丘萨满", area_id = 210 },
	{ config_id = 154004, monster_id = 21020801, pos = { x = 303.173, y = 156.674, z = 929.209 }, rot = { x = 0.000, y = 155.012, z = 0.000 }, level = 36, drop_tag = "丘丘岩盔王", disableWander = true, pose_id = 401, area_id = 210 },
	{ config_id = 154005, monster_id = 21010201, pos = { x = 302.507, y = 156.440, z = 918.428 }, rot = { x = 0.000, y = 40.072, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 210 },
	{ config_id = 154006, monster_id = 21010201, pos = { x = 309.980, y = 156.587, z = 917.563 }, rot = { x = 0.000, y = 327.458, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 210 },
	{ config_id = 154007, monster_id = 21010301, pos = { x = 305.571, y = 156.361, z = 915.181 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, drop_tag = "丘丘人", pose_id = 9012, area_id = 210 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 154002, gadget_id = 70211158, pos = { x = 308.971, y = 156.343, z = 923.831 }, rot = { x = 354.118, y = 36.966, z = 0.032 }, level = 16, drop_tag = "渊下宫活动高级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, area_id = 210 },
	{ config_id = 154008, gadget_id = 70220013, pos = { x = 310.823, y = 156.566, z = 912.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 154009, gadget_id = 70220013, pos = { x = 309.134, y = 156.362, z = 912.110 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 154011, gadget_id = 70300086, pos = { x = 302.608, y = 155.721, z = 912.407 }, rot = { x = 0.000, y = 0.000, z = 9.808 }, level = 36, area_id = 210 },
	{ config_id = 154012, gadget_id = 70300086, pos = { x = 306.221, y = 155.578, z = 910.559 }, rot = { x = 353.294, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 154013, gadget_id = 70300081, pos = { x = 293.487, y = 155.818, z = 921.955 }, rot = { x = 1.752, y = 172.902, z = 359.790 }, level = 36, area_id = 210 },
	{ config_id = 154014, gadget_id = 70300090, pos = { x = 299.678, y = 155.759, z = 914.352 }, rot = { x = 0.000, y = 40.620, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 154015, gadget_id = 70310001, pos = { x = 312.119, y = 157.726, z = 931.942 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, state = GadgetState.GearStart, area_id = 210 },
	{ config_id = 154016, gadget_id = 70300089, pos = { x = 306.447, y = 156.488, z = 920.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 154017, gadget_id = 70300091, pos = { x = 319.339, y = 156.146, z = 908.990 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 154018, gadget_id = 70300091, pos = { x = 295.750, y = 155.975, z = 930.925 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 154019, gadget_id = 70300091, pos = { x = 326.214, y = 155.983, z = 931.304 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 154020, gadget_id = 70220005, pos = { x = 297.845, y = 156.569, z = 929.203 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 154021, gadget_id = 70220005, pos = { x = 297.639, y = 156.578, z = 930.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 },
	{ config_id = 154022, gadget_id = 70220005, pos = { x = 302.677, y = 156.079, z = 914.445 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1154003, name = "ANY_MONSTER_DIE_154003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_154003", action = "action_EVENT_ANY_MONSTER_DIE_154003" }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 154010, gadget_id = 70220026, pos = { x = 309.137, y = 157.981, z = 911.996 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 36, area_id = 210 }
	}
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
		monsters = { 154001, 154004, 154005, 154006, 154007 },
		gadgets = { 154002, 154008, 154009, 154011, 154012, 154013, 154014, 154015, 154016, 154017, 154018, 154019, 154020, 154021, 154022 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_154003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_154003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_154003(context, evt)
	-- 将configid为 154002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 154002, GadgetState.Default) then
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