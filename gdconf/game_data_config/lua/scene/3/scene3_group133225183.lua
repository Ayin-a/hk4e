-- 基础信息
local base_info = {
	group_id = 133225183
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 183001, monster_id = 21010301, pos = { x = -6671.794, y = 213.400, z = -2571.380 }, rot = { x = 2.877, y = 171.354, z = 18.271 }, level = 32, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 18 },
	{ config_id = 183005, monster_id = 21010301, pos = { x = -6673.953, y = 214.071, z = -2571.326 }, rot = { x = 0.682, y = 120.002, z = 359.949 }, level = 33, drop_tag = "丘丘人", disableWander = true, pose_id = 9003, area_id = 18 },
	{ config_id = 183010, monster_id = 21011001, pos = { x = -6673.310, y = 214.084, z = -2578.937 }, rot = { x = 0.000, y = 122.519, z = 0.000 }, level = 33, drop_tag = "远程丘丘人", pose_id = 9013, area_id = 18 },
	{ config_id = 183011, monster_id = 21020701, pos = { x = -6664.688, y = 211.901, z = -2567.114 }, rot = { x = 0.878, y = 104.487, z = 356.613 }, level = 33, drop_tag = "丘丘暴徒", area_id = 18 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 183002, gadget_id = 70211002, pos = { x = -6664.650, y = 212.654, z = -2574.064 }, rot = { x = 0.000, y = 114.489, z = 0.000 }, level = 26, drop_tag = "战斗低级稻妻", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 18 },
	{ config_id = 183004, gadget_id = 70310006, pos = { x = -6672.202, y = 213.716, z = -2574.560 }, rot = { x = 0.000, y = 0.000, z = 353.396 }, level = 33, area_id = 18 },
	{ config_id = 183006, gadget_id = 70220026, pos = { x = -6671.047, y = 213.342, z = -2565.783 }, rot = { x = 0.000, y = 18.163, z = 354.599 }, level = 33, area_id = 18 },
	{ config_id = 183007, gadget_id = 70220026, pos = { x = -6670.965, y = 213.442, z = -2564.674 }, rot = { x = 356.616, y = 10.823, z = 346.908 }, level = 33, area_id = 18 },
	{ config_id = 183008, gadget_id = 70300088, pos = { x = -6667.728, y = 213.021, z = -2583.564 }, rot = { x = 0.000, y = 210.781, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 183009, gadget_id = 70300088, pos = { x = -6665.389, y = 212.615, z = -2581.091 }, rot = { x = 0.000, y = 193.576, z = 0.000 }, level = 33, area_id = 18 },
	{ config_id = 183012, gadget_id = 70220014, pos = { x = -6676.770, y = 214.922, z = -2571.509 }, rot = { x = 0.000, y = 0.025, z = 352.214 }, level = 33, area_id = 18 },
	{ config_id = 183013, gadget_id = 70220014, pos = { x = -6670.008, y = 213.242, z = -2564.973 }, rot = { x = 0.000, y = 0.000, z = 349.870 }, level = 33, area_id = 18 },
	{ config_id = 183014, gadget_id = 70220013, pos = { x = -6676.682, y = 214.939, z = -2573.351 }, rot = { x = 6.373, y = 19.116, z = 342.242 }, level = 33, area_id = 18 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1183003, name = "ANY_MONSTER_DIE_183003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_183003", action = "action_EVENT_ANY_MONSTER_DIE_183003" }
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
		monsters = { 183001, 183005, 183010, 183011 },
		gadgets = { 183002, 183004, 183006, 183007, 183008, 183009, 183012, 183013, 183014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_183003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_183003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_183003(context, evt)
	-- 将configid为 183002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 183002, GadgetState.Default) then
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