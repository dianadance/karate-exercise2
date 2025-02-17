package com.exercise2.tests;
import com.intuit.karate.junit5.Karate;

class RunnerTest {

    @Karate.Test
    Karate exerciseTests() {
        return Karate.run("classpath:com/exercise2/tests/signup.feature",
                "classpath:com/exercise2/tests/login.feature");
    }
}
