

dependencies {
    testImplementation("org.junit.jupiter:junit-jupiter:5.7.1")
}

tasks.withType<Test>().configureEach {
    useJUnitPlatform()
}


