package xjench.lib.com.entity.lyyxj;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;
import javax.persistence.SequenceGenerator;

/**   
 * @Title: Entity
 * @Description: 大赛通知
 * @author zhangdaihao
 * @date 2014-12-20 22:11:05
 * @version V1.0   
 *
 */
@Entity
@Table(name = "dede_megagameinfo", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings("serial")
public class DedeMegagameinfoEntity implements java.io.Serializable {
	/**id*/
	private java.lang.String id;
	/**名字*/
	private java.lang.String name;
	/**视频链接*/
	private java.lang.String videosrc;
	/**封面图链接*/
	private java.lang.String img;
	
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  id
	 */
	
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,length=36)
	public java.lang.String getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  id
	 */
	public void setId(java.lang.String id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  名字
	 */
	@Column(name ="NAME",nullable=true,length=100)
	public java.lang.String getName(){
		return this.name;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  名字
	 */
	public void setName(java.lang.String name){
		this.name = name;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  视频链接
	 */
	@Column(name ="VIDEOSRC",nullable=true,length=255)
	public java.lang.String getVideosrc(){
		return this.videosrc;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  视频链接
	 */
	public void setVideosrc(java.lang.String videosrc){
		this.videosrc = videosrc;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  封面图链接
	 */
	@Column(name ="IMG",nullable=true,length=255)
	public java.lang.String getImg(){
		return this.img;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  封面图链接
	 */
	public void setImg(java.lang.String img){
		this.img = img;
	}
}
