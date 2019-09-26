package cn.exrick.xboot.modules.base.entity;

import cn.exrick.xboot.base.XbootBaseEntity;
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
@Table(name = "t_dict")
@TableName("t_dict")
@ApiModel(value = "字典")
public class Dict extends XbootBaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 字典名称
     */
    @ApiModelProperty(value = "字典名称")
    private String title;

    /**
     * 字典类型
     */
    @ApiModelProperty(value = "字典类型")
    private String type;

    /**
     * 备注
     */
    @ApiModelProperty(value = "备注")
    private String description;

    /**
     * 排序值
     */
    @ApiModelProperty(value = "排序值")
    @Column(precision = 10, scale = 2)
    private BigDecimal sortOrder;
}