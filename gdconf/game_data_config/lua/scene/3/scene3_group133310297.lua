-- 基础信息
local base_info = {
	group_id = 133310297
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 297001, monster_id = 24040201, pos = { x = -2491.621, y = 131.480, z = 4964.888 }, rot = { x = 0.000, y = 87.191, z = 0.000 }, level = 32, drop_tag = "元能构装体", disableWander = true, pose_id = 1003, area_id = 27 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 297002, gadget_id = 70211002, pos = { x = -2491.833, y = 132.511, z = 4974.240 }, rot = { x = 6.389, y = 183.395, z = 357.706 }, level = 26, drop_tag = "战斗低级须弥", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 27 },
	{ config_id = 297004, gadget_id = 70710246, pos = { x = -2488.144, y = 133.650, z = 4978.228 }, rot = { x = 60.245, y = 75.091, z = 72.950 }, level = 32, area_id = 27 },
	{ config_id = 297005, gadget_id = 70710246, pos = { x = -2486.150, y = 133.511, z = 4975.325 }, rot = { x = 50.446, y = 318.970, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 297006, gadget_id = 70330432, pos = { x = -2485.060, y = 132.669, z = 4976.891 }, rot = { x = 358.512, y = 266.379, z = 16.915 }, level = 32, area_id = 27 },
	{ config_id = 297007, gadget_id = 70710078, pos = { x = -2488.772, y = 132.598, z = 4974.876 }, rot = { x = 352.382, y = 41.233, z = 359.243 }, level = 32, area_id = 27 },
	{ config_id = 297008, gadget_id = 70710078, pos = { x = -2497.263, y = 132.621, z = 4977.717 }, rot = { x = 0.000, y = 332.484, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 297009, gadget_id = 70710078, pos = { x = -2493.024, y = 131.890, z = 4970.221 }, rot = { x = 1.625, y = 105.036, z = 353.972 }, level = 32, area_id = 27 },
	{ config_id = 297010, gadget_id = 70710246, pos = { x = -2497.729, y = 133.053, z = 4975.904 }, rot = { x = 46.038, y = 0.000, z = 0.000 }, level = 32, area_id = 27 },
	{ config_id = 297011, gadget_id = 70710247, pos = { x = -2490.187, y = 132.695, z = 4975.450 }, rot = { x = 0.000, y = 0.000, z = 331.729 }, level = 32, area_id = 27 },
	{ config_id = 297012, gadget_id = 70710246, pos = { x = -2494.255, y = 132.215, z = 4971.282 }, rot = { x = 6.535, y = 0.647, z = 5.664 }, level = 32, area_id = 27 },
	{ config_id = 297013, gadget_id = 70710247, pos = { x = -2492.150, y = 132.131, z = 4971.124 }, rot = { x = 0.000, y = 0.000, z = 29.721 }, level = 32, area_id = 27 },
	{ config_id = 297014, gadget_id = 70710078, pos = { x = -2495.579, y = 130.926, z = 4961.143 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 32, area_id = 27 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1297003, name = "ANY_MONSTER_DIE_297003", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_297003", action = "action_EVENT_ANY_MONSTER_DIE_297003" }
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
		monsters = { 297001 },
		gadgets = { 297002, 297004, 297005, 297006, 297007, 297008, 297009, 297010, 297011, 297012, 297013, 297014 },
		regions = { },
		triggers = { "ANY_MONSTER_DIE_297003" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_297003(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_297003(context, evt)
	-- 将configid为 297002 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 297002, GadgetState.Default) then
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