package cn.exrick.xboot.modules.base.entity;

import cn.exrick.xboot.base.XbootBaseEntity;
import cn.exrick.xboot.common.constant.CommonConstant;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;

/**
 * @author Exrick
 */
@Data
@Entity
@Table(name = "t_dict_data")
@TableName("t_dict_data")
@ApiModel(value = "字典数据")
public class DictData extends XbootBaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 数据名称
     */
    @ApiModelProperty(value = "数据名称")
    private String title;

    /**
     * 数据值
     */
    @ApiModelProperty(value = "数据值")
    private String value;

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
     * 备注
     */
    @ApiModelProperty(value = "备注")
    private String description;

    /**
     * 所属字典
     */
    @ApiModelProperty(value = "所属字典")
    private String dictId;
}