package cn.exrick.xboot.modules.base.entity;

import cn.exrick.xboot.base.XbootBaseEntity;
import cn.exrick.xboot.common.constant.CommonConstant;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.util.List;

/**
 * @author Exrickx
 */
@Data
@Entity
@Table(name = "t_role")
@TableName("t_role")
@ApiModel(value = "角色")
public class Role extends XbootBaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 角色名 以ROLE_开头
     */
    @ApiModelProperty(value = "角色名 以ROLE_开头")
    private String name;

    /**
     * 是否为注册默认角色
     */
    @ApiModelProperty(value = "是否为注册默认角色")
    private Boolean defaultRole;

    /**
     * 数据权限类型 0全部默认 1自定义
     */
    @ApiModelProperty(value = "数据权限类型 0全部默认 1自定义")
    private Integer dataType = CommonConstant.DATA_TYPE_ALL;

    /**
     * 备注
     */
    @ApiModelProperty(value = "备注")
    private String description;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "拥有权限")
    private List<RolePermission> permissions;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "拥有数据权限")
    private List<RoleDepartment> departments;
}
