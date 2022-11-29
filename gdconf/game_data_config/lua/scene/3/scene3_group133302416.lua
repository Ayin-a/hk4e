-- 基础信息
local base_info = {
	group_id = 133302416
}

-- Trigger变量
local defs = {
	door = 416005,
	galleryId = 19109,
	maxPickupTime = 90,
	minusTime = -30,
	challengeRegion = 416029,
	weatherId = 4060,
	fatherChallenge = 267,
	childChallenge = {268,269},
	transParam_Pos = {x = -294, y = 199, z = 2552},
	transParam_Rot = {x =1, y = 357, z = 2},
	transParam_Radius = 1,
	point_camera = 416020,
	gadget_lookEntity = 416005,
	look_duration = 3,
	visionType = 1
}

-- DEFS_MISCS
local CameraLookSetting = {
    blend_type = 0,
    blend_duration = 1.5,
    is_force_walk = false,
    is_allow_input = true,
    delay = 0,
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
	[416001] = { config_id = 416001, gadget_id = 70220104, pos = { x = -291.144, y = 198.579, z = 2505.280 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416002] = { config_id = 416002, gadget_id = 70220104, pos = { x = -296.803, y = 162.000, z = 2476.747 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416003] = { config_id = 416003, gadget_id = 70220104, pos = { x = -294.059, y = 184.000, z = 2463.568 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416004] = { config_id = 416004, gadget_id = 70220103, pos = { x = -297.549, y = 202.671, z = 2520.969 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	[416005] = { config_id = 416005, gadget_id = 70310205, pos = { x = -293.509, y = 199.918, z = 2551.363 }, rot = { x = 359.863, y = 176.568, z = 357.731 }, level = 27, area_id = 24 },
	[416006] = { config_id = 416006, gadget_id = 70220104, pos = { x = -297.549, y = 203.270, z = 2520.969 }, rot = { x = 0.000, y = 359.944, z = 0.000 }, level = 27, area_id = 24 },
	[416007] = { config_id = 416007, gadget_id = 70220104, pos = { x = -315.351, y = 150.000, z = 2469.591 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416008] = { config_id = 416008, gadget_id = 70220104, pos = { x = -302.359, y = 155.300, z = 2459.258 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416009] = { config_id = 416009, gadget_id = 70690010, pos = { x = -305.717, y = 131.175, z = 2468.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	[416010] = { config_id = 416010, gadget_id = 70220104, pos = { x = -309.034, y = 165.000, z = 2481.021 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416011] = { config_id = 416011, gadget_id = 70220104, pos = { x = -290.511, y = 191.000, z = 2482.903 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416012] = { config_id = 416012, gadget_id = 70220104, pos = { x = -316.864, y = 174.500, z = 2458.179 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416013] = { config_id = 416013, gadget_id = 70220104, pos = { x = -316.734, y = 168.000, z = 2474.903 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416014] = { config_id = 416014, gadget_id = 70220104, pos = { x = -304.930, y = 179.592, z = 2453.775 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416015] = { config_id = 416015, gadget_id = 70220104, pos = { x = -295.375, y = 158.000, z = 2467.782 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416016] = { config_id = 416016, gadget_id = 70220104, pos = { x = -311.222, y = 152.000, z = 2460.724 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416017] = { config_id = 416017, gadget_id = 70220104, pos = { x = -321.168, y = 171.500, z = 2468.370 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416018] = { config_id = 416018, gadget_id = 70220104, pos = { x = -310.422, y = 147.219, z = 2476.661 }, rot = { x = 358.214, y = 359.944, z = 3.577 }, level = 27, area_id = 24 },
	[416019] = { config_id = 416019, gadget_id = 70220103, pos = { x = -293.316, y = 209.355, z = 2551.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	[416022] = { config_id = 416022, gadget_id = 70310148, pos = { x = -293.807, y = 200.135, z = 2553.179 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	[416023] = { config_id = 416023, gadget_id = 70220105, pos = { x = -306.684, y = 133.269, z = 2466.039 }, rot = { x = 0.000, y = 169.069, z = 0.000 }, level = 27, area_id = 24 },
	[416024] = { config_id = 416024, gadget_id = 70211121, pos = { x = -293.666, y = 200.167, z = 2551.614 }, rot = { x = 359.650, y = 357.400, z = 353.427 }, level = 26, drop_tag = "解谜高级须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 10 }, area_id = 24 },
	-- 挂icon用的
	[416025] = { config_id = 416025, gadget_id = 70950145, pos = { x = -294.491, y = 201.258, z = 2551.535 }, rot = { x = 0.000, y = 147.490, z = 0.000 }, level = 33, vision_level = VisionLevelType.VISION_LEVEL_REMOTE, area_id = 24 },
	[416026] = { config_id = 416026, gadget_id = 70690029, pos = { x = -305.717, y = 184.831, z = 2468.385 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 },
	-- 挂按钮用的
	[416027] = { config_id = 416027, gadget_id = 70950145, pos = { x = -293.590, y = 200.790, z = 2549.680 }, rot = { x = 0.000, y = 172.475, z = 0.000 }, level = 33, worktop_config = { init_options = { 758 } }, area_id = 24 }
}

-- 区域
regions = {
	[416029] = { config_id = 416029, shape = RegionShape.SPHERE, radius = 100, pos = { x = -289.934, y = 200.000, z = 2475.668 }, area_id = 24 }
}

-- 触发器
triggers = {
	{ config_id = 1416028, name = "GADGET_STATE_CHANGE_416028", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_416028", action = "action_EVENT_GADGET_STATE_CHANGE_416028" }
}

-- 点位
points = {
	[416020] = { config_id = 416020, pos = { x = -289.568, y = 206.626, z = 2561.545 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 24 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 416021, gadget_id = 70360001, pos = { x = -293.542, y = 201.476, z = 2551.816 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 27, area_id = 24 }
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
		monsters = { },
		gadgets = { 416005 },
		regions = { 416029 },
		triggers = { "GADGET_STATE_CHANGE_416028" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 416001, 416002, 416003, 416004, 416006, 416007, 416008, 416009, 416010, 416011, 416012, 416013, 416014, 416015, 416016, 416017, 416018, 416019, 416023, 416026 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 416024 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 5,
		-- description = ,
		monsters = { },
		gadgets = { 416022, 416025, 416027 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_416028(context, evt)
	if 416005 ~= evt.param2 or GadgetState.Action02 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_416028(context, evt)
	LF_PointLook(context)
	return 0
end

require "V3_0/Dreamland"
require "V3_0/CameraLook"