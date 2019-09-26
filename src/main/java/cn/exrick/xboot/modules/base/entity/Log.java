package cn.exrick.xboot.modules.base.entity;

import cn.exrick.xboot.base.XbootBaseEntity;
import cn.exrick.xboot.common.utils.ObjectUtil;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Map;

/**
 * @author Exrickx
 */
@Data
@Entity
@Table(name = "t_log")
@TableName("t_log")
@ApiModel(value = "日志")
public class Log extends XbootBaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 方法操作名称
     */
    @ApiModelProperty(value = "方法操作名称")
    private String name;

    /**
     * 日志类型 0登陆日志 1操作日志
     */
    @ApiModelProperty(value = "日志类型 0登陆日志 1操作日志")
    private Integer logType;

    /**
     * 请求路径
     */
    @ApiModelProperty(value = "请求路径")
    private String requestUrl;

    /**
     * 请求类型
     */
    @ApiModelProperty(value = "请求类型")
    private String requestType;

    /**
     * 请求参数
     */
    @ApiModelProperty(value = "请求参数")
    private String requestParam;

    /**
     * 请求用户
     */
    @ApiModelProperty(value = "请求用户")
    private String username;

    /**
     * ip
     */
    @ApiModelProperty(value = "ip")
    private String ip;

    /**
     * ip信息
     */
    @ApiModelProperty(value = "ip信息")
    private String ipInfo;

    /**
     * 花费时间
     */
    @ApiModelProperty(value = "花费时间")
    private Integer costTime;

    /**
     * 转换请求参数为Json
     * @param paramMap paramMap
     */
    public void setMapToParams(Map<String, String[]> paramMap) {

        this.requestParam = ObjectUtil.mapToString(paramMap);
    }

}
