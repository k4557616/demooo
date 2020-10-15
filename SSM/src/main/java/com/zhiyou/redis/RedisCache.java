package com.zhiyou.redis;

import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

import org.apache.ibatis.cache.Cache;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.serializer.JdkSerializationRedisSerializer;
import org.springframework.data.redis.serializer.RedisSerializer;

public class RedisCache implements Cache {
	// 定义一个ID
		private final String id;
		// 创建读写锁对象
		private final ReadWriteLock rwl = new ReentrantReadWriteLock();

		private static JedisConnectionFactory jedisConnectionFactory;
		// 通过构造方法给id赋值

		// 为类中注入jedisConnectionFactory
		public static void setJedisConnectionFactory(JedisConnectionFactory jedisConnectionFactory) {
			RedisCache.jedisConnectionFactory = jedisConnectionFactory;
			System.out.println("jedisConnectionFactory="+jedisConnectionFactory);
		}

		public RedisCache(String id) {
			this.id = id;
		}

		// 这个id实际上就是缓存的key
		public String getId() {
			// TODO Auto-generated method stub
			return id;
		}

		// 将数据写入到缓存中(redis)
		public void putObject(Object key, Object value) {
			// TODO Auto-generated method stub
			rwl.writeLock().lock(); // 写数据的时候加入锁,防止自己写的时候别人也写
			RedisConnection redis = jedisConnectionFactory.getConnection();// 获取到redis连接
			RedisSerializer<Object> ser = new JdkSerializationRedisSerializer();// 用于序列化数据(key,value)
			redis.set(ser.serialize(key), ser.serialize(value)); // 将key与value序列化
																	// 后存入redis中
			System.out.println("putObject rwl="+rwl+" redis="+redis+" ser="+ser);
			System.out.println("-------------添加put二级缓存成功key:" + key);
			System.out.println("添加put二级缓存成功value:" + value);
			redis.close();
			rwl.writeLock().unlock();// 写入完成后 放开锁
		}

		// 从缓存中取出数据
		public Object getObject(Object key) {
			// TODO Auto-generated method stub
			rwl.readLock().lock();// 读锁
			RedisConnection redis = jedisConnectionFactory.getConnection();// 获取到redis连接
			RedisSerializer<Object> ser = new JdkSerializationRedisSerializer();// 用于序列化数据(key,value)
			// 根据序列化后的key从redis中屈指,然后再将redis中取出的数据进行反序列化
			Object object = ser.deserialize(redis.get(ser.serialize(key)));
			System.out.println("getObject  rwl="+rwl+" redis="+redis+" ser="+ser);
			System.out.println("---添加get二级缓存成功key:" + key);
			System.out.println("添加get二级缓存成功object:" + object);
			redis.close();
			rwl.readLock().unlock();// 写入完成后 放开锁
			return object; // 将redis中取出的数据返回
		}

		// 从缓存中删除数据
		public Object removeObject(Object key) {
			// TODO Auto-generated method stub
			rwl.writeLock().lock(); // 写数据的时候加入锁,防止自己写的时候别人也写
			RedisConnection redis = jedisConnectionFactory.getConnection();// 获取到redis连接
			RedisSerializer<Object> ser = new JdkSerializationRedisSerializer();// 用于序列化数据(key,value)
			// 根据序列化后的key将redis中对应的key声明周期设置为0
			Boolean expire = redis.expire(ser.serialize(key), 0);
			System.out.println("removeObject  rwl="+rwl+" redis="+redis+" ser="+ser);
			System.out.println("---添加remove二级缓存成功key:" + key);
			System.out.println("添加remove二级缓存成功expire:" + expire);
			redis.close();
			rwl.readLock().unlock();// 写入完成后 放开锁
			return expire;
		}

		// 清空缓存
		public void clear() {
			// TODO Auto-generated method stub
			rwl.readLock().lock();
			RedisConnection redis = jedisConnectionFactory.getConnection();
			System.out.println("clear清空缓存刷新  rwl="+rwl+" redis="+redis);
			
			redis.flushDb();
			redis.flushAll();
			
			redis.close();
			rwl.readLock().unlock();
		}

		// 获得缓存中数据量
		public int getSize() {
			// TODO Auto-generated method stub
			RedisConnection redis = jedisConnectionFactory.getConnection();
			Integer size = Integer.valueOf(redis.dbSize().toString());
			System.out.println("getSize获得缓存中数据量  size="+size+" redis="+redis);
			
			redis.close();
			return size;
		}

		//
		public ReadWriteLock getReadWriteLock() {
			// TODO Auto-generated method stub
			return rwl;
		}
}
