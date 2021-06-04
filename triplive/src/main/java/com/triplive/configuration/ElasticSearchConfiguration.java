package com.triplive.configuration;

import org.elasticsearch.client.RestHighLevelClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.elasticsearch.client.ClientConfiguration;
import org.springframework.data.elasticsearch.client.RestClients;
import org.springframework.data.elasticsearch.core.ElasticsearchOperations;
import org.springframework.data.elasticsearch.core.ElasticsearchRestTemplate;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;

@Configuration 
@EnableElasticsearchRepositories(basePackages = "com.baeldung.spring.data.es.repository") 
@ComponentScan(basePackages = { "com.baeldung.spring.data.es.service" })

// 2.3 버전 이상부터 사용 가능
// 출처: https://juntcom.tistory.com/137 [쥬니의 개발블로그]
public class ElasticSearchConfiguration {
    @Bean 
    public RestHighLevelClient client() { // spring-data-elasticsearch 4.0.0 이상부터는, TransportClient 클래스가 Deprecated 되어 RestHighLevelClient 또는 ReactiveRestLevelClients 만 사용 가능하다.
        ClientConfiguration clientConfiguration = ClientConfiguration.builder() 
                                                                        .connectedTo("localhost:9200") 
                                                                        .build(); 
        
        return RestClients.create(clientConfiguration).rest(); 
    } 
    
    @Bean 
    public ElasticsearchOperations elasticsearchTemplate() {
         return new ElasticsearchRestTemplate(client()); 
    }


}
