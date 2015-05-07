package com.thiagoperrotta.model;

import java.io.Serializable;
import java.text.DecimalFormat;

public class Money implements Serializable {

    public enum Currency {

        BRL("R$"),
        USD("$"),
        EUR("£");

        private final String name;

        private Currency(String name) {
            this.name = name;
        }

        @Override
        public String toString() {
            return name;
        }
    };

    Double amount;
    Currency currency;

    public Money(Double amount, Currency currency) {
        this.amount = amount;
        this.currency = currency;
    }

    public Money(Double amount) {
        this(amount, Currency.BRL);
    }
    
    public Money(Integer amount) {
        this((double)amount, Currency.BRL);
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Currency getCurrency() {
        return currency;
    }

    public void setCurrency(Currency currency) {
        this.currency = currency;
    }
    
    public Money getTotalAmount(int quantity) {
        return new Money(quantity * amount, currency);
    }

    @Override
    public String toString() {
        return currency + " " + amount.intValue() + "," + new DecimalFormat("00").format((amount * 100) % 100);
    }
}
