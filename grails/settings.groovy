// ~/.grails/setting.groovy
grails {
  profiles {
    repositories {
      grails {
	// nexus proxy to https://repo.grails.org/grails/core/
	url = "http://host:port/nexus/content/repositories/grails/"
      }
    }
  }
}
