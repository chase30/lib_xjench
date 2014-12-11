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
 * @Description: 封面图片
 * @author zhangdaihao
 * @date 2014-12-11 18:27:43
 * @version V1.0   
 *
 */
@Entity
@Table(name = "dede_archives", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings("serial")
public class DedeArchivesEntity implements java.io.Serializable {
	/**id*/
	private java.lang.Integer id;
	/**typeid*/
	private java.lang.Integer typeid;
	/**时间顺序*/
	private java.lang.Integer sortrank;
	/**所属模型*/
	private java.lang.Integer channel;
	/**封面标题*/
	private java.lang.String title;
	/**封面路径*/
	private java.lang.String litpic;
	
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  id
	 */
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name ="ID",nullable=false,precision=10,scale=0)
	public java.lang.Integer getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  id
	 */
	public void setId(java.lang.Integer id){
		this.id = id;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  typeid
	 */
	@Column(name ="TYPEID",nullable=false,precision=5,scale=0)
	public java.lang.Integer getTypeid(){
		return this.typeid;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  typeid
	 */
	public void setTypeid(java.lang.Integer typeid){
		this.typeid = typeid;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  时间顺序
	 */
	@Column(name ="SORTRANK",nullable=false,precision=10,scale=0)
	public java.lang.Integer getSortrank(){
		return this.sortrank;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  时间顺序
	 */
	public void setSortrank(java.lang.Integer sortrank){
		this.sortrank = sortrank;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  所属模型
	 */
	@Column(name ="CHANNEL",nullable=false,precision=5,scale=0)
	public java.lang.Integer getChannel(){
		return this.channel;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  所属模型
	 */
	public void setChannel(java.lang.Integer channel){
		this.channel = channel;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  封面标题
	 */
	@Column(name ="TITLE",nullable=false,length=60)
	public java.lang.String getTitle(){
		return this.title;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  封面标题
	 */
	public void setTitle(java.lang.String title){
		this.title = title;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  封面路径
	 */
	@Column(name ="LITPIC",nullable=false,length=100)
	public java.lang.String getLitpic(){
		return this.litpic;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  封面路径
	 */
	public void setLitpic(java.lang.String litpic){
		this.litpic = litpic;
	}
}
