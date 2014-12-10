package xjench.lib.com.entity.lyyx;

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
 * @Description: 封面图
 * @author zhangdaihao
 * @date 2014-12-09 17:33:46
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
//	/**typeid2*/
//	private java.lang.String typeid2;
//	/**sortrank*/
//	private java.lang.Integer sortrank;
//	
//	/**ismake*/
//	private java.lang.Integer ismake;
//	/**channel*/
	private java.lang.Integer channel;
//	/**arcrank*/
//	private java.lang.Integer arcrank;
//	/**click*/
//	private java.lang.Integer click;
//	/**money*/
//	private java.lang.Integer money;
	/**title*/
	private java.lang.String title;
//	/**shorttitle*/
//	private java.lang.String shorttitle;
//	/**color*/
//	private java.lang.String color;
//	/**writer*/
//	private java.lang.String writer;
//	/**source*/
//	private java.lang.String source;
	/**litpic*/
	private java.lang.String litpic;
//	/**pubdate*/
//	private java.lang.Integer pubdate;
//	/**senddate*/
//	private java.lang.Integer senddate;
//	/**mid*/
//	private java.lang.Integer mid;
//	/**keywords*/
//	private java.lang.String keywords;
//	/**lastpost*/
//	private java.lang.Integer lastpost;
//	/**scores*/
//	private java.lang.Integer scores;
//	/**goodpost*/
//	private java.lang.Integer goodpost;
//	/**badpost*/
//	private java.lang.Integer badpost;
//	/**voteid*/
//	private java.lang.Integer voteid;
//	/**notpost*/
//	private java.lang.Integer notpost;
//	/**description*/
//	private java.lang.String description;
//	/**filename*/
//	private java.lang.String filename;
//	/**dutyadmin*/
//	private java.lang.Integer dutyadmin;
//	/**tackid*/
//	private java.lang.Integer tackid;
//	/**mtype*/
//	private java.lang.Integer mtype;
//	/**weight*/
//	private java.lang.Integer weight;
	
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  id
	 */
	
	@Id
	@GeneratedValue(generator = "paymentableGenerator")
	@GenericGenerator(name = "paymentableGenerator", strategy = "uuid")
	@Column(name ="ID",nullable=false,precision=7,scale=0)
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
//	/**
//	 *方法: 取得java.lang.String
//	 *@return: java.lang.String  typeid2
//	 */
//	@Column(name ="TYPEID2",nullable=false,length=90)
//	public java.lang.String getTypeid2(){
//		return this.typeid2;
//	}
//
//	/**
//	 *方法: 设置java.lang.String
//	 *@param: java.lang.String  typeid2
//	 */
//	public void setTypeid2(java.lang.String typeid2){
//		this.typeid2 = typeid2;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  sortrank
//	 */
//	@Column(name ="SORTRANK",nullable=false,precision=10,scale=0)
//	public java.lang.Integer getSortrank(){
//		return this.sortrank;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  sortrank
//	 */
//	public void setSortrank(java.lang.Integer sortrank){
//		this.sortrank = sortrank;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  ismake
//	 */
//	@Column(name ="ISMAKE",nullable=false,precision=5,scale=0)
//	public java.lang.Integer getIsmake(){
//		return this.ismake;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  ismake
//	 */
//	public void setIsmake(java.lang.Integer ismake){
//		this.ismake = ismake;
//	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  channel
	 */
	@Column(name ="CHANNEL",nullable=false,precision=5,scale=0)
	public java.lang.Integer getChannel(){
		return this.channel;
	}

	/**
	 *方法: 设置java.lang.Integer
	 *@param: java.lang.Integer  channel
	 */
	public void setChannel(java.lang.Integer channel){
		this.channel = channel;
	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  arcrank
//	 */
//	@Column(name ="ARCRANK",nullable=false,precision=5,scale=0)
//	public java.lang.Integer getArcrank(){
//		return this.arcrank;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  arcrank
//	 */
//	public void setArcrank(java.lang.Integer arcrank){
//		this.arcrank = arcrank;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  click
//	 */
//	@Column(name ="CLICK",nullable=false,precision=7,scale=0)
//	public java.lang.Integer getClick(){
//		return this.click;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  click
//	 */
//	public void setClick(java.lang.Integer click){
//		this.click = click;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  money
//	 */
//	@Column(name ="MONEY",nullable=false,precision=5,scale=0)
//	public java.lang.Integer getMoney(){
//		return this.money;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  money
//	 */
//	public void setMoney(java.lang.Integer money){
//		this.money = money;
//	}
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
//	/**
//	 *方法: 取得java.lang.String
//	 *@return: java.lang.String  shorttitle
//	 */
//	@Column(name ="SHORTTITLE",nullable=false,length=36)
//	public java.lang.String getShorttitle(){
//		return this.shorttitle;
//	}
//
//	/**
//	 *方法: 设置java.lang.String
//	 *@param: java.lang.String  shorttitle
//	 */
//	public void setShorttitle(java.lang.String shorttitle){
//		this.shorttitle = shorttitle;
//	}
//	/**
//	 *方法: 取得java.lang.String
//	 *@return: java.lang.String  color
//	 */
//	@Column(name ="COLOR",nullable=false,length=7)
//	public java.lang.String getColor(){
//		return this.color;
//	}
//
//	/**
//	 *方法: 设置java.lang.String
//	 *@param: java.lang.String  color
//	 */
//	public void setColor(java.lang.String color){
//		this.color = color;
//	}
//	/**
//	 *方法: 取得java.lang.String
//	 *@return: java.lang.String  writer
//	 */
//	@Column(name ="WRITER",nullable=false,length=20)
//	public java.lang.String getWriter(){
//		return this.writer;
//	}
//
//	/**
//	 *方法: 设置java.lang.String
//	 *@param: java.lang.String  writer
//	 */
//	public void setWriter(java.lang.String writer){
//		this.writer = writer;
//	}
//	/**
//	 *方法: 取得java.lang.String
//	 *@return: java.lang.String  source
//	 */
//	@Column(name ="SOURCE",nullable=false,length=30)
//	public java.lang.String getSource(){
//		return this.source;
//	}
//
//	/**
//	 *方法: 设置java.lang.String
//	 *@param: java.lang.String  source
//	 */
//	public void setSource(java.lang.String source){
//		this.source = source;
//	}
	/**
	 *方法: 取得java.lang.String
	 *@return: java.lang.String  litpic
	 */
	@Column(name ="LITPIC",nullable=false,length=100)
	public java.lang.String getLitpic(){
		return this.litpic;
	}

	/**
	 *方法: 设置java.lang.String
	 *@param: java.lang.String  litpic
	 */
	public void setLitpic(java.lang.String litpic){
		this.litpic = litpic;
	}
	/**
	 *方法: 取得java.lang.Integer
	 *@return: java.lang.Integer  pubdate
	 */
//	@Column(name ="PUBDATE",nullable=false,precision=10,scale=0)
//	public java.lang.Integer getPubdate(){
//		return this.pubdate;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  pubdate
//	 */
//	public void setPubdate(java.lang.Integer pubdate){
//		this.pubdate = pubdate;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  senddate
//	 */
//	@Column(name ="SENDDATE",nullable=false,precision=10,scale=0)
//	public java.lang.Integer getSenddate(){
//		return this.senddate;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  senddate
//	 */
//	public void setSenddate(java.lang.Integer senddate){
//		this.senddate = senddate;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  mid
//	 */
//	@Column(name ="MID",nullable=false,precision=7,scale=0)
//	public java.lang.Integer getMid(){
//		return this.mid;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  mid
//	 */
//	public void setMid(java.lang.Integer mid){
//		this.mid = mid;
//	}
//	/**
//	 *方法: 取得java.lang.String
//	 *@return: java.lang.String  keywords
//	 */
//	@Column(name ="KEYWORDS",nullable=false,length=30)
//	public java.lang.String getKeywords(){
//		return this.keywords;
//	}
//
//	/**
//	 *方法: 设置java.lang.String
//	 *@param: java.lang.String  keywords
//	 */
//	public void setKeywords(java.lang.String keywords){
//		this.keywords = keywords;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  lastpost
//	 */
//	@Column(name ="LASTPOST",nullable=false,precision=10,scale=0)
//	public java.lang.Integer getLastpost(){
//		return this.lastpost;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  lastpost
//	 */
//	public void setLastpost(java.lang.Integer lastpost){
//		this.lastpost = lastpost;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  scores
//	 */
//	@Column(name ="SCORES",nullable=false,precision=7,scale=0)
//	public java.lang.Integer getScores(){
//		return this.scores;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  scores
//	 */
//	public void setScores(java.lang.Integer scores){
//		this.scores = scores;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  goodpost
//	 */
//	@Column(name ="GOODPOST",nullable=false,precision=7,scale=0)
//	public java.lang.Integer getGoodpost(){
//		return this.goodpost;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  goodpost
//	 */
//	public void setGoodpost(java.lang.Integer goodpost){
//		this.goodpost = goodpost;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  badpost
//	 */
//	@Column(name ="BADPOST",nullable=false,precision=7,scale=0)
//	public java.lang.Integer getBadpost(){
//		return this.badpost;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  badpost
//	 */
//	public void setBadpost(java.lang.Integer badpost){
//		this.badpost = badpost;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  voteid
//	 */
//	@Column(name ="VOTEID",nullable=false,precision=7,scale=0)
//	public java.lang.Integer getVoteid(){
//		return this.voteid;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  voteid
//	 */
//	public void setVoteid(java.lang.Integer voteid){
//		this.voteid = voteid;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  notpost
//	 */
//	@Column(name ="NOTPOST",nullable=false,precision=3,scale=0)
//	public java.lang.Integer getNotpost(){
//		return this.notpost;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  notpost
//	 */
//	public void setNotpost(java.lang.Integer notpost){
//		this.notpost = notpost;
//	}
//	/**
//	 *方法: 取得java.lang.String
//	 *@return: java.lang.String  description
//	 */
//	@Column(name ="DESCRIPTION",nullable=false,length=255)
//	public java.lang.String getDescription(){
//		return this.description;
//	}
//
//	/**
//	 *方法: 设置java.lang.String
//	 *@param: java.lang.String  description
//	 */
//	public void setDescription(java.lang.String description){
//		this.description = description;
//	}
//	/**
//	 *方法: 取得java.lang.String
//	 *@return: java.lang.String  filename
//	 */
//	@Column(name ="FILENAME",nullable=false,length=40)
//	public java.lang.String getFilename(){
//		return this.filename;
//	}
//
//	/**
//	 *方法: 设置java.lang.String
//	 *@param: java.lang.String  filename
//	 */
//	public void setFilename(java.lang.String filename){
//		this.filename = filename;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  dutyadmin
//	 */
//	@Column(name ="DUTYADMIN",nullable=false,precision=7,scale=0)
//	public java.lang.Integer getDutyadmin(){
//		return this.dutyadmin;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  dutyadmin
//	 */
//	public void setDutyadmin(java.lang.Integer dutyadmin){
//		this.dutyadmin = dutyadmin;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  tackid
//	 */
//	@Column(name ="TACKID",nullable=false,precision=10,scale=0)
//	public java.lang.Integer getTackid(){
//		return this.tackid;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  tackid
//	 */
//	public void setTackid(java.lang.Integer tackid){
//		this.tackid = tackid;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  mtype
//	 */
//	@Column(name ="MTYPE",nullable=false,precision=7,scale=0)
//	public java.lang.Integer getMtype(){
//		return this.mtype;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  mtype
//	 */
//	public void setMtype(java.lang.Integer mtype){
//		this.mtype = mtype;
//	}
//	/**
//	 *方法: 取得java.lang.Integer
//	 *@return: java.lang.Integer  weight
//	 */
//	@Column(name ="WEIGHT",nullable=false,precision=10,scale=0)
//	public java.lang.Integer getWeight(){
//		return this.weight;
//	}
//
//	/**
//	 *方法: 设置java.lang.Integer
//	 *@param: java.lang.Integer  weight
//	 */
//	public void setWeight(java.lang.Integer weight){
//		this.weight = weight;
//	}
}
