package com.zhiyou.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.stereotype.Component;


//静态注入中间类
@Component
public class RedisUtil {

	/**
	 * 由于rediscache类不能被spring直接管理，所以无法直接获得JedisConnectionFactory对象，所有需要通过这个类，让这个类
	 * 被Ioc管理,然后容器中
	 * @param jedisConnectionFactory
	 */
	
	@Autowired
	//为类中注入jedisConnectionFactory
public void setJedisConnectionFactory(JedisConnectionFactory jedisConnectionFactory) {
	RedisCache.setJedisConnectionFactory(jedisConnectionFactory);
}
}
