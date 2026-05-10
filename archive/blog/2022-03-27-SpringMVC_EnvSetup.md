---
title: Spring MVC - Environment setup on Intellij
date: 2022-03-27
tags: 
  - Udemy 
  - StudyNotes
  - Java 
  - Spring MVC
aside:
  toc: true
---

# Preface

This is notes base on [Udemy Q&A - Liberty’s comment](https://www.udemy.com/course/spring-hibernate-tutorial/learn/lecture/8881574#questions/13487226) and [Spring MVC Setup on IntelliJ](https://youtu.be/PdrVftSukK8).

[My source code](https://github.com/ginaz5/springdemo)

<!--more-->

## Error - Context initialization failed

if you are seeing this error that means you might miss some config in your `xml`

```java
// Errr log
org.springframework.web.context.ContextLoader.initWebApplicationContext Context initialization failed
...
The matching wildcard is strict, but no declaration can be found for element 'context:component-scan'
```

You have to declare `xmlns:context` namespace and setup schema in`xsi:schemaLocation`, so put below into your `xsi:schemaLocation` and restart tomcat server.

```java
http://www.springframework.org/schema/context http://www.springframework.org/schema/context/spring-context.xsd
```

## Others

### Change log message language on intellij

If you found that log message is not fully in English. You can config it in Tomcat

- Run/Debug configuration
- add `-Duser.language=en` into VM options

### Reference

[Hot to change error messages to English (Intellij)?](https://intellij-support.jetbrains.com/hc/en-us/community/posts/360007648019-Hot-to-change-error-messages-to-English-Intellij-)

[spring中注解注入 context:component-scan 的使用说明](https://blog.csdn.net/qwe5810658/article/details/74343228)