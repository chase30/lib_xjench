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
 * @Description: 视频集合
 * @author zhangdaihao
 * @date 2014-12-11 18:39:11
 * @version V1.0   
 *
 */
@Entity
@Table(name = "dede_addonarticle", schema = "")
@DynamicUpdate(true)
@DynamicInsert(true)
@SuppressWarnings("serial")
public class DedeAddonarticleEntity implements java.io.Serializable {
	/**视频id*/
	private java.lang.Integer id;
	/**typeid*/
	private java.lang.Integer typeid;
	/**body*/
	private java.lang.String body;
	
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  视频id
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name ="ID",nullable=false,precision=10,scale=0)
	public java.lang.Integer getId(){
		return this.id;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  视频id
	 */
	public void setId(java.lang.Integer aid){
		this.id = aid;
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
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  body
	 */
	@Column(name ="BODY",nullable=true,length=255)
	public java.lang.String getBody(){
		return this.body;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  body
	 */
	public void setBody(java.lang.String body){
		this.body = body;
	}
}
