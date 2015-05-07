package com.thiagoperrotta.model;

import com.thiagoperrotta.model.Money.Currency;
import org.junit.After;
import org.junit.AfterClass;
import static org.junit.Assert.assertEquals;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class MoneyTest {

    private Money money;
    private final double delta = 1e-6;

    public MoneyTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
        money = new Money(10.00, Currency.BRL);
    }

    @After
    public void tearDown() {
    }

    @Test
    public void testGetAmount() {
        assertEquals(10.0, money.getAmount(), delta);
        assertEquals(10.0, new Money(10).getAmount(), delta);
    }

    @Test
    public void testSetAmount() {
        money.setAmount(20.0);
        assertEquals(20.0, money.getAmount(), delta);
    }

    @Test
    public void testGetCurrency() {
        assertEquals(Currency.BRL, money.getCurrency());
    }

    @Test
    public void testSetCurrency() {
        money.setCurrency(Currency.USD);
        assertEquals(Currency.USD, money.getCurrency());
    }
    
    @Test
    public void testGetTotalAmount() {
        assertEquals(20.00, money.getTotalAmount(2).getAmount(), delta);
        assertEquals(3.98, new Money(1.99).getTotalAmount(2).getAmount(), delta);
    }

    @Test
    public void testToString() {
        assertEquals("R$ 10,00", money.toString());
        Money m1 = new Money(15.00, Currency.USD);
        assertEquals("$ 15,00", m1.toString());
        Money m2 = new Money(9599.96);
        assertEquals("R$ 9599,96", m2.toString());
    }

}
