package cn.exrick.xboot.modules.base.entity;

import cn.exrick.xboot.base.XbootBaseEntity;
import cn.exrick.xboot.common.constant.CommonConstant;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * @author Exrick
 */
@Data
@Entity
@Table(name = "t_department_header")
@TableName("t_department_header")
@ApiModel(value = "部门负责人")
public class DepartmentHeader extends XbootBaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 关联部门id
     */
    @ApiModelProperty(value = "关联部门id")
    private String departmentId;

    /**
     * 关联部门负责人
     */
    @ApiModelProperty(value = "关联部门负责人")
    private String userId;

    /**
     * 负责人类型 默认0主要 1副职
     */
    @ApiModelProperty(value = "负责人类型 默认0主要 1副职")
    private Integer type = CommonConstant.HEADER_TYPE_MAIN;
}