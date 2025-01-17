package cn.exrick.xboot.modules.base.entity;

import cn.exrick.xboot.base.XbootBaseEntity;
import cn.exrick.xboot.common.constant.CommonConstant;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.math.BigDecimal;
import java.util.List;

/**
 * 菜单/权限
 * @author Exrick
 */
@Data
@Entity
@Table(name = "t_permission")
@TableName("t_permission")
@ApiModel(value = "菜单权限")
public class Permission extends XbootBaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 菜单/权限名称
     */
    @ApiModelProperty(value = "菜单/权限名称")
    private String name;

    /**
     * 始终显示 默认是
     */
    @ApiModelProperty(value = "始终显示 默认是")
    private Boolean showAlways = true;

    /**
     * 层级
     */
    @ApiModelProperty(value = "层级")
    private Integer level;

    /**
     * 类型 0页面 1具体操作
     */
    @ApiModelProperty(value = "类型 0页面 1具体操作")
    private Integer type;

    /**
     * 菜单标题
     */
    @ApiModelProperty(value = "菜单标题")
    private String title;

    /**
     * 页面路径/资源链接url
     */
    @ApiModelProperty(value = "页面路径/资源链接url")
    private String path;

    /**
     * 前端组件
     */
    @ApiModelProperty(value = "前端组件")
    private String component;

    /**
     * 图标
     */
    @ApiModelProperty(value = "图标")
    private String icon;

    /**
     * 按钮权限类型
     */
    @ApiModelProperty(value = "按钮权限类型")
    private String buttonType;

    /**
     * 父id
     */
    @ApiModelProperty(value = "父id")
    private String parentId;

    /**
     * 说明备注
     */
    @ApiModelProperty(value = "说明备注")
    private String description;

    /**
     * 排序值
     */
    @ApiModelProperty(value = "排序值")
    @Column(precision = 10, scale = 2)
    private BigDecimal sortOrder;

    /**
     * 是否启用 0启用 -1禁用
     */
    @ApiModelProperty(value = "是否启用 0启用 -1禁用")
    private Integer status = CommonConstant.STATUS_NORMAL;

    /**
     * 网页链接
     */
    @ApiModelProperty(value = "网页链接")
    private String url;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "子菜单/权限")
    private List<Permission> children;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "页面拥有的权限类型")
    private List<String> permTypes;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "节点展开 前端所需")
    private Boolean expand = true;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "是否勾选 前端所需")
    private Boolean checked = false;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "是否选中 前端所需")
    private Boolean selected = false;
}