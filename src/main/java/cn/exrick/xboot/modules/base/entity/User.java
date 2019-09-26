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
import java.util.List;

/**
 * @author Exrickx
 */
@Data
@Entity
@Table(name = "t_user")
@TableName("t_user")
@ApiModel(value = "用户")
public class User extends XbootBaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 用户名
     */
    @ApiModelProperty(value = "用户名")
    @Column(unique = true, nullable = false)
    private String username;

    /**
     * 密码
     */
    @ApiModelProperty(value = "密码")
    private String password;

    /**
     * 昵称
     */
    @ApiModelProperty(value = "昵称")
    private String nickName;
    /**
     * 手机
     */
    @ApiModelProperty(value = "手机")
    private String mobile;

    /**
     * 邮件
     */
    @ApiModelProperty(value = "邮件")
    private String email;

    /**
     * 省市县地址
     */
    @ApiModelProperty(value = "省市县地址")
    private String address;

    /**
     * 街道地址
     */
    @ApiModelProperty(value = "街道地址")
    private String street;

    /**
     * 性别
     */
    @ApiModelProperty(value = "性别")
    private String sex;

    /**
     * 密码强度
     */
    @ApiModelProperty(value = "密码强度")
    @Column(length = 2)
    private String passStrength;

    /**
     * 用户头像
     */
    @ApiModelProperty(value = "用户头像")
    @Column(length = 1000)
    private String avatar = CommonConstant.USER_DEFAULT_AVATAR;

    /**
     * 用户类型 0普通用户 1管理员
     */
    @ApiModelProperty(value = "用户类型 0普通用户 1管理员")
    private Integer type = CommonConstant.USER_TYPE_NORMAL;

    /**
     * 状态 默认0正常 -1拉黑
     */
    @ApiModelProperty(value = "状态 默认0正常 -1拉黑")
    private Integer status = CommonConstant.USER_STATUS_NORMAL;

    /**
     * 描述/详情/备注
     */
    @ApiModelProperty(value = "描述/详情/备注")
    private String description;

    /**
     * 所属部门id
     */
    @ApiModelProperty(value = "所属部门id")
    private String departmentId;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "所属部门名称")
    private String departmentTitle;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "用户拥有角色")
    private List<Role> roles;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "用户拥有的权限")
    private List<Permission> permissions;
}
