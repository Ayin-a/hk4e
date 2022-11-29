-- 基础信息
local base_info = {
	group_id = 133302327
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 327001, gadget_id = 70330216, pos = { x = -391.627, y = 150.759, z = 2417.702 }, rot = { x = 345.830, y = 359.348, z = 348.177 }, level = 27, area_id = 24 },
	{ config_id = 327005, gadget_id = 70211151, pos = { x = -387.767, y = 150.030, z = 2418.733 }, rot = { x = 13.351, y = 176.328, z = 15.357 }, level = 26, chest_drop_id = 21910072, drop_count = 1, state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	{ config_id = 327007, gadget_id = 70330216, pos = { x = -388.741, y = 150.054, z = 2411.887 }, rot = { x = 19.780, y = 4.425, z = 349.780 }, level = 27, area_id = 24 },
	{ config_id = 327008, gadget_id = 70330216, pos = { x = -384.132, y = 148.583, z = 2418.483 }, rot = { x = 346.463, y = 358.823, z = 343.348 }, level = 27, area_id = 24 }
}

-- 区域
regions = {
	{ config_id = 327006, shape = RegionShape.SPHERE, radius = 2, pos = { x = -387.469, y = 151.142, z = 2418.480 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1327006, name = "ENTER_REGION_327006", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_327006" }
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
		monsters = { },
		gadgets = { 327001, 327005, 327007, 327008 },
		regions = { 327006 },
		triggers = { "ENTER_REGION_327006" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_ENTER_REGION_327006(context, evt)
	-- 将configid为 327005 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 327005, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end