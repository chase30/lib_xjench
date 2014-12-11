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
 * @Description: 图片
 * @author zhangdaihao
 * @date 2014-12-11 18:34:53
 * @version V1.0   
 *
 */
@Entity
@Table(name = "dede_uploads", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings("serial")
public class DedeUploadsEntity implements java.io.Serializable {
	/**aid*/
	private java.lang.Integer aid;
	/**arcid*/
	private java.lang.Integer arcid;
	/**title*/
	private java.lang.String title;
	/**url*/
	private java.lang.String url;
	
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  aid
	 */
	@Column(name ="AID",nullable=false,precision=10,scale=0)
	public java.lang.Integer getAid(){
		return this.aid;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  aid
	 */
	public void setAid(java.lang.Integer aid){
		this.aid = aid;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  arcid
	 */
	@Column(name ="ARCID",nullable=false,precision=10,scale=0)
	public java.lang.Integer getArcid(){
		return this.arcid;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  arcid
	 */
	public void setArcid(java.lang.Integer arcid){
		this.arcid = arcid;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  title
	 */
	@Column(name ="TITLE",nullable=false,length=60)
	public java.lang.String getTitle(){
		return this.title;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  title
	 */
	public void setTitle(java.lang.String title){
		this.title = title;
	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  url
	 */
	@Column(name ="URL",nullable=false,length=80)
	public java.lang.String getUrl(){
		return this.url;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  url
	 */
	public void setUrl(java.lang.String url){
		this.url = url;
	}
}
