-- 基础信息
local base_info = {
	group_id = 133222153
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
	{ config_id = 153001, gadget_id = 70500000, pos = { x = -4893.161, y = 200.303, z = -4622.909 }, rot = { x = 33.817, y = 358.641, z = 355.533 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 153002, gadget_id = 70500000, pos = { x = -4884.451, y = 202.279, z = -4628.164 }, rot = { x = 8.745, y = 50.914, z = 18.477 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 153003, gadget_id = 70500000, pos = { x = -4881.754, y = 202.684, z = -4627.988 }, rot = { x = 16.122, y = 1.876, z = 13.191 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 153004, gadget_id = 70500000, pos = { x = -4993.890, y = 203.394, z = -4611.849 }, rot = { x = 344.224, y = 46.886, z = 334.995 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 153005, gadget_id = 70500000, pos = { x = -4999.030, y = 202.392, z = -4613.956 }, rot = { x = 359.166, y = 359.843, z = 21.338 }, level = 30, point_type = 1008, area_id = 14 },
	{ config_id = 153006, gadget_id = 70500000, pos = { x = -4918.106, y = 204.218, z = -4626.920 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
	{ config_id = 153010, gadget_id = 70500000, pos = { x = -4945.895, y = 204.835, z = -4679.546 }, rot = { x = 347.680, y = 135.606, z = 346.518 }, level = 30, point_type = 2040, area_id = 14 },
	{ config_id = 153011, gadget_id = 70500000, pos = { x = -4938.215, y = 203.957, z = -4690.382 }, rot = { x = 340.479, y = 11.800, z = 13.013 }, level = 30, point_type = 2040, area_id = 14 },
	{ config_id = 153013, gadget_id = 70500000, pos = { x = -4873.292, y = 198.902, z = -4786.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2033, area_id = 14 },
	{ config_id = 153014, gadget_id = 70500000, pos = { x = -4869.226, y = 198.847, z = -4787.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2033, area_id = 14 },
	{ config_id = 153015, gadget_id = 70500000, pos = { x = -4887.552, y = 199.306, z = -4799.986 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 153017, gadget_id = 70500000, pos = { x = -4877.575, y = 199.247, z = -4838.636 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2033, area_id = 14 },
	{ config_id = 153018, gadget_id = 70500000, pos = { x = -4892.877, y = 199.388, z = -4614.713 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 153019, gadget_id = 70500000, pos = { x = -4897.267, y = 199.240, z = -4614.331 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 153020, gadget_id = 70500000, pos = { x = -4878.057, y = 199.658, z = -4750.482 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 153021, gadget_id = 70500000, pos = { x = -4880.653, y = 199.270, z = -4800.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 153022, gadget_id = 70500000, pos = { x = -4886.956, y = 199.575, z = -4745.252 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2037, area_id = 14 },
	{ config_id = 153034, gadget_id = 70290001, pos = { x = -4911.963, y = 201.306, z = -4729.961 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 153035, gadget_id = 70500000, pos = { x = -4911.946, y = 201.875, z = -4729.560 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153034, area_id = 14 },
	{ config_id = 153036, gadget_id = 70500000, pos = { x = -4912.028, y = 202.161, z = -4730.357 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153034, area_id = 14 },
	{ config_id = 153037, gadget_id = 70500000, pos = { x = -4911.695, y = 202.573, z = -4730.064 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153034, area_id = 14 },
	{ config_id = 153038, gadget_id = 70290001, pos = { x = -4864.667, y = 200.775, z = -4805.762 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 153039, gadget_id = 70500000, pos = { x = -4864.650, y = 201.344, z = -4805.360 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153038, area_id = 14 },
	{ config_id = 153040, gadget_id = 70500000, pos = { x = -4864.732, y = 201.630, z = -4806.158 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153038, area_id = 14 },
	{ config_id = 153041, gadget_id = 70500000, pos = { x = -4864.399, y = 202.042, z = -4805.864 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153038, area_id = 14 },
	{ config_id = 153042, gadget_id = 70290001, pos = { x = -4942.518, y = 202.420, z = -4609.772 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
	{ config_id = 153043, gadget_id = 70500000, pos = { x = -4942.501, y = 202.989, z = -4609.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153042, area_id = 14 },
	{ config_id = 153044, gadget_id = 70500000, pos = { x = -4942.583, y = 203.275, z = -4610.168 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153042, area_id = 14 },
	{ config_id = 153045, gadget_id = 70500000, pos = { x = -4942.250, y = 203.687, z = -4609.875 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153042, area_id = 14 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 153007, gadget_id = 70500000, pos = { x = -4913.153, y = 202.873, z = -4721.338 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2004, area_id = 14 },
		{ config_id = 153008, gadget_id = 70290010, pos = { x = -4932.431, y = 217.864, z = -4641.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 153009, gadget_id = 70500000, pos = { x = -4932.431, y = 217.864, z = -4641.271 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3006, owner = 153008, area_id = 14 },
		{ config_id = 153012, gadget_id = 70500000, pos = { x = -4864.150, y = 199.318, z = -4767.272 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 2033, area_id = 14 },
		{ config_id = 153016, gadget_id = 70500000, pos = { x = -4888.177, y = 199.794, z = -4805.999 }, rot = { x = 5.279, y = 0.451, z = 9.753 }, level = 30, point_type = 2037, area_id = 14 },
		{ config_id = 153046, gadget_id = 70290001, pos = { x = -4942.348, y = 203.694, z = -4687.994 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, area_id = 14 },
		{ config_id = 153047, gadget_id = 70500000, pos = { x = -4942.331, y = 204.263, z = -4687.593 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153046, area_id = 14 },
		{ config_id = 153048, gadget_id = 70500000, pos = { x = -4942.413, y = 204.549, z = -4688.390 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153046, area_id = 14 },
		{ config_id = 153049, gadget_id = 70500000, pos = { x = -4942.080, y = 204.961, z = -4688.097 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, point_type = 3002, owner = 153046, area_id = 14 }
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
		gadgets = { 153001, 153002, 153003, 153004, 153005, 153006, 153010, 153011, 153013, 153014, 153015, 153017, 153018, 153019, 153020, 153021, 153022, 153034, 153035, 153036, 153037, 153038, 153039, 153040, 153041, 153042, 153043, 153044, 153045 },
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