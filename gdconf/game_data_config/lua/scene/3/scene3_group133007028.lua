-- 基础信息
local base_info = {
	group_id = 133007028
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
	{ config_id = 128, gadget_id = 70211103, pos = { x = 2642.033, y = 230.366, z = 23.584 }, rot = { x = 0.000, y = 296.933, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", state = GadgetState.ChestBramble, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 129, gadget_id = 70211101, pos = { x = 2737.756, y = 248.039, z = 182.380 }, rot = { x = 0.000, y = 156.686, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 130, gadget_id = 70211101, pos = { x = 2624.502, y = 232.086, z = 194.961 }, rot = { x = 0.000, y = 329.867, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 131, gadget_id = 70211101, pos = { x = 2628.433, y = 251.863, z = 93.406 }, rot = { x = 0.000, y = 294.279, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 132, gadget_id = 70211101, pos = { x = 2683.736, y = 258.350, z = 100.159 }, rot = { x = 0.000, y = 146.030, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 133, gadget_id = 70211101, pos = { x = 2690.818, y = 239.099, z = 96.844 }, rot = { x = 0.000, y = 136.207, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 134, gadget_id = 70211101, pos = { x = 2702.836, y = 233.851, z = 173.350 }, rot = { x = 0.000, y = 324.721, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 135, gadget_id = 70211112, pos = { x = 2648.761, y = 264.608, z = 147.712 }, rot = { x = 0.000, y = 12.151, z = 0.000 }, level = 21, drop_tag = "解谜中级蒙德", state = GadgetState.ChestLocked, isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 136, gadget_id = 70211111, pos = { x = 2667.161, y = 300.649, z = 132.182 }, rot = { x = 0.000, y = 179.309, z = 0.000 }, level = 21, drop_tag = "解谜中级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 203, gadget_id = 70220020, pos = { x = 2640.666, y = 229.651, z = 26.985 }, rot = { x = 0.000, y = 345.312, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 204, gadget_id = 70220020, pos = { x = 2639.995, y = 230.426, z = 21.773 }, rot = { x = 0.000, y = 351.293, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 205, gadget_id = 70220020, pos = { x = 2638.484, y = 229.859, z = 24.525 }, rot = { x = 0.000, y = 258.783, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 206, gadget_id = 70220020, pos = { x = 2643.896, y = 230.462, z = 24.259 }, rot = { x = 0.000, y = 259.037, z = 0.000 }, level = 23, area_id = 4 },
	{ config_id = 590, gadget_id = 70211101, pos = { x = 2677.584, y = 222.116, z = 40.207 }, rot = { x = 0.000, y = 89.651, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 953, gadget_id = 70211101, pos = { x = 2606.418, y = 221.372, z = 52.393 }, rot = { x = 14.780, y = 303.247, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 954, gadget_id = 70211101, pos = { x = 2724.270, y = 248.103, z = 184.982 }, rot = { x = 0.000, y = 64.721, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 956, gadget_id = 70211101, pos = { x = 2793.914, y = 248.252, z = -181.022 }, rot = { x = 0.000, y = 327.229, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 },
	{ config_id = 957, gadget_id = 70211101, pos = { x = 3052.137, y = 239.713, z = 178.854 }, rot = { x = 0.000, y = 290.362, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
}

-- 区域
regions = {
	{ config_id = 256, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2649.438, y = 263.902, z = 148.474 }, area_id = 4 }
}

-- 触发器
triggers = {
	{ config_id = 1000256, name = "ENTER_REGION_256", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_256", action = "action_EVENT_ENTER_REGION_256", tlog_tag = "风龙_28_风龙塔封印宝箱_成功" }
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
	rand_suite = true
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
		gadgets = { 128, 129, 130, 131, 132, 133, 134, 135, 136, 203, 204, 205, 206, 590, 953, 954, 956, 957 },
		regions = { 256 },
		triggers = { "ENTER_REGION_256" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ENTER_REGION_256(context, evt)
	if evt.param1 ~= 256 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_256(context, evt)
	-- 将configid为 135 的物件更改为状态 GadgetState.Default
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 135, GadgetState.Default) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end