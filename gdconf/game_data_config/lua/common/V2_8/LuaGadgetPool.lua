--[[======================================
||	filename:	LuaGadgetPool
||	owner: 		luyao.huang
||	description:	物件池机制
||               这是一个简单的池机制，只实现了简单的池管理。没有（也做不到）动态扩容等功能。所以如果用完了就是用完了，会出现创建不出物件的情况
||	LogName:	LuaGadgetPool
||	Protection:	
=======================================]]--

------



local pool_defs = 
{
    --物件池的基础configid，后续id都在上面做增量
    pool_base_config_id = 1000000,
}



function Pool_Initialize()
	local pool_gadget_config = {}

    if pool_object_gadget_id ~= nil then
        for k = 1, #pool_object_gadget_id do
            local pool_max = 0
            if elite_drop ~= nil then
                --for m,v in pairs(elite_drop) do
                --    pool_max = pool_max + v[k]
                --end
                if monster_drop_num ~= nil then
                    if monster_drop_num[k] ~= nil then
                        pool_max = monster_drop_num[k] * #monsters
                    end
                end
                for i = 1, pool_max do
                    pool_gadget_config = { config_id = 0, gadget_id = 0, pos = { x = 0, y = 0, z = 0 }, rot = { x = 0, y = 0, z = 0 }, level = 1 }
                    pool_gadget_config.config_id = pool_defs.pool_base_config_id + (k-1) * pool_max + i
                    pool_gadget_config.gadget_id = pool_object_gadget_id[k]
                
                    local legal_config = {}
                    if #gadgets > 0 then
                        legal_config = gadgets[1]
                    end
                    if #monsters > 0 then
                        legal_config = monsters[1]
                    end
                    pool_gadget_config.pos = legal_config.pos
                    pool_gadget_config.rot = legal_config.rot
                    pool_gadget_config.level = 1
                    if legal_config.area_id ~= nil then
                        pool_gadget_config.area_id = legal_config.area_id
                    end
                    table.insert(gadgets,pool_gadget_config)
                end
                table.insert(variables,{config_id = 150000000+k, name = "pool_top_"..k, value = 1})
                table.insert(variables,{config_id = 150000000+k+ #pool_object_gadget_id +1, name = "pool_max_"..k, value = pool_max})
            end
        end
    end

    --物件池的物件计数
    
end




------------------------------------------------------------------------------------------------------

--找一个未被占用的object创建出来，需要指定创建位置
function LF_Create_Object_From_Pool(context,k,pos,rot)
    local pool_top = LF_Get_Pool_Top(context,k)
    if pool_top == -1 then
        ScriptLib.PrintContextLog(context,"## [LuaGadgetPool] 物件池全部被占用，创建失败")
        return
    end
    ScriptLib.SetGroupVariableValue(context,"pool_top_"..k,pool_top+1)
    ScriptLib.CreateGadgetByConfigIdByPos(context,LF_Get_Config_Id_By_Index(context,k,pool_top), {x=pos.x,y=pos.y,z=pos.z}, {x=rot.x,y=rot.y,z=rot.z})

end


--尝试获取一个当前未被占用的物件
function LF_Get_Pool_Top(context,k)
    local pool_top = ScriptLib.GetGroupVariableValue(context,"pool_top_"..k)
    if pool_top < ScriptLib.GetGroupVariableValue(context,"pool_max_"..k) then
        return ScriptLib.GetGroupVariableValue(context,"pool_top_"..k)
    else
        return -1 
    end
end

--常用工具方法。根据特定config_id的怪物所在位置创建物件
function LF_Create_Object_From_Pool_By_Monster_Config_Id(context,k,config_id)
    local eid = ScriptLib.GetEntityIdByConfigId(context,config_id)
    local pos = ScriptLib.GetPosByEntityId(context, eid)
    local rot = ScriptLib.GetRotationByEntityId(context,eid)
    ScriptLib.PrintContextLog(context,"## [LuaGadgetPool] 在怪物死亡位置创建第"..k.."个池物件")
    LF_Create_Object_From_Pool(context,k,{x=pos.x,y=pos.y+0.25,z=pos.z},rot)

end


function LF_Create_Object_Random_Pos_From_Pool_By_Monster_Config_Id(context,k,config_id,r)
    local eid = ScriptLib.GetEntityIdByConfigId(context,config_id)
    local pos = ScriptLib.GetPosByEntityId(context, eid)
    local rot = ScriptLib.GetRotationByEntityId(context,eid)
    ScriptLib.PrintContextLog(context,"## [LuaGadgetPool] 在怪物死亡位置创建第"..k.."个池物件")
    local deltaX = math.cos(2 * math.pi * math.random()) * r
    local deltaZ = math.sin(2 * math.pi * math.random()) * r
    LF_Create_Object_From_Pool(context,k,{x=pos.x+deltaX,y=pos.y+0.25,z=pos.z+deltaZ},rot)

end 


--重置整个物件池，回收所有释放的物件i
function LF_Reset_Gadget_Pool(context)
    for i = 1, #pool_object_gadget_id do
        local base = LF_Get_Base_Config_Id(context,i)
        for j = base, base + ScriptLib.GetGroupVariableValue(context,"pool_max_"..i) do
            ScriptLib.RemoveEntityByConfigId(context, 0, EntityType.GADGET, base+j)
        end
        ScriptLib.SetGroupVariableValue(context,"pool_top_"..i,1)
    end
end


--输入config_id，检查是否是整个物件池内的物件
function LF_Is_In_Pool(context,config_id)
    for i = 1, #pool_object_gadget_id-1 do
        local lower = LF_Get_Base_Config_Id(context,i)
        local upper = LF_Get_Base_Config_Id(context,i+1)
        if (config_id >= lower and config_id < upper) then 
            return true
        end
    end
    return false
end


--输入config_id，检查是否是特定池内的物件
function LF_Is_In_Specific_Pool(context,k,config_id)
    local lower = LF_Get_Base_Config_Id(context,k)
    local upper = LF_Get_Base_Config_Id(context,k+1)
    return (config_id >= lower and config_id < upper)
end

function LF_Get_Pool_Index(context,config_id)
    for i = 1 , #pool_object_gadget_id do
        if LF_Is_In_Specific_Pool(context,i,config_id) then
            return i
        end
    end
    return -1
end

--根据config_id，反查它是第几个物件，以及池内的index
function LF_Get_Index_By_Config_Id(context,config_id)
    local ret = {k = 0, index = 0}
    for i = 1, #pool_object_gadget_id-1 do
        local lower = LF_Get_Base_Config_Id(context,i)
        local upper = LF_Get_Base_Config_Id(context,i+1)
        if (config_id >= lower and config_id < upper) then
            ret.k = i
            ret.index = config_id - lower
            return ret
        end
    end

end


--根据第几个物件、以及物件在池内的偏移，找到物件的config_id
function LF_Get_Config_Id_By_Index(context,k,i)
    return LF_Get_Base_Config_Id(context,k) + i
end

--找到特定id物件的偏移基础值
function LF_Get_Base_Config_Id(context,k)
    local _k = k-1
    if _k ~= 0 then
        return pool_defs.pool_base_config_id + _k * ScriptLib.GetGroupVariableValue(context,"pool_max_".._k)
    else
        return pool_defs.pool_base_config_id
    end

end

--尝试从当前的group配置中找到一个合理的配置（如果有gadget，先取第一个gadget；如果没有，则取第一个monster）
function LF_Get_Group_Legal_Entity_Config()
    if #gadgets > 0 then
        return gadgets[1]
    end
    if #monsters > 0 then
        return monsters[1]
    end
end


function LF_Get_Monster_Config_By_Id(config_id)
    for i = 1, #monsters do
        if monsters[i].config_id == config_id then
            return monsters[i]
        end
    end
end 



------------------------------------------------------------------------------------------------------
Pool_Initialize()