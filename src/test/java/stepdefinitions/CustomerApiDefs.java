package stepdefinitions;
/*
eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0ZWFtMTFhZG1pbiIsImF1dGgiOiJST0xFX0FETUlOIiwiZXhwIjoxN
jA3NjMxNzg3fQ.mAeCpNwMxDLVxzJbqMOu-BYZULeDG9Q0ZNYfWkytM9a5Px2EU_3zWVMrKV7-ciy4jgzlpZG0-8e-zaFrJ-1GMQ
 */
/*
<dependency>
    <groupId>com.fasterxml.jackson.core</groupId>
    <artifactId>jackson-databind</artifactId>
    <version>2.9.8</version>
</dependency>
 */
/*
<dependency>
<groupId>io.rest-assured</groupId>
<artifactId>rest-assured</artifactId>
<version>4.3.0</version>
</dependency>
*/
/*
public class CustomerApiDefs {

    Response response=given()
            .auth()
            .oauth2(ConfigurationReader.getProperty("token"))
            .contentType(ContentType.JSON)
            .when()
            .get(api_endpoint)
            .then()
            .contentType(ContentType.JSON)
            .statusCode(200)
            .extract()
            .response();
response.prettyPrint();
    Response response=given().headers(
            "Authorization",
            "Bearer " + ConfigurationReader.getProperty("token"),
            "Content-Type",
            ContentType.JSON,
            "Accept",
            ContentType.JSON)
            .when()
            .get(api_endpoint)
            .then()
            .contentType(ContentType.JSON)
            .statusCode(200)
            .extract()
            .response();
response.prettyPrint();
}
*/