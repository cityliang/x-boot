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
 * @author Exrickx
 */
@Data
@Entity
@Table(name = "t_quartz_job")
@TableName("t_quartz_job")
@ApiModel(value = "定时任务")
public class QuartzJob extends XbootBaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 任务类名
     */
    @ApiModelProperty(value = "任务类名")
    private String jobClassName;

    /**
     * cron表达式
     */
    @ApiModelProperty(value = "cron表达式")
    private String cronExpression;

    /**
     * 参数
     */
    @ApiModelProperty(value = "参数")
    private String parameter;

    /**
     * 备注
     */
    @ApiModelProperty(value = "备注")
    private String description;

    /**
     * 状态 0正常 -1停止
     */
    @ApiModelProperty(value = "状态 0正常 -1停止")
    private Integer status = CommonConstant.STATUS_NORMAL;
}
